﻿using CSETWebCore.DataLayer.Model;
using CSETWebCore.Interfaces.Helpers;
using CSETWebCore.Model.Cis;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Metadata.Ecma335;
using DocumentFormat.OpenXml.Office2013.Excel;
using CSETWebCore.Model.Assessment;

namespace CSETWebCore.Business.Maturity
{
    /// <summary>
    /// A structured listing of groupings/questions/options
    /// for the CIS maturity model.
    /// </summary>
    public class CisQuestionsBusiness
    {
        private readonly CSETContext _context;
        private readonly IAssessmentUtil _assessmentUtil;
        private readonly int _assessmentId;

        /// <summary>
        /// The internal ID for the CIS model
        /// </summary>
        private readonly int _cisModelId = 8;


        private int? _baselineAssessmentId;
        private List<ANSWER> baselineAllAnswers = new List<ANSWER>();


        private readonly int _maturityModelId;

        public CisQuestions QuestionsModel;


        // query some data collections up front to avoid lots of database access

        private List<MATURITY_QUESTIONS> allQuestions;

        private List<ANSWER> allAnswers;

        private List<MATURITY_GROUPINGS> allGroupings;

        private List<FlatQuestion> allWeights;


        /// <summary>
        /// The consumer can optionally suppress 
        /// grouping descriptions, question text and supplemental info
        /// if they want a smaller response object.
        /// </summary>
        private bool _includeText = true;


        /// <summary>
        /// Returns a populated instance of the maturity grouping
        /// and question structure for a maturity model.
        /// </summary>
        /// <param name="assessmentId"></param>
        public CisQuestionsBusiness(CSETContext context, IAssessmentUtil assessmentUtil, int assessmentId = 0)
        {
            // This class is instantiated to build the CIS navigation tree before 
            // an assessment has been opened.  If a 0 is passed, pretend it's CIS (8)
            if (assessmentId == 0)
            {
                assessmentId = 8;
            }

            this._context = context;
            this._assessmentUtil = assessmentUtil;
            this._assessmentId = assessmentId;
            allWeights = new List<FlatQuestion>();


            var amm = _context.AVAILABLE_MATURITY_MODELS.Where(x => x.Assessment_Id == assessmentId).FirstOrDefault();
            if (amm != null)
            {
                this._maturityModelId = amm.model_id;
            }
            else
            {
                //throw new Exception("CisQuestionsBusiness cannot be instantiated for an assessment without a maturity model.");
            }

            // Get the baseline assessment if one is selected
            var info = _context.INFORMATION.Where(x => x.Id == assessmentId).FirstOrDefault();
            if (info != null)
            {
                _baselineAssessmentId = info.Baseline_Assessment_Id;
            }
        }


        /// <summary>
        /// Returns the grouping/question/option structure for a section.
        /// </summary>
        /// <param name="sectionId"></param>
        /// <returns></returns>
        public CisQuestions GetSection(int sectionId)
        {
            int? sectionId1 = null;
            if (sectionId != 0)
            {
                sectionId1 = sectionId;
            }



            LoadStructure(sectionId1);

            // include score
            if (sectionId1 != null)
            {
                this.QuestionsModel.GroupingScore = CalculateGroupingScore((int)sectionId1);
            }

            return this.QuestionsModel;
        }


        /// <summary>
        /// Gathers questions and answers and builds them into a basic hierarchy.
        /// </summary>
        private void LoadStructure(int? sectionId)
        {
            QuestionsModel = new CisQuestions
            {
                AssessmentId = this._assessmentId
            };

            allQuestions = _context.MATURITY_QUESTIONS
                .Include(x => x.Maturity_LevelNavigation)
                .Include(x => x.MATURITY_REFERENCE_TEXT)
                .Where(q =>
                _maturityModelId == q.Maturity_Model_Id).ToList();

            allAnswers = _context.ANSWER
                .Where(a => a.Question_Type == Constants.Constants.QuestionTypeMaturity
                    && a.Assessment_Id == this._assessmentId)
                .ToList();

            // include baseline answers
            if (this._baselineAssessmentId != null)
            {
                baselineAllAnswers = _context.ANSWER
                .Where(a => a.Question_Type == Constants.Constants.QuestionTypeMaturity
                    && a.Assessment_Id == this._baselineAssessmentId)
                .ToList();
            }


            // Get all subgroupings for this maturity model
            allGroupings = _context.MATURITY_GROUPINGS
                .Include(x => x.Type)
                .Where(x => x.Maturity_Model_Id == _maturityModelId).ToList();

            GetSubgroups(QuestionsModel, null, sectionId);
        }


        /// <summary>
        /// Recursive method for traversing the structure.
        /// If the filterId is specified, the subgroups are reduced to that one.
        /// </summary>
        private void GetSubgroups(object oParent, int? parentId, int? filterId = null)
        {
            var mySubgroups = allGroupings.Where(x => x.Parent_Id == parentId).OrderBy(x => x.Sequence).ToList();

            if (filterId != null)
            {
                mySubgroups = allGroupings.Where(x => x.Grouping_Id == filterId).ToList();
            }

            if (mySubgroups.Count == 0)
            {
                return;
            }

            foreach (var sg in mySubgroups)
            {
                var nodeName = System.Text.RegularExpressions
                    .Regex.Replace(sg.Type.Grouping_Type_Name, " ", "_");

                var grouping = new Grouping()
                {
                    GroupType = nodeName,
                    Abbreviation = sg.Abbreviation,
                    GroupingId = sg.Grouping_Id,
                    Title = sg.Title,
                    Description = sg.Description
                };

                if (_includeText)
                {
                    grouping.Description = sg.Description;
                }

                if (oParent is CisQuestions)
                {
                    ((CisQuestions)oParent).Groupings.Add(grouping);
                }

                if (oParent is Grouping)
                {
                    ((Grouping)oParent).Groupings.Add(grouping);
                }



                // are there any questions that belong to this grouping?
                var myQuestions = allQuestions.Where(x => x.Grouping_Id == sg.Grouping_Id
                    && x.Parent_Question_Id == null && x.Parent_Option_Id == null).ToList();

                foreach (var myQ in myQuestions.OrderBy(s => s.Sequence))
                {
                    var answer = allAnswers.FirstOrDefault(x => x.Question_Or_Requirement_Id == myQ.Mat_Question_Id);

                    var question = new Model.Cis.Question()
                    {
                        QuestionId = myQ.Mat_Question_Id,
                        Sequence = myQ.Sequence,
                        DisplayNumber = myQ.Question_Title,
                        ParentQuestionId = myQ.Parent_Question_Id,
                        QuestionType = myQ.Mat_Question_Type,
                        AnswerText = answer?.Answer_Text,
                        AnswerMemo = answer?.Free_Response_Answer,
                        Options = GetOptions(myQ.Mat_Question_Id),
                        Followups = GetFollowupQuestions(myQ.Mat_Question_Id),
                        Comment = answer?.Comment,
                        MarkForReview = answer?.Mark_For_Review ?? false
                    };

                    if (_includeText)
                    {
                        question.QuestionText = myQ.Question_Text.Replace("\r\n", "<br/>").Replace("\n", "<br/>").Replace("\r", "<br/> ");
                        question.ReferenceText = myQ.MATURITY_REFERENCE_TEXT.FirstOrDefault()?.Reference_Text;
                    }


                    // Include the corresponding baseline selection if it exists
                    var baselineAnswer = baselineAllAnswers
                        .Where(x => x.Question_Or_Requirement_Id == myQ.Mat_Question_Id)
                        .FirstOrDefault();
                    if (baselineAnswer != null)
                    {
                        question.BaselineAnswerText = baselineAnswer.Answer_Text;
                        question.BaselineAnswerMemo = baselineAnswer.Free_Response_Answer;
                    }


                    grouping.Questions.Add(question);
                }

                // Recurse down to build subgroupings
                GetSubgroups(grouping, sg.Grouping_Id);
            }
        }


        /// <summary>
        /// Get questions that are followups to QUESTIONS
        /// </summary>
        /// <param name="allQuestions"></param>
        /// <param name="parentId"></param>
        /// <returns></returns>
        private List<Model.Cis.Question> GetFollowupQuestions(int parentId)
        {
            var qList = new List<Model.Cis.Question>();

            var myQuestions = allQuestions.Where(x => x.Parent_Question_Id == parentId && x.Parent_Option_Id == null).ToList();

            foreach (var myQ in myQuestions.OrderBy(s => s.Sequence))
            {
                var answer = allAnswers.FirstOrDefault(x => x.Question_Or_Requirement_Id == myQ.Mat_Question_Id);

                var question = new Model.Cis.Question()
                {
                    QuestionId = myQ.Mat_Question_Id,
                    Sequence = myQ.Sequence,
                    DisplayNumber = myQ.Question_Title,
                    ParentQuestionId = myQ.Parent_Question_Id,
                    QuestionType = myQ.Mat_Question_Type,
                    AnswerText = answer?.Answer_Text,
                    AnswerMemo = answer?.Free_Response_Answer,
                    Options = GetOptions(myQ.Mat_Question_Id),
                    Followups = GetFollowupQuestions(myQ.Mat_Question_Id),
                    Comment = answer?.Comment,
                    MarkForReview = answer?.Mark_For_Review ?? false
                };

                if (_includeText)
                {
                    question.QuestionText = myQ.Question_Text.Replace("\r\n", "<br/>").Replace("\n", "<br/>").Replace("\r", "<br/> ");
                    question.ReferenceText = myQ.MATURITY_REFERENCE_TEXT.FirstOrDefault()?.Reference_Text;
                }


                // Include the corresponding baseline selection if it exists
                var baselineAnswer = baselineAllAnswers
                    .Where(x => x.Question_Or_Requirement_Id == myQ.Mat_Question_Id)
                    .FirstOrDefault();
                if (baselineAnswer != null)
                {
                    question.BaselineAnswerText = baselineAnswer.Answer_Text;
                    question.BaselineAnswerMemo = baselineAnswer.Free_Response_Answer;
                }


                qList.Add(question);

                var followups = GetFollowupQuestions(myQ.Mat_Question_Id);
                question.Followups.AddRange(followups);
            }

            return qList;
        }


        /// <summary>
        /// Build options for a question.
        /// </summary>
        /// <param name="questionId"></param>
        /// <returns></returns>
        private List<Option> GetOptions(int questionId)
        {
            var list = new List<Option>();


            var opts = _context.MATURITY_ANSWER_OPTIONS.Where(x => x.Mat_Question_Id == questionId)
                .OrderBy(x => x.Answer_Sequence)
                .ToList();

            foreach (var o in opts)
            {
                var option = new Option()
                {
                    OptionText = o.Option_Text,
                    OptionId = o.Mat_Option_Id,
                    OptionType = o.Mat_Option_Type,
                    Sequence = o.Answer_Sequence,
                    HasAnswerText = o.Has_Answer_Text,
                    Weight = o.Weight
                };

                var ans = allAnswers.Where(x => x.Question_Or_Requirement_Id == o.Mat_Question_Id
                    && x.Mat_Option_Id == option.OptionId).FirstOrDefault();

                option.AnswerId = ans?.Answer_Id;
                option.Selected = ans?.Answer_Text == "S";
                option.AnswerText = ans?.Free_Response_Answer;


                // Include the corresponding baseline selection if it exists
                var baselineAnswer = baselineAllAnswers
                    .Where(x => x.Question_Or_Requirement_Id == o.Mat_Question_Id && x.Mat_Option_Id == o.Mat_Option_Id)
                    .FirstOrDefault();
                if (baselineAnswer != null)
                {
                    option.BaselineSelected = baselineAnswer.Answer_Text == "S";
                    option.BaselineAnswerText = baselineAnswer.Free_Response_Answer;
                }



                // Include questions that are a followup to the OPTION
                var myQuestions = allQuestions.Where(x => x.Parent_Option_Id == o.Mat_Option_Id).ToList();

                foreach (var myQ in myQuestions.OrderBy(s => s.Sequence))
                {
                    var answer = allAnswers.FirstOrDefault(x => x.Question_Or_Requirement_Id == myQ.Mat_Question_Id);

                    var question = new Model.Cis.Question()
                    {
                        QuestionId = myQ.Mat_Question_Id,
                        Sequence = myQ.Sequence,
                        DisplayNumber = myQ.Question_Title,
                        ParentQuestionId = myQ.Parent_Question_Id,
                        ParentOptionId = myQ.Parent_Option_Id,
                        QuestionType = myQ.Mat_Question_Type,
                        AnswerText = answer?.Answer_Text,
                        AnswerMemo = answer?.Free_Response_Answer,
                        Options = GetOptions(myQ.Mat_Question_Id),
                        Followups = GetFollowupQuestions(myQ.Mat_Question_Id),
                        Comment = answer?.Comment,
                        MarkForReview = answer?.Mark_For_Review ?? false
                    };

                    if (_includeText)
                    {
                        question.QuestionText = myQ.Question_Text.Replace("\r\n", "<br/>").Replace("\n", "<br/>").Replace("\r", "<br/> ");
                        question.ReferenceText = myQ.MATURITY_REFERENCE_TEXT.FirstOrDefault()?.Reference_Text;
                    }


                    // Include the corresponding baseline selection if it exists
                    baselineAnswer = baselineAllAnswers
                        .Where(x => x.Question_Or_Requirement_Id == myQ.Mat_Question_Id)
                        .FirstOrDefault();
                    if (baselineAnswer != null)
                    {
                        question.BaselineAnswerText = baselineAnswer.Answer_Text;
                        question.BaselineAnswerMemo = baselineAnswer.Free_Response_Answer;
                    }


                    option.Followups.Add(question);
                }

                list.Add(option);
            }

            return list;
        }


        /// <summary>
        /// CIS answers are different than normal maturity answers
        /// because Options are involved.  
        /// </summary>
        public void StoreAnswer(Model.Question.Answer answer)
        {
            var dbOption = _context.MATURITY_ANSWER_OPTIONS.FirstOrDefault(x => x.Mat_Option_Id == answer.OptionId);
            if (dbOption == null)
            {
                return;
            }

            // is this a radio or checkbox option
            if (dbOption.Mat_Option_Type == "radio")
            {
                StoreAnswerRadio(answer);
            }

            if (dbOption.Mat_Option_Type == "checkbox")
            {
                StoreAnswerCheckbox(answer);
            }

            if (dbOption.Mat_Option_Type == "text-first")
            {
                StoreAnswerCheckbox(answer);
            }
        }


        /// <summary>
        /// Stores a "Radio" option answer.  Because radio buttons are
        /// single select, only one ANSWER record is stored for the question with the
        /// selected option's ID.
        /// </summary>
        /// <param name="answer"></param>
        /// <returns></returns>
        /// <exception cref="Exception"></exception>
        private void StoreAnswerRadio(Model.Question.Answer answer)
        {
            // If this is an unselected radio, do nothing.
            // This method only acts on 
            if (answer.AnswerText == "")
            {
                return;
            }

            // Find the Maturity Question
            var dbOption = _context.MATURITY_ANSWER_OPTIONS.Where(o => o.Mat_Option_Id == answer.OptionId).FirstOrDefault();
            var dbQuestion = _context.MATURITY_QUESTIONS.Where(q => q.Mat_Question_Id == dbOption.Mat_Question_Id).FirstOrDefault();

            if (dbQuestion == null)
            {
                throw new Exception("Unknown question ID: " + answer.QuestionId);
            }


            ANSWER dbAnswer = _context.ANSWER.Where(x => x.Assessment_Id == _assessmentId
                && x.Question_Or_Requirement_Id == dbQuestion.Mat_Question_Id
                && x.Question_Type == answer.QuestionType).FirstOrDefault();


            if (dbAnswer == null)
            {
                dbAnswer = new ANSWER();
            }


            dbAnswer.Assessment_Id = _assessmentId;
            dbAnswer.Question_Or_Requirement_Id = dbQuestion.Mat_Question_Id;
            dbAnswer.Question_Type = answer.QuestionType;
            dbAnswer.Question_Number = 0;
            dbAnswer.Mat_Option_Id = answer.OptionId;   // this is the selected option
            dbAnswer.Answer_Text = answer.AnswerText;
            dbAnswer.Alternate_Justification = answer.AltAnswerText;
            dbAnswer.Free_Response_Answer = answer.FreeResponseAnswer;
            dbAnswer.Comment = answer.Comment;
            dbAnswer.FeedBack = answer.Feedback;
            dbAnswer.Mark_For_Review = answer.MarkForReview;
            dbAnswer.Reviewed = answer.Reviewed;
            dbAnswer.Component_Guid = answer.ComponentGuid;

            _context.ANSWER.Update(dbAnswer);
            _context.SaveChanges();

            _assessmentUtil.TouchAssessment(_assessmentId);
        }


        /// <summary>
        /// Stores a "Checkbox" option answer.  Because multiple checkboxes
        /// can be selected, one ANSWER record is stored for each selected
        /// option.  When a checkbox is unselected, the existing ANSWER
        /// record is updated, not deleted.
        /// </summary>
        /// <param name="answer"></param>
        /// <returns></returns>
        /// <exception cref="Exception"></exception>
        private void StoreAnswerCheckbox(Model.Question.Answer answer)
        {
            // Find the Maturity Question
            var dbOption = _context.MATURITY_ANSWER_OPTIONS.Where(o => o.Mat_Option_Id == answer.OptionId).FirstOrDefault();
            var dbQuestion = _context.MATURITY_QUESTIONS.Where(q => q.Mat_Question_Id == dbOption.Mat_Question_Id).FirstOrDefault();

            if (dbQuestion == null)
            {
                throw new Exception("Unknown question ID: " + answer.QuestionId);
            }


            ANSWER dbAnswer = _context.ANSWER.Where(x => x.Assessment_Id == _assessmentId
                && x.Question_Or_Requirement_Id == dbQuestion.Mat_Question_Id
                && x.Mat_Option_Id == answer.OptionId
                && x.Question_Type == answer.QuestionType).FirstOrDefault();


            if (dbAnswer == null)
            {
                dbAnswer = new ANSWER();
            }


            dbAnswer.Assessment_Id = _assessmentId;
            dbAnswer.Question_Or_Requirement_Id = dbQuestion.Mat_Question_Id;
            dbAnswer.Question_Type = answer.QuestionType;
            dbAnswer.Question_Number = 0;
            dbAnswer.Mat_Option_Id = answer.OptionId;
            dbAnswer.Answer_Text = answer.AnswerText;  // either "S" or "" for a checkbox option answer
            dbAnswer.Alternate_Justification = answer.AltAnswerText;
            dbAnswer.Free_Response_Answer = answer.FreeResponseAnswer;
            dbAnswer.Comment = answer.Comment;
            dbAnswer.FeedBack = answer.Feedback;
            dbAnswer.Mark_For_Review = answer.MarkForReview;
            dbAnswer.Reviewed = answer.Reviewed;
            dbAnswer.Component_Guid = answer.ComponentGuid;

            _context.ANSWER.Update(dbAnswer);
            _context.SaveChanges();

            _assessmentUtil.TouchAssessment(_assessmentId);
        }


        /// <summary>
        /// Builds a list of all navigation nodes subordinate to the CIS parent node.
        /// </summary>
        /// <returns></returns>
        public List<NavNode> GetNavStructure()
        {
            var cisGroupings = _context.MATURITY_GROUPINGS.Where(x => x.Maturity_Model_Id == _cisModelId).ToList();

            var list = new List<NavNode>();

            var topNode = new NavNode()
            {
                Id = null,
                Title = "CIS Questions",
                Level = 1
            };

            GetSubnodes(topNode, ref list, ref cisGroupings);

            return list;
        }


        /// <summary>
        /// 
        /// </summary>
        private int GetSubnodes(NavNode parent, ref List<NavNode> list, ref List<MATURITY_GROUPINGS> cisGroupings)
        {
            var kids = cisGroupings.Where(x => x.Parent_Id == parent.Id).ToList();
            foreach (var kid in kids)
            {
                var prefix = "";
                if (!String.IsNullOrEmpty(kid.Title_Prefix))
                {
                    prefix = $"{kid.Title_Prefix}.";
                }

                var sub = new NavNode()
                {
                    Id = kid.Grouping_Id,
                    Title = $"{prefix} {kid.Title}".Trim(),
                    Level = parent.Level + 1
                };

                list.Add(sub);
                var childCount = GetSubnodes(sub, ref list, ref cisGroupings);

                if (childCount > 0)
                {
                    sub.HasChildren = true;
                }
            }

            return kids.Count;
        }


        /// <summary>
        /// Placeholder for the eventual true scoring calculator.
        /// </summary>
        /// <returns></returns>
        public Score CalculateGroupingScore(int sectionId)
        {
            if (this.QuestionsModel == null)
            {
                LoadStructure(sectionId);
            }

            if (QuestionsModel.Groupings.FirstOrDefault().Questions != null)
            {
                FlattenQuestions(QuestionsModel.Groupings.FirstOrDefault()?.Questions);

                if (allWeights.Any())
                {
                    var grouped = allWeights.GroupBy(q => q.QuestionText).Select(r => new GroupedQuestions
                    {
                        QuestionText = r.Key,
                        OptionQuestions = r.ToList()
                    });
                    var sumGroupWeights = from g in grouped
                                          select new RollupOptions
                                          {
                                              Type = g.OptionQuestions.FirstOrDefault().Type,
                                              Weight = g.OptionQuestions.FirstOrDefault().Type != "radio"
                                                  ? g.OptionQuestions.Sum(x => x.Weight) : g.OptionQuestions.MaxBy(x => x.Weight)?.Weight
                                          };
                    var sumAllWeights = (decimal)sumGroupWeights.Sum(x => x.Weight);
                    var totalGroupWeights = from g in grouped
                                            select new RollupOptions()
                                            {
                                                Type = g.OptionQuestions.FirstOrDefault().Type,
                                                Weight = g.OptionQuestions.FirstOrDefault().Type != "radio"
                                                    ? g.OptionQuestions.Where(s => s.Selected).Sum(x => x.Weight)
                                                    : g.OptionQuestions.FirstOrDefault(s => s.Selected)?.Weight
                                            };
                    var sumTotalWeights = (decimal)totalGroupWeights.Sum(x => x?.Weight);
                    decimal total = sumAllWeights != 0 ? sumTotalWeights / sumAllWeights : 0;
                    return new Score
                    {
                        GroupingScore = (int)Math.Round(total * 100, MidpointRounding.AwayFromZero),
                        Low = 0,
                        Median = 0,
                        High = 0
                    };
                }
            }

            return new Score();
        }

        private void FlattenQuestions(List<Model.Cis.Question> questions)
        {
            foreach (var q in questions)
            {
                allWeights.AddRange(q.Options.Select(x => new FlatQuestion
                {
                    QuestionText = q.QuestionText,
                    Weight = x.Weight,
                    Selected = x.Selected,
                    Type = x.OptionType

                }).ToList());
                foreach (var o in q.Options)
                {
                    if (o.Followups.Any())
                    {
                        FlattenQuestions(o.Followups);
                    }
                }

                if (q.Followups.Any())
                {
                    FlattenQuestions(q.Followups);
                }
            }
        }


        /// <summary>
        /// Returns a list of assessments that use the CIS model.
        /// The list is limited to assessments that the current user has access to.
        /// </summary>
        /// <returns></returns>
        public CisAssessmentsResponse GetMyCisAssessments(int assessmentId, int? userId)
        {
            var resp = new CisAssessmentsResponse();

            resp.BaselineAssessmentId = _baselineAssessmentId;

            // we can expect to find this record for the current user and assessment.
            List<int> ac = _context.ASSESSMENT_CONTACTS.Where(x => x.UserId == userId)
                .Select(x => x.Assessment_Id).ToList();


            var query = from amm in _context.AVAILABLE_MATURITY_MODELS
                        join a in _context.ASSESSMENTS on amm.Assessment_Id equals a.Assessment_Id
                        join i in _context.INFORMATION on amm.Assessment_Id equals i.Id
                        where amm.model_id == _cisModelId
                            && amm.Selected == true
                            && ac.Contains(a.Assessment_Id)
                        select new { a, i };

            foreach (var l in query.ToList())
            {
                resp.MyCisAssessments.Add(new AssessmentDetail()
                {
                    Id = l.a.Assessment_Id,
                    AssessmentDate = l.a.Assessment_Date,
                    AssessmentName = l.i.Assessment_Name,
                    AssessmentDescription = l.i.Assessment_Description,
                    CreatedDate = l.a.AssessmentCreatedDate,
                    LastModifiedDate = l.a.LastModifiedDate ?? DateTime.MinValue
                });
            }

            return resp;
        }


        /// <summary>
        /// Persists the baseline assessment ID.  If no baseline
        /// assessment is selected, it is set to null.
        /// </summary>
        public void SaveBaseline(int assessmentId, int? baselineId)
        {
            var info = _context.INFORMATION.Where(x => x.Id == assessmentId).FirstOrDefault();
            if (info == null)
            {
                return;
            }

            info.Baseline_Assessment_Id = baselineId;
            _context.SaveChanges();
        }


        /// <summary>
        /// Deletes all answers from the destination assessment
        /// and clones all answers from the source assessment
        /// into the destination.
        /// </summary>
        /// <param name="destAssessId"></param>
        /// <param name="sourceAssessId"></param>
        public void ImportCisAnswers(int destAssessId, int sourceAssessId)
        {
            var oldAnswers = _context.ANSWER.Where(x => x.Assessment_Id == destAssessId).ToList();
            _context.ANSWER.RemoveRange(oldAnswers);
            _context.SaveChanges();

            var importedAnswers = _context.ANSWER.Where(x => x.Assessment_Id == sourceAssessId).ToList();
            foreach (var answer in importedAnswers)
            {
                var dbAnswer = new ANSWER
                {
                    Assessment_Id = destAssessId,
                    Question_Or_Requirement_Id = answer.Question_Or_Requirement_Id,
                    Mat_Option_Id = answer.Mat_Option_Id,
                    Question_Type = answer.Question_Type,
                    Question_Number = 0,
                    Answer_Text = answer.Answer_Text,
                    Free_Response_Answer = answer.Free_Response_Answer,
                    Alternate_Justification = answer.Alternate_Justification,
                    Comment = answer.Comment,
                    FeedBack = answer.FeedBack,
                    Mark_For_Review = answer.Mark_For_Review,
                    Reviewed = answer.Reviewed,
                    Component_Guid = answer.Component_Guid
                };

                dbAnswer.Free_Response_Answer = answer.Free_Response_Answer;

                _context.ANSWER.Add(dbAnswer);
            }

            _context.SaveChanges();
        }
    }
}
