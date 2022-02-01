/*
Run this script on:

(localdb)\MSSQLLocalDB.CSETTest    -  This database will be modified

to synchronize it with:

(localdb)\MSSQLLocalDB.CSETWeb11010

You are recommended to back up your database before running this script

Script created by SQL Data Compare version 14.5.22.19589 from Red Gate Software Ltd at 1/31/2022 4:58:33 PM

*/
		
SET NUMERIC_ROUNDABORT OFF
GO
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
GO
SET DATEFORMAT YMD
GO
SET XACT_ABORT ON
GO
SET TRANSACTION ISOLATION LEVEL Serializable
GO
BEGIN TRANSACTION

PRINT(N'Drop constraints from [dbo].[NEW_QUESTION_LEVELS]')
ALTER TABLE [dbo].[NEW_QUESTION_LEVELS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_LEVELS_NEW_QUESTION_SETS]
ALTER TABLE [dbo].[NEW_QUESTION_LEVELS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_LEVELS_UNIVERSAL_SAL_LEVEL]

PRINT(N'Drop constraints from [dbo].[REQUIREMENT_QUESTIONS_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_QUESTION]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_SETS_SETS]

PRINT(N'Drop constraints from [dbo].[REQUIREMENT_QUESTIONS]')
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_NEW_QUESTION1]
ALTER TABLE [dbo].[REQUIREMENT_QUESTIONS] NOCHECK CONSTRAINT [FK_REQUIREMENT_QUESTIONS_NEW_REQUIREMENT]

PRINT(N'Drop constraints from [dbo].[NEW_QUESTION_SETS]')
ALTER TABLE [dbo].[NEW_QUESTION_SETS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_SETS_NEW_QUESTION]
ALTER TABLE [dbo].[NEW_QUESTION_SETS] NOCHECK CONSTRAINT [FK_NEW_QUESTION_SETS_SETS]

PRINT(N'Drop constraints from [dbo].[REQUIREMENT_SOURCE_FILES]')
ALTER TABLE [dbo].[REQUIREMENT_SOURCE_FILES] NOCHECK CONSTRAINT [FK_REQUIREMENT_SOURCE_FILES_GEN_FILE]
ALTER TABLE [dbo].[REQUIREMENT_SOURCE_FILES] NOCHECK CONSTRAINT [FK_REQUIREMENT_SOURCE_FILES_NEW_REQUIREMENT]

PRINT(N'Drop constraints from [dbo].[REQUIREMENT_SETS]')
ALTER TABLE [dbo].[REQUIREMENT_SETS] NOCHECK CONSTRAINT [FK_QUESTION_SETS_SETS]
ALTER TABLE [dbo].[REQUIREMENT_SETS] NOCHECK CONSTRAINT [FK_REQUIREMENT_SETS_NEW_REQUIREMENT]

PRINT(N'Drop constraints from [dbo].[REQUIREMENT_LEVELS]')
ALTER TABLE [dbo].[REQUIREMENT_LEVELS] NOCHECK CONSTRAINT [FK_REQUIREMENT_LEVELS_NEW_REQUIREMENT]
ALTER TABLE [dbo].[REQUIREMENT_LEVELS] NOCHECK CONSTRAINT [FK_REQUIREMENT_LEVELS_REQUIREMENT_LEVEL_TYPE]
ALTER TABLE [dbo].[REQUIREMENT_LEVELS] NOCHECK CONSTRAINT [FK_REQUIREMENT_LEVELS_STANDARD_SPECIFIC_LEVEL]

PRINT(N'Drop constraints from [dbo].[NEW_QUESTION]')
ALTER TABLE [dbo].[NEW_QUESTION] NOCHECK CONSTRAINT [FK_NEW_QUESTION_SETS]
ALTER TABLE [dbo].[NEW_QUESTION] NOCHECK CONSTRAINT [FK_NEW_QUESTION_UNIVERSAL_SAL_LEVEL]
ALTER TABLE [dbo].[NEW_QUESTION] NOCHECK CONSTRAINT [FK_NEW_QUESTION_UNIVERSAL_SUB_CATEGORY_HEADINGS]

PRINT(N'Drop constraint FK_Component_Questions_NEW_QUESTION from [dbo].[COMPONENT_QUESTIONS]')
ALTER TABLE [dbo].[COMPONENT_QUESTIONS] NOCHECK CONSTRAINT [FK_Component_Questions_NEW_QUESTION]

PRINT(N'Drop constraint FK_FINANCIAL_QUESTIONS_NEW_QUESTION from [dbo].[FINANCIAL_QUESTIONS]')
ALTER TABLE [dbo].[FINANCIAL_QUESTIONS] NOCHECK CONSTRAINT [FK_FINANCIAL_QUESTIONS_NEW_QUESTION]

PRINT(N'Drop constraint FK_NERC_RISK_RANKING_NEW_QUESTION from [dbo].[NERC_RISK_RANKING]')
ALTER TABLE [dbo].[NERC_RISK_RANKING] NOCHECK CONSTRAINT [FK_NERC_RISK_RANKING_NEW_QUESTION]

PRINT(N'Drop constraints from [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS]')
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] NOCHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_QUESTION_GROUP_HEADING]
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] NOCHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_SETS]
ALTER TABLE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] NOCHECK CONSTRAINT [FK_UNIVERSAL_SUB_CATEGORY_HEADINGS_UNIVERSAL_SUB_CATEGORIES]

PRINT(N'Drop constraint FK_SUB_CATEGORY_ANSWERS_UNIVERSAL_SUB_CATEGORY_HEADINGS from [dbo].[SUB_CATEGORY_ANSWERS]')
ALTER TABLE [dbo].[SUB_CATEGORY_ANSWERS] NOCHECK CONSTRAINT [FK_SUB_CATEGORY_ANSWERS_UNIVERSAL_SUB_CATEGORY_HEADINGS]

PRINT(N'Drop constraints from [dbo].[NEW_REQUIREMENT]')
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_NCSF_Category]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_QUESTION_GROUP_HEADING]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_SETS]
ALTER TABLE [dbo].[NEW_REQUIREMENT] NOCHECK CONSTRAINT [FK_NEW_REQUIREMENT_STANDARD_CATEGORY]

PRINT(N'Drop constraint FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT from [dbo].[FINANCIAL_REQUIREMENTS]')
ALTER TABLE [dbo].[FINANCIAL_REQUIREMENTS] NOCHECK CONSTRAINT [FK_FINANCIAL_REQUIREMENTS_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_NERC_RISK_RANKING_NEW_REQUIREMENT from [dbo].[NERC_RISK_RANKING]')
ALTER TABLE [dbo].[NERC_RISK_RANKING] NOCHECK CONSTRAINT [FK_NERC_RISK_RANKING_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_Parameter_Requirements_NEW_REQUIREMENT from [dbo].[PARAMETER_REQUIREMENTS]')
ALTER TABLE [dbo].[PARAMETER_REQUIREMENTS] NOCHECK CONSTRAINT [FK_Parameter_Requirements_NEW_REQUIREMENT]

PRINT(N'Drop constraint FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT from [dbo].[REQUIREMENT_REFERENCES]')
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] NOCHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_NEW_REQUIREMENT]

PRINT(N'Drop constraints from [dbo].[MATURITY_QUESTIONS]')
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK__MATURITY___Matur__5B638405]
ALTER TABLE [dbo].[MATURITY_QUESTIONS] NOCHECK CONSTRAINT [FK_MATURITY_QUESTIONS_MATURITY_MODELS]

PRINT(N'Drop constraint FK_MATURITY_REFERENCE_TEXT_MATURITY_QUESTIONS from [dbo].[MATURITY_REFERENCE_TEXT]')
ALTER TABLE [dbo].[MATURITY_REFERENCE_TEXT] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCE_TEXT_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK_MATURITY_REFERENCES_MATURITY_QUESTIONS from [dbo].[MATURITY_REFERENCES]')
ALTER TABLE [dbo].[MATURITY_REFERENCES] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCES_MATURITY_QUESTIONS]

PRINT(N'Drop constraint FK_MATURITY_SOURCE_FILES_MATURITY_QUESTIONS from [dbo].[MATURITY_SOURCE_FILES]')
ALTER TABLE [dbo].[MATURITY_SOURCE_FILES] NOCHECK CONSTRAINT [FK_MATURITY_SOURCE_FILES_MATURITY_QUESTIONS]

PRINT(N'Drop constraints from [dbo].[GEN_FILE]')
ALTER TABLE [dbo].[GEN_FILE] NOCHECK CONSTRAINT [FK_GEN_FILE_FILE_REF_KEYS]
ALTER TABLE [dbo].[GEN_FILE] NOCHECK CONSTRAINT [FK_GEN_FILE_FILE_TYPE]

PRINT(N'Drop constraint FILE_KEYWORDS_GEN_FILE_FK from [dbo].[FILE_KEYWORDS]')
ALTER TABLE [dbo].[FILE_KEYWORDS] NOCHECK CONSTRAINT [FILE_KEYWORDS_GEN_FILE_FK]

PRINT(N'Drop constraint FK_GEN_FILE_LIB_PATH_CORL_GEN_FILE from [dbo].[GEN_FILE_LIB_PATH_CORL]')
ALTER TABLE [dbo].[GEN_FILE_LIB_PATH_CORL] NOCHECK CONSTRAINT [FK_GEN_FILE_LIB_PATH_CORL_GEN_FILE]

PRINT(N'Drop constraint FK_MATURITY_REFERENCES_GEN_FILE from [dbo].[MATURITY_REFERENCES]')
ALTER TABLE [dbo].[MATURITY_REFERENCES] NOCHECK CONSTRAINT [FK_MATURITY_REFERENCES_GEN_FILE]

PRINT(N'Drop constraint FK_MATURITY_SOURCE_FILES_GEN_FILE from [dbo].[MATURITY_SOURCE_FILES]')
ALTER TABLE [dbo].[MATURITY_SOURCE_FILES] NOCHECK CONSTRAINT [FK_MATURITY_SOURCE_FILES_GEN_FILE]

PRINT(N'Drop constraint FK_REQUIREMENT_REFERENCES_GEN_FILE from [dbo].[REQUIREMENT_REFERENCES]')
ALTER TABLE [dbo].[REQUIREMENT_REFERENCES] NOCHECK CONSTRAINT [FK_REQUIREMENT_REFERENCES_GEN_FILE]

PRINT(N'Drop constraint FK_SET_FILES_GEN_FILE from [dbo].[SET_FILES]')
ALTER TABLE [dbo].[SET_FILES] NOCHECK CONSTRAINT [FK_SET_FILES_GEN_FILE]

PRINT(N'Delete rows from [dbo].[NEW_QUESTION_LEVELS]')
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50024
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50037
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50051
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50092
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50093
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50105
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50125
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50126
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50127
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50128
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50129
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50130
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50131
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50132
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50133
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50134
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50135
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50136
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50137
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50138
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50193
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50244
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50273
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50274
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50279
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50280
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50281
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50290
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50292
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50316
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50337
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50367
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50368
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50370
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50372
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50381
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50427
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50428
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50497
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50498
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50499
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50505
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50531
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50553
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50563
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50577
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50654
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50687
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50688
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50721
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50724
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50749
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50750
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50751
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50752
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50797
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50836
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50889
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50899
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50903
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50922
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 50986
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51007
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51008
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51009
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51010
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51011
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51012
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51013
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51018
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51020
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51022
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51023
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51030
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51031
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51032
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51033
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51034
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51036
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51037
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51046
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51047
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51048
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51049
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51050
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51055
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51056
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51060
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51063
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51326
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51327
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51333
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51343
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51344
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51345
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51346
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51355
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51384
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51401
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51409
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51430
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51435
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51436
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51437
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51438
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51439
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51440
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51441
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51513
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51544
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51554
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51561
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51570
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51571
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51572
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51573
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51574
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51578
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51579
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51580
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51581
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51583
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51585
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51586
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51595
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51596
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51597
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51598
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51599
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51600
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51611
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51614
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51616
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51817
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51818
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51820
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51821
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51822
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51823
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51824
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51825
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51826
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51827
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51828
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51829
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51830
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51831
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51836
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51837
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51838
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51839
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51840
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51841
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51842
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51843
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51846
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51847
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51848
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51849
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51851
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51852
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51853
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51854
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51855
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51856
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51857
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51858
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51859
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51860
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51861
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51862
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51863
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51870
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51871
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51873
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51874
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51875
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51876
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51877
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51878
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51879
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51880
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51881
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51882
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51883
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51884
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51885
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51886
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51887
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51888
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51889
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51890
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51891
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51892
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51893
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51894
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51895
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51896
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51897
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51898
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51899
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51900
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51901
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51902
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51903
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51904
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51905
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51906
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51907
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51908
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51909
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51910
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51911
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51912
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51913
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51915
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51916
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51917
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51918
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'H' AND [New_Question_Set_Id] = 51919
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50040
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50041
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50042
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50051
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50092
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50093
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50105
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50125
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50126
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50127
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50128
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50129
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50130
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50131
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50132
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50133
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50134
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50135
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50136
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50137
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50138
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50158
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50193
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50217
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50273
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50274
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50277
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50279
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50280
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50281
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50290
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50292
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50316
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50367
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50368
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50370
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50372
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50381
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50400
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50427
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50428
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50491
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50497
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50498
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50499
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50531
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50577
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50654
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50687
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50688
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50724
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50747
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50749
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50750
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50751
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50752
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50797
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50836
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50889
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50899
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50904
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50922
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 50986
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51007
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51008
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51009
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51010
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51011
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51012
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51013
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51018
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51020
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51022
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51023
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51030
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51031
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51032
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51033
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51034
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51036
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51037
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51046
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51047
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51048
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51049
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51050
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51055
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51056
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51060
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51063
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51326
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51327
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51333
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51343
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51344
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51345
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51346
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51355
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51358
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51384
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51401
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51409
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51430
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51435
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51436
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51437
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51438
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51439
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51440
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51441
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51484
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51513
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51544
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51554
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51561
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51570
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51571
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51572
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51573
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51574
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51578
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51579
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51580
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51581
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51583
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51585
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51586
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51595
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51596
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51597
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51598
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51599
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51600
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51611
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51614
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51616
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51817
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51818
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51820
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51821
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51822
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51823
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51824
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51825
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51826
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51827
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51828
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51829
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51830
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51831
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51836
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51837
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51838
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51839
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51840
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51841
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51842
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51843
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51846
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51847
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51848
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51849
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51851
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51852
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51853
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51854
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51855
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51856
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51857
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51858
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51859
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51860
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51861
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51862
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51863
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51870
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51871
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51873
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51874
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51875
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51876
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51877
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51878
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51879
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51880
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51881
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51882
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51883
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51884
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51885
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51886
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51887
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51888
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51889
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51890
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51891
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51892
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51893
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51894
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51895
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51896
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51897
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51898
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51899
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51900
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51901
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51902
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51903
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51904
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51905
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51906
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51907
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51908
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51909
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51910
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51911
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51912
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51913
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51915
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51916
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51917
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51918
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'L' AND [New_Question_Set_Id] = 51919
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50024
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50037
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50051
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50092
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50093
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50105
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50125
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50126
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50127
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50128
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50129
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50130
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50131
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50132
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50133
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50134
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50135
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50136
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50137
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50138
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50193
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50244
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50273
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50274
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50279
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50280
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50281
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50290
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50292
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50316
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50337
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50367
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50368
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50370
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50372
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50381
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50400
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50427
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50428
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50497
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50498
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50499
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50505
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50531
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50553
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50577
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50654
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50687
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50688
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50724
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50747
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50749
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50750
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50751
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50752
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50797
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50836
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50889
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50899
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50904
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50922
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 50986
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51007
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51008
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51009
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51010
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51011
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51012
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51013
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51018
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51020
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51022
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51023
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51030
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51031
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51032
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51033
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51034
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51036
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51037
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51046
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51047
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51048
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51049
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51050
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51055
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51056
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51060
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51063
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51326
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51327
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51333
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51343
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51344
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51345
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51346
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51355
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51384
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51401
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51409
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51430
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51435
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51436
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51437
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51438
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51439
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51440
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51441
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51513
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51544
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51554
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51561
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51570
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51571
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51572
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51573
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51574
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51578
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51579
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51580
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51581
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51583
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51585
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51586
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51595
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51596
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51597
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51598
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51599
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51600
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51611
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51614
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51616
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51817
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51818
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51820
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51821
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51822
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51823
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51824
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51825
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51826
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51827
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51828
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51829
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51830
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51831
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51836
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51837
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51838
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51839
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51840
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51841
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51842
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51843
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51846
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51847
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51848
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51849
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51851
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51852
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51853
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51854
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51855
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51856
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51857
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51858
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51859
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51860
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51861
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51862
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51863
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51870
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51871
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51873
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51874
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51875
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51876
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51877
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51878
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51879
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51880
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51881
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51882
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51883
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51884
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51885
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51886
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51887
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51888
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51889
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51890
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51891
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51892
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51893
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51894
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51895
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51896
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51897
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51898
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51899
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51900
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51901
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51902
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51903
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51904
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51905
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51906
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51907
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51908
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51909
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51910
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51911
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51912
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51913
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51915
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51916
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51917
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51918
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'M' AND [New_Question_Set_Id] = 51919
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50014
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50015
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50016
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50017
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50018
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50019
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50020
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50021
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50022
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50023
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50024
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50025
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50026
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50028
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50029
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50030
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50031
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50032
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50035
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50036
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50037
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50038
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50039
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50040
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50041
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50042
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50043
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50044
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50049
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50050
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50059
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50060
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50062
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50063
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50064
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50065
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50066
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50068
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50072
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50075
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50076
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50077
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50078
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50079
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50084
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50095
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50096
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50106
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50139
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50140
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50141
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50142
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50143
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50144
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50145
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50150
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50152
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50153
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50154
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50155
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50156
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50157
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50158
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50160
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50161
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50166
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50167
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50168
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50169
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50179
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50180
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50183
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50184
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50211
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50213
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50214
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50215
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50216
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50217
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50218
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50219
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50220
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50221
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50223
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50224
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50225
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50226
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50227
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50228
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50229
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50231
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50232
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50233
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50234
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50235
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50236
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50237
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50238
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50239
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50240
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50241
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50242
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50243
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50244
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50245
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50246
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50247
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50248
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50249
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50250
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50252
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50253
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50256
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50257
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50258
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50259
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50262
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50263
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50264
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50268
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50269
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50270
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50272
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50276
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50277
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50278
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50282
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50283
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50284
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50287
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50291
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50296
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50297
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50299
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50300
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50301
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50302
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50304
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50305
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50306
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50308
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50309
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50310
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50311
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50312
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50313
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50317
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50319
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50320
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50321
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50322
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50323
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50333
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50334
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50335
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50336
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50337
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50339
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50346
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50354
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50355
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50356
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50357
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50358
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50359
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50360
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50361
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50363
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50364
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50371
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50374
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50384
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50385
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50386
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50390
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50391
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50392
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50393
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50395
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50396
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50397
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50398
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50399
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50400
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50401
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50402
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50405
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50407
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50408
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50412
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50413
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50414
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50415
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50416
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50417
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50418
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50419
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50420
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50421
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50422
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50423
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50429
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50433
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50434
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50435
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50439
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50440
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50442
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50443
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50444
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50445
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50446
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50447
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50448
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50449
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50450
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50451
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50452
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50453
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50454
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50455
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50456
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50458
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50463
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50464
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50467
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50468
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50471
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50472
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50473
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50474
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50476
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50477
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50478
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50479
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50480
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50481
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50482
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50483
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50484
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50485
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50490
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50491
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50496
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50500
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50501
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50502
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50503
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50504
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50505
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50506
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50507
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50508
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50511
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50515
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50516
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50517
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50518
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50519
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50520
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50521
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50523
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50524
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50525
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50527
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50528
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50529
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50541
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50543
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50544
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50545
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50546
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50547
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50548
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50549
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50550
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50551
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50552
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50553
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50554
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50555
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50556
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50557
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50560
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50561
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50562
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50563
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50564
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50565
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50567
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50568
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50569
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50570
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50571
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50572
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50573
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50578
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50579
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50580
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50581
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50582
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50583
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50584
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50585
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50586
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50587
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50588
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50589
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50591
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50592
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50593
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50594
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50595
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50596
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50597
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50598
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50600
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50601
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50602
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50603
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50604
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50605
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50606
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50610
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50612
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50613
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50614
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50615
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50620
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50621
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50622
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50623
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50624
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50625
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50626
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50627
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50629
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50630
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50633
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50635
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50637
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50638
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50640
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50645
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50646
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50647
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50648
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50649
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50655
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50656
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50657
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50658
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50659
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50660
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50661
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50662
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50663
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50664
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50665
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50667
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50668
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50669
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50670
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50671
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50672
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50675
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50679
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50680
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50681
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50685
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50689
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50690
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50691
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50692
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50693
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50694
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50696
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50697
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50701
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50714
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50715
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50716
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50718
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50719
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50720
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50721
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50723
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50725
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50727
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50731
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50732
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50734
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50735
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50736
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50739
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50740
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50747
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50748
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50753
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50754
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50755
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50756
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50757
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50758
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50759
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50760
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50762
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50763
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50764
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50765
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50766
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50768
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50769
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50770
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50779
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50780
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50781
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50783
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50784
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50785
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50786
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50787
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50788
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50790
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50791
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50792
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50793
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50796
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50798
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50799
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50800
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50801
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50802
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50803
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50804
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50814
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50815
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50816
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50831
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50838
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50839
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50840
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50842
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50843
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50844
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50845
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50847
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50848
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50849
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50850
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50851
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50852
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50853
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50854
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50855
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50858
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50859
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50860
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50867
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50868
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50869
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50871
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50872
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50876
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50877
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50878
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50879
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50880
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50881
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50882
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50883
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50890
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50891
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50892
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50893
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50894
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50895
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50896
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50900
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50901
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50902
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50903
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50904
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50905
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50908
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50909
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50910
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50911
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50913
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50915
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50916
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50917
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50918
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50920
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50923
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50924
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50925
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50926
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50928
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50929
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50930
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50932
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50940
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50941
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50943
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50944
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50945
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50946
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50947
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50948
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50949
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50950
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50951
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50952
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50954
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50955
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50957
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50958
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50959
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50960
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50961
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50962
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50963
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50964
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50965
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50966
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50967
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50968
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50969
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50973
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50974
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50976
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50977
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50978
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50980
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50981
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50982
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50984
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50985
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50987
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50988
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50989
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50990
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50991
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50992
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50993
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50994
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50995
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50996
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50997
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50998
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 50999
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51000
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51004
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51016
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51025
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51026
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51027
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51040
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51041
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51045
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51061
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51062
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51068
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51069
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51070
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51072
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51079
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51080
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51081
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51082
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51084
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51085
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51086
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51087
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51092
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51093
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51094
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51095
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51098
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51099
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51100
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51101
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51102
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51104
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51105
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51108
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51109
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51112
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51113
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51115
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51116
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51117
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51118
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51120
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51121
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51122
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51127
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51131
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51133
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51134
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51135
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51137
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51138
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51139
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51140
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51141
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51146
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51147
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51149
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51150
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51151
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51152
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51157
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51158
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51160
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51161
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51162
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51163
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51164
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51165
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51166
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51167
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51168
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51169
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51171
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51172
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51182
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51183
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51184
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51185
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51193
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51194
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51195
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51207
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51219
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51277
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51278
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51280
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51282
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51283
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51286
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51288
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51290
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51295
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51296
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51297
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51298
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51299
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51300
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51305
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51306
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51307
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51312
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51316
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51322
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51328
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51329
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51332
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51334
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51340
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51341
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51349
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51357
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51358
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51359
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51360
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51366
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51369
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51370
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51371
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51372
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51375
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51376
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51381
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51388
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51400
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51412
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51413
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51414
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51419
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51429
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51431
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51445
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51446
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51449
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51450
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51451
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51452
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51453
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51458
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51459
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51460
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51461
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51468
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51469
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51470
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51471
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51472
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51475
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51476
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51477
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51478
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51480
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51481
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51482
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51483
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51484
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51485
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51491
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51492
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51493
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51494
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51507
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51508
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51514
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51515
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51516
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51517
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51518
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51519
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51520
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51523
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51524
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51525
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51526
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51527
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51530
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51534
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51542
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51545
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51546
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51548
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51549
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51555
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51556
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51557
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51558
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51560
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51575
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51576
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51577
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51601
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51602
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51603
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51604
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51606
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51617
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51621
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51627
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51628
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51633
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51814
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51816
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51819
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51845
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51850
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51864
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51865
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51866
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51868
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51869
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51872
DELETE FROM [dbo].[NEW_QUESTION_LEVELS] WHERE [Universal_Sal_Level] = 'VH' AND [New_Question_Set_Id] = 51914
PRINT(N'Operation applied to 1427 rows out of 1427')

PRINT(N'Delete rows from [dbo].[REQUIREMENT_QUESTIONS_SETS]')
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003384 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003385 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003386 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003387 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003388 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003389 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003390 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003393 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003394 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003395 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003396 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003397 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003398 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003399 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003400 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003401 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003402 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003403 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003404 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003405 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003406 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003407 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003408 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003409 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003410 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003411 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003412 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003413 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003414 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003415 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003416 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003417 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003418 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003419 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003420 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003421 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003422 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003423 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003424 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003425 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003426 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003427 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003428 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003429 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003430 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003431 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003432 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003433 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003434 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003435 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003436 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003437 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003438 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003439 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003440 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003441 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003442 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003443 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003444 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003445 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003446 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003447 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003448 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003449 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003450 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003451 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003452 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003453 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003454 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003455 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003456 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003457 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003458 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003459 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003460 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003461 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003462 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003463 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003464 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003465 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003466 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003467 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003468 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003469 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003470 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003471 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003472 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003473 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003474 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003475 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003476 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003477 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003478 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003479 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003480 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003481 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003482 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003483 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003484 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003485 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003486 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003487 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003489 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003490 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003491 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003492 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003493 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003494 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003495 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003496 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003497 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003498 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003499 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003500 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003501 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003502 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003503 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003504 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003505 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003506 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003507 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003508 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003509 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003510 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003511 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003512 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003513 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003514 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003515 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003516 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003517 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003518 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003519 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003520 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003521 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003522 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003523 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003524 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003525 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003526 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003527 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003528 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003529 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003530 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003531 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003532 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003533 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003534 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003535 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003536 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003537 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003538 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003539 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003540 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003541 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003542 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003543 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003544 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003545 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003546 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003547 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003548 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003549 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003550 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003551 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003552 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003553 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003554 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003555 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003556 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003557 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003558 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003559 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003560 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003561 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003562 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003563 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003564 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003565 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003566 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003567 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003568 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003569 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003570 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003571 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003572 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003573 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003574 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003575 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003576 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003577 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003578 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003579 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003580 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003581 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003582 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003583 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003584 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003585 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003586 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003587 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003588 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003589 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003590 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003591 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003592 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003593 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003594 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003595 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003596 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003597 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003598 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003599 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003600 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003601 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003602 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003603 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003604 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003605 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003606 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003607 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003608 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003609 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003610 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003611 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003612 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003613 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003614 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003615 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003616 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003617 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003618 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003619 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003620 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003621 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003622 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003623 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003624 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003625 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003626 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003627 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003628 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003629 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003630 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003631 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003632 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003633 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003634 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003635 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003636 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003637 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003638 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003639 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003640 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003641 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003642 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003643 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003644 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003645 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003646 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003647 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003648 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003649 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003650 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003651 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003652 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003653 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003654 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003655 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003656 AND [Set_Name] = 'C800_53_R5_V2'
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS_SETS] WHERE [Question_Id] = 1003657 AND [Set_Name] = 'C800_53_R5_V2'
PRINT(N'Operation applied to 271 rows out of 271')

PRINT(N'Delete rows from [dbo].[REQUIREMENT_QUESTIONS]')
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 832 AND [Requirement_Id] = 1008046
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1683 AND [Requirement_Id] = 1008046
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1684 AND [Requirement_Id] = 1008046
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1811 AND [Requirement_Id] = 1008046
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1881 AND [Requirement_Id] = 1008046
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003384 AND [Requirement_Id] = 29667
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003385 AND [Requirement_Id] = 29668
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003386 AND [Requirement_Id] = 29669
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003387 AND [Requirement_Id] = 29670
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003388 AND [Requirement_Id] = 29671
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003389 AND [Requirement_Id] = 29672
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003390 AND [Requirement_Id] = 29673
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003393 AND [Requirement_Id] = 1025311
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003394 AND [Requirement_Id] = 1025312
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003395 AND [Requirement_Id] = 1025313
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003396 AND [Requirement_Id] = 1025314
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003397 AND [Requirement_Id] = 1025315
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003398 AND [Requirement_Id] = 1025316
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003399 AND [Requirement_Id] = 1025317
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003400 AND [Requirement_Id] = 30045
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003401 AND [Requirement_Id] = 30046
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003402 AND [Requirement_Id] = 30046
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003403 AND [Requirement_Id] = 30049
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003404 AND [Requirement_Id] = 30049
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003405 AND [Requirement_Id] = 30049
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003406 AND [Requirement_Id] = 30053
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003407 AND [Requirement_Id] = 30069
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003408 AND [Requirement_Id] = 30070
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003409 AND [Requirement_Id] = 30081
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003410 AND [Requirement_Id] = 30094
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003411 AND [Requirement_Id] = 30095
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003412 AND [Requirement_Id] = 30096
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003413 AND [Requirement_Id] = 30097
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003414 AND [Requirement_Id] = 30098
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003415 AND [Requirement_Id] = 30099
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003416 AND [Requirement_Id] = 30100
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003417 AND [Requirement_Id] = 30100
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003418 AND [Requirement_Id] = 30101
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003419 AND [Requirement_Id] = 30102
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003420 AND [Requirement_Id] = 30103
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003421 AND [Requirement_Id] = 30103
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003422 AND [Requirement_Id] = 30103
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003423 AND [Requirement_Id] = 30103
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003424 AND [Requirement_Id] = 30114
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003425 AND [Requirement_Id] = 30134
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003426 AND [Requirement_Id] = 30148
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003427 AND [Requirement_Id] = 30161
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003428 AND [Requirement_Id] = 30177
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003429 AND [Requirement_Id] = 30177
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003430 AND [Requirement_Id] = 30180
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003431 AND [Requirement_Id] = 30182
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003432 AND [Requirement_Id] = 30183
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003433 AND [Requirement_Id] = 30183
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003434 AND [Requirement_Id] = 30184
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003435 AND [Requirement_Id] = 30184
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003436 AND [Requirement_Id] = 30188
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003437 AND [Requirement_Id] = 30190
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003438 AND [Requirement_Id] = 30192
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003439 AND [Requirement_Id] = 30203
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003440 AND [Requirement_Id] = 30216
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003441 AND [Requirement_Id] = 30236
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003442 AND [Requirement_Id] = 30237
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003443 AND [Requirement_Id] = 30239
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003444 AND [Requirement_Id] = 30240
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003445 AND [Requirement_Id] = 30246
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003446 AND [Requirement_Id] = 30253
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003447 AND [Requirement_Id] = 30264
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003448 AND [Requirement_Id] = 30265
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003449 AND [Requirement_Id] = 30270
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003450 AND [Requirement_Id] = 30270
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003451 AND [Requirement_Id] = 30303
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003452 AND [Requirement_Id] = 30307
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003453 AND [Requirement_Id] = 30307
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003454 AND [Requirement_Id] = 30307
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003455 AND [Requirement_Id] = 30308
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003456 AND [Requirement_Id] = 30323
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003457 AND [Requirement_Id] = 30329
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003458 AND [Requirement_Id] = 30337
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003459 AND [Requirement_Id] = 30345
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003460 AND [Requirement_Id] = 30397
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003461 AND [Requirement_Id] = 30413
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003462 AND [Requirement_Id] = 30413
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003463 AND [Requirement_Id] = 30418
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003464 AND [Requirement_Id] = 30419
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003465 AND [Requirement_Id] = 30433
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003466 AND [Requirement_Id] = 30436
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003467 AND [Requirement_Id] = 30452
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003468 AND [Requirement_Id] = 30454
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003469 AND [Requirement_Id] = 30455
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003470 AND [Requirement_Id] = 30456
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003471 AND [Requirement_Id] = 30456
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003472 AND [Requirement_Id] = 30481
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003473 AND [Requirement_Id] = 30499
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003474 AND [Requirement_Id] = 30532
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003475 AND [Requirement_Id] = 30539
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003476 AND [Requirement_Id] = 30541
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003477 AND [Requirement_Id] = 30542
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003478 AND [Requirement_Id] = 30559
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003479 AND [Requirement_Id] = 30574
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003480 AND [Requirement_Id] = 30590
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003481 AND [Requirement_Id] = 30602
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003482 AND [Requirement_Id] = 30602
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003483 AND [Requirement_Id] = 30602
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003484 AND [Requirement_Id] = 30602
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003485 AND [Requirement_Id] = 30602
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003486 AND [Requirement_Id] = 30602
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003487 AND [Requirement_Id] = 30602
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003489 AND [Requirement_Id] = 30604
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003490 AND [Requirement_Id] = 30605
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003491 AND [Requirement_Id] = 30605
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003492 AND [Requirement_Id] = 30605
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003493 AND [Requirement_Id] = 29670
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003494 AND [Requirement_Id] = 30607
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003495 AND [Requirement_Id] = 30607
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003496 AND [Requirement_Id] = 30607
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003497 AND [Requirement_Id] = 30607
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003498 AND [Requirement_Id] = 30608
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003499 AND [Requirement_Id] = 30609
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003500 AND [Requirement_Id] = 30609
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003501 AND [Requirement_Id] = 30611
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003502 AND [Requirement_Id] = 30612
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003503 AND [Requirement_Id] = 30612
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003504 AND [Requirement_Id] = 30612
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003505 AND [Requirement_Id] = 30612
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003506 AND [Requirement_Id] = 30613
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003507 AND [Requirement_Id] = 30613
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003508 AND [Requirement_Id] = 30616
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003509 AND [Requirement_Id] = 30617
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003510 AND [Requirement_Id] = 29665
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003511 AND [Requirement_Id] = 29665
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003512 AND [Requirement_Id] = 1025307
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003513 AND [Requirement_Id] = 30788
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003514 AND [Requirement_Id] = 30828
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003515 AND [Requirement_Id] = 30828
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003516 AND [Requirement_Id] = 30834
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003517 AND [Requirement_Id] = 30841
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003518 AND [Requirement_Id] = 30841
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003519 AND [Requirement_Id] = 30841
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003520 AND [Requirement_Id] = 30842
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003521 AND [Requirement_Id] = 30850
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003522 AND [Requirement_Id] = 30852
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003523 AND [Requirement_Id] = 30874
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003524 AND [Requirement_Id] = 30887
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003525 AND [Requirement_Id] = 30894
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003526 AND [Requirement_Id] = 30914
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003527 AND [Requirement_Id] = 30917
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003528 AND [Requirement_Id] = 30917
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003529 AND [Requirement_Id] = 30918
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003530 AND [Requirement_Id] = 30919
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003531 AND [Requirement_Id] = 30920
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003532 AND [Requirement_Id] = 30921
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003533 AND [Requirement_Id] = 30922
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003534 AND [Requirement_Id] = 30940
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003535 AND [Requirement_Id] = 30959
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003536 AND [Requirement_Id] = 30978
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003537 AND [Requirement_Id] = 30988
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003538 AND [Requirement_Id] = 30993
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003539 AND [Requirement_Id] = 31001
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003540 AND [Requirement_Id] = 31001
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003541 AND [Requirement_Id] = 31001
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003542 AND [Requirement_Id] = 31002
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003543 AND [Requirement_Id] = 31002
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003544 AND [Requirement_Id] = 31006
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003545 AND [Requirement_Id] = 31006
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003546 AND [Requirement_Id] = 31007
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003547 AND [Requirement_Id] = 31008
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003548 AND [Requirement_Id] = 31010
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003549 AND [Requirement_Id] = 31012
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003550 AND [Requirement_Id] = 31012
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003551 AND [Requirement_Id] = 31021
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003552 AND [Requirement_Id] = 31022
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003553 AND [Requirement_Id] = 31023
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003554 AND [Requirement_Id] = 31023
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003555 AND [Requirement_Id] = 31024
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003556 AND [Requirement_Id] = 31024
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003557 AND [Requirement_Id] = 31025
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003558 AND [Requirement_Id] = 31025
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003559 AND [Requirement_Id] = 31025
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003560 AND [Requirement_Id] = 31027
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003561 AND [Requirement_Id] = 31031
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003562 AND [Requirement_Id] = 31034
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003563 AND [Requirement_Id] = 31036
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003564 AND [Requirement_Id] = 31037
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003565 AND [Requirement_Id] = 31051
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003566 AND [Requirement_Id] = 30543
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003567 AND [Requirement_Id] = 30618
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003568 AND [Requirement_Id] = 30635
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003569 AND [Requirement_Id] = 30636
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003570 AND [Requirement_Id] = 30636
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003571 AND [Requirement_Id] = 30636
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003572 AND [Requirement_Id] = 30636
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003573 AND [Requirement_Id] = 30636
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003574 AND [Requirement_Id] = 30636
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003575 AND [Requirement_Id] = 30636
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003576 AND [Requirement_Id] = 30637
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003577 AND [Requirement_Id] = 30637
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003578 AND [Requirement_Id] = 30638
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003579 AND [Requirement_Id] = 30639
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003580 AND [Requirement_Id] = 30640
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003581 AND [Requirement_Id] = 30640
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003582 AND [Requirement_Id] = 30640
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003583 AND [Requirement_Id] = 30641
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003584 AND [Requirement_Id] = 30642
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003585 AND [Requirement_Id] = 30643
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003586 AND [Requirement_Id] = 30644
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003587 AND [Requirement_Id] = 30645
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003588 AND [Requirement_Id] = 30646
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003589 AND [Requirement_Id] = 30647
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003590 AND [Requirement_Id] = 30647
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003591 AND [Requirement_Id] = 30647
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003592 AND [Requirement_Id] = 30648
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003593 AND [Requirement_Id] = 30650
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003594 AND [Requirement_Id] = 30650
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003595 AND [Requirement_Id] = 30650
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003596 AND [Requirement_Id] = 30650
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003597 AND [Requirement_Id] = 30650
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003598 AND [Requirement_Id] = 30651
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003599 AND [Requirement_Id] = 30652
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003600 AND [Requirement_Id] = 30653
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003601 AND [Requirement_Id] = 30654
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003602 AND [Requirement_Id] = 30654
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003603 AND [Requirement_Id] = 30654
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003604 AND [Requirement_Id] = 30655
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003605 AND [Requirement_Id] = 30656
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003606 AND [Requirement_Id] = 30657
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003607 AND [Requirement_Id] = 30657
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003608 AND [Requirement_Id] = 30657
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003609 AND [Requirement_Id] = 30662
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003610 AND [Requirement_Id] = 30664
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003611 AND [Requirement_Id] = 30673
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003612 AND [Requirement_Id] = 30678
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003613 AND [Requirement_Id] = 30678
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003614 AND [Requirement_Id] = 30678
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003615 AND [Requirement_Id] = 30695
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003616 AND [Requirement_Id] = 30696
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003617 AND [Requirement_Id] = 30696
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003618 AND [Requirement_Id] = 30699
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003619 AND [Requirement_Id] = 30700
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003620 AND [Requirement_Id] = 30701
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003621 AND [Requirement_Id] = 30702
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003622 AND [Requirement_Id] = 30703
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003623 AND [Requirement_Id] = 30704
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003624 AND [Requirement_Id] = 30705
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003625 AND [Requirement_Id] = 30706
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003626 AND [Requirement_Id] = 30707
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003627 AND [Requirement_Id] = 30708
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003628 AND [Requirement_Id] = 30709
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003629 AND [Requirement_Id] = 30710
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003630 AND [Requirement_Id] = 30711
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003631 AND [Requirement_Id] = 30712
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003632 AND [Requirement_Id] = 30713
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003633 AND [Requirement_Id] = 30714
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003634 AND [Requirement_Id] = 30715
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003635 AND [Requirement_Id] = 30716
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003636 AND [Requirement_Id] = 30717
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003637 AND [Requirement_Id] = 30718
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003638 AND [Requirement_Id] = 30719
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003639 AND [Requirement_Id] = 30720
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003640 AND [Requirement_Id] = 30721
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003641 AND [Requirement_Id] = 30722
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003642 AND [Requirement_Id] = 30723
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003643 AND [Requirement_Id] = 30724
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003644 AND [Requirement_Id] = 30725
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003645 AND [Requirement_Id] = 30726
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003646 AND [Requirement_Id] = 30727
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003647 AND [Requirement_Id] = 30728
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003648 AND [Requirement_Id] = 30729
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003649 AND [Requirement_Id] = 30730
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003650 AND [Requirement_Id] = 30731
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003651 AND [Requirement_Id] = 30740
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003652 AND [Requirement_Id] = 30748
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003653 AND [Requirement_Id] = 30758
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003654 AND [Requirement_Id] = 30769
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003655 AND [Requirement_Id] = 30779
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003656 AND [Requirement_Id] = 30780
DELETE FROM [dbo].[REQUIREMENT_QUESTIONS] WHERE [Question_Id] = 1003657 AND [Requirement_Id] = 30784
PRINT(N'Operation applied to 276 rows out of 276')

PRINT(N'Delete rows from [dbo].[REQUIREMENT_SOURCE_FILES]')
DELETE FROM [dbo].[REQUIREMENT_SOURCE_FILES] WHERE [Requirement_Id] = 1025290 AND [Gen_File_Id] = 3834 AND [Section_Ref] = ''
DELETE FROM [dbo].[REQUIREMENT_SOURCE_FILES] WHERE [Requirement_Id] = 1025290 AND [Gen_File_Id] = 3971 AND [Section_Ref] = ''
DELETE FROM [dbo].[REQUIREMENT_SOURCE_FILES] WHERE [Requirement_Id] = 1025290 AND [Gen_File_Id] = 5064 AND [Section_Ref] = 'aaa'
DELETE FROM [dbo].[REQUIREMENT_SOURCE_FILES] WHERE [Requirement_Id] = 1025307 AND [Gen_File_Id] = 5065 AND [Section_Ref] = '5.2.8'
DELETE FROM [dbo].[REQUIREMENT_SOURCE_FILES] WHERE [Requirement_Id] = 1025311 AND [Gen_File_Id] = 5065 AND [Section_Ref] = '5.2.12'
DELETE FROM [dbo].[REQUIREMENT_SOURCE_FILES] WHERE [Requirement_Id] = 1025312 AND [Gen_File_Id] = 5065 AND [Section_Ref] = '5.2.13'
DELETE FROM [dbo].[REQUIREMENT_SOURCE_FILES] WHERE [Requirement_Id] = 1025313 AND [Gen_File_Id] = 5065 AND [Section_Ref] = '5.2.14'
DELETE FROM [dbo].[REQUIREMENT_SOURCE_FILES] WHERE [Requirement_Id] = 1025314 AND [Gen_File_Id] = 5065 AND [Section_Ref] = '5.2.15'
DELETE FROM [dbo].[REQUIREMENT_SOURCE_FILES] WHERE [Requirement_Id] = 1025315 AND [Gen_File_Id] = 5065 AND [Section_Ref] = '5.2.16'
DELETE FROM [dbo].[REQUIREMENT_SOURCE_FILES] WHERE [Requirement_Id] = 1025316 AND [Gen_File_Id] = 5065 AND [Section_Ref] = '5.2.17'
DELETE FROM [dbo].[REQUIREMENT_SOURCE_FILES] WHERE [Requirement_Id] = 1025317 AND [Gen_File_Id] = 5065 AND [Section_Ref] = '5.2.18'
PRINT(N'Operation applied to 11 rows out of 11')

PRINT(N'Delete rows from [dbo].[REQUIREMENT_SETS]')
DELETE FROM [dbo].[REQUIREMENT_SETS] WHERE [Requirement_Id] = 1025307 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_SETS] WHERE [Requirement_Id] = 1025311 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_SETS] WHERE [Requirement_Id] = 1025312 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_SETS] WHERE [Requirement_Id] = 1025313 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_SETS] WHERE [Requirement_Id] = 1025314 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_SETS] WHERE [Requirement_Id] = 1025315 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_SETS] WHERE [Requirement_Id] = 1025316 AND [Set_Name] = 'TSA2018'
DELETE FROM [dbo].[REQUIREMENT_SETS] WHERE [Requirement_Id] = 1025317 AND [Set_Name] = 'TSA2018'
PRINT(N'Operation applied to 8 rows out of 8')

PRINT(N'Delete rows from [dbo].[REQUIREMENT_LEVELS]')
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30045 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30047 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30047 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30048 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30048 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30049 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30049 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30050 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30050 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30051 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30051 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30051 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30052 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30052 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30052 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30053 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30053 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30053 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30054 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30054 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30054 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30055 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30055 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30055 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30056 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30057 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30058 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30058 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30058 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30060 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30060 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30060 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30061 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30061 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30061 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30062 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30062 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30062 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30063 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30063 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30063 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30064 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30064 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30064 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30065 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30065 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30065 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30066 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30066 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30066 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30067 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30067 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30067 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30068 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30068 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30068 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30069 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30069 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30069 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30070 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30070 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30070 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30071 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30071 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30071 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30072 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30072 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30072 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30073 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30074 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30075 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30076 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30077 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30078 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30079 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30080 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30081 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30082 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30083 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30084 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30085 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30086 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30087 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30088 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30089 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30090 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30091 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30092 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30093 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30094 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30095 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30096 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30097 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30098 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30099 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30100 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30101 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30102 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30103 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30104 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30104 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30105 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30105 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30105 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30106 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30106 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30107 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30107 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30108 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30108 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30108 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30109 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30109 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30110 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30110 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30111 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30111 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30111 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30112 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30112 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30113 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30113 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30113 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30114 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30114 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30115 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30115 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30116 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30117 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30117 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30117 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30118 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30118 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30118 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30119 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30119 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30119 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30120 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30121 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30121 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30121 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30122 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30122 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30122 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30123 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30123 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30123 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30124 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30124 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30124 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30125 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30125 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30125 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30126 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30126 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30126 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30127 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30127 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30127 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30128 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30128 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30129 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30129 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30130 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30130 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30130 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30131 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30131 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30131 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30132 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30132 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30132 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30133 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30134 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30134 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30134 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30135 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30135 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30135 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30136 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30136 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30136 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30137 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30137 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30137 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30138 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30138 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30138 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30139 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30139 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30139 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30140 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30140 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30140 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30141 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30141 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30141 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30142 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30142 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30142 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30143 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30143 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30143 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30144 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30144 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30144 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30145 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30145 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30145 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30146 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30146 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30147 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30147 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30148 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30148 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30149 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30149 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30150 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30150 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30150 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30151 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30151 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30151 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30152 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30152 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30152 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30153 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30153 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30153 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30154 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30154 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30155 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30155 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30156 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30156 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30156 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30157 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30157 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30157 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30158 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30158 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30158 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30159 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30159 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30159 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30160 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30160 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30161 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30161 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30161 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30162 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30162 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30163 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30163 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30163 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30164 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30164 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30164 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30165 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30165 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30165 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30166 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30166 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30166 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30167 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30167 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30168 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30168 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30168 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30169 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30169 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30169 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30170 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30171 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30171 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30171 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30172 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30172 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30172 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30173 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30173 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30173 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30174 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30174 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30174 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30175 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30175 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30175 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30176 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30177 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30177 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30177 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30178 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30178 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30178 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30179 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30180 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30180 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30181 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30181 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30181 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30182 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30182 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30182 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30183 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30183 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30183 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30184 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30185 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30185 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30185 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30186 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30186 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30186 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30187 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30187 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30187 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30188 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30188 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30188 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30189 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30190 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30190 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30190 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30191 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30192 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30193 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30193 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30193 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30194 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30194 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30195 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30195 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30195 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30196 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30197 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30197 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30197 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30198 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30198 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30199 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30199 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30199 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30200 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30200 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30200 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30201 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30201 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30201 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30202 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30202 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30202 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30203 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30203 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30203 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30204 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30204 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30204 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30205 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30205 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30206 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30206 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30207 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30207 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30207 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30208 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30208 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30208 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30209 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30209 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30209 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30210 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30210 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30210 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30211 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30211 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30211 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30212 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30212 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30212 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30213 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30213 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30213 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30214 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30214 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30215 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30216 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30216 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30216 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30217 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30217 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30217 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30218 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30218 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30218 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30219 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30219 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30219 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30220 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30220 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30221 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30221 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30221 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30222 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30222 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30222 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30223 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30223 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30223 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30224 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30224 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30224 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30225 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30225 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30225 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30226 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30226 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30226 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30227 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30227 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30227 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30228 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30228 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30228 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30229 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30230 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30230 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30230 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30231 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30232 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30232 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30232 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30233 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30233 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30233 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30234 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30234 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30234 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30235 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30235 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30235 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30236 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30236 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30236 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30237 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30237 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30237 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30238 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30238 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30238 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30239 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30239 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30239 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30240 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30240 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30240 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30241 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30241 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30241 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30242 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30242 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30242 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30243 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30243 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30243 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30244 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30244 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30244 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30245 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30245 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30245 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30246 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30246 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30246 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30247 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30248 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30248 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30248 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30249 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30249 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30250 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30250 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30250 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30251 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30251 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30251 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30252 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30252 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30253 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30253 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30253 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30254 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30254 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30254 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30255 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30256 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30256 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30256 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30257 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30258 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30258 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30258 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30259 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30259 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30259 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30260 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30260 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30260 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30261 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30261 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30262 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30262 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30262 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30263 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30264 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30264 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30264 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30265 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30265 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30265 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30266 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30266 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30266 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30267 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30267 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30267 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30268 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30268 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30268 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30269 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30269 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30269 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30270 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30271 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30271 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30271 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30272 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30273 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30273 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30273 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30274 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30274 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30275 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30275 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30276 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30276 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30276 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30277 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30277 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30278 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30278 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30278 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30279 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30279 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30279 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30280 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30280 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30280 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30281 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30281 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30281 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30282 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30282 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30283 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30283 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30283 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30284 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30284 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30284 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30285 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30285 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30285 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30286 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30286 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30286 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30287 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30287 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30287 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30288 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30288 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30288 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30289 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30289 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30290 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30290 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30291 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30291 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30291 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30292 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30292 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30292 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30293 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30293 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30293 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30294 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30294 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30294 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30295 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30295 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30296 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30296 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30296 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30297 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30297 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30297 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30298 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30298 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30298 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30299 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30299 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30300 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30300 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30301 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30301 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30301 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30302 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30302 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30302 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30303 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30303 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30304 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30304 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30304 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30305 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30305 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30305 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30306 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30306 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30306 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30307 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30307 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30307 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30308 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30308 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30308 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30309 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30309 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30310 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30310 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30310 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30311 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30311 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30312 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30312 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30312 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30313 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30313 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30313 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30314 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30314 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30314 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30315 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30315 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30315 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30316 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30316 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30316 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30317 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30317 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30318 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30318 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30318 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30319 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30320 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30320 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30320 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30321 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30322 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30322 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30322 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30323 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30323 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30323 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30324 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30324 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30324 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30325 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30325 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30326 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30326 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30326 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30327 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30327 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30327 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30328 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30329 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30329 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30329 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30330 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30330 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30331 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30331 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30331 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30332 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30332 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30333 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30333 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30333 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30334 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30334 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30334 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30335 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30335 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30335 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30336 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30336 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30337 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30337 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30338 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30338 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30338 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30339 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30339 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30339 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30340 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30340 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30340 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30341 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30341 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30342 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30342 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30342 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30343 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30343 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30343 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30344 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30344 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30344 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30345 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30345 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30345 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30346 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30346 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30346 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30347 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30347 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30348 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30348 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30348 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30349 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30349 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30350 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30350 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30350 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30351 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30351 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30352 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30352 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30353 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30353 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30354 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30354 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30354 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30355 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30355 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30355 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30356 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30356 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30356 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30357 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30357 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30358 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30358 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30359 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30359 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30359 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30360 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30360 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30360 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30361 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30361 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30361 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30362 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30362 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30362 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30363 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30363 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30364 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30364 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30364 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30365 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30365 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30365 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30366 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30366 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30366 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30367 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30367 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30367 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30368 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30368 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30368 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30369 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30369 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30370 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30370 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30370 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30371 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30371 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30372 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30372 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30372 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30373 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30373 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30373 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30374 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30374 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30374 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30375 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30375 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30375 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30376 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30376 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30376 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30377 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30378 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30378 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30378 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30379 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30380 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30381 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30381 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30381 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30382 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30382 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30382 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30383 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30384 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30384 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30384 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30385 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30386 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30386 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30386 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30387 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30387 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30388 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30388 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30388 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30389 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30389 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30389 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30390 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30390 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30390 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30391 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30391 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30391 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30392 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30392 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30392 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30393 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30393 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30394 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30394 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30394 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30395 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30395 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30395 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30396 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30396 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30396 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30397 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30397 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30397 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30398 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30398 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30398 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30399 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30400 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30400 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30401 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30401 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30401 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30402 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30402 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30403 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30403 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30403 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30404 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30404 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30404 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30405 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30405 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30405 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30406 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30406 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30406 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30407 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30407 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30407 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30408 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30408 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30408 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30409 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30409 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30409 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30410 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30410 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30410 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30411 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30411 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30411 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30412 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30412 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30412 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30413 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30413 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30413 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30414 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30415 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30416 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30416 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30416 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30417 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30418 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30419 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30420 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30420 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30420 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30421 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30421 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30421 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30422 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30422 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30422 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30423 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30423 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30423 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30424 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30425 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30425 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30425 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30426 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30426 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30426 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30427 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30427 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30428 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30428 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30429 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30429 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30429 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30430 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30430 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30431 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30431 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30431 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30432 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30433 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30433 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30434 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30434 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30434 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30435 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30435 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30435 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30436 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30436 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30436 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30437 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30437 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30437 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30438 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30438 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30438 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30439 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30439 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30440 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30440 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30440 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30442 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30442 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30443 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30443 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30443 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30444 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30444 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30444 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30445 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30445 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30445 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30446 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30446 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30446 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30447 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30447 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30447 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30448 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30448 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30448 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30449 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30449 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30449 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30450 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30450 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30450 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30451 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30451 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30451 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30452 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30452 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30452 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30453 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30453 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30453 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30454 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30454 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30454 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30455 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30455 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30455 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30456 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30456 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30456 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30457 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30457 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30458 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30458 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30458 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30459 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30459 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30459 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30460 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30460 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30461 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30461 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30461 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30462 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30462 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30463 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30463 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30463 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30464 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30464 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30465 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30465 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30465 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30466 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30467 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30467 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30467 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30468 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30468 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30468 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30469 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30469 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30469 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30470 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30470 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30470 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30471 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30471 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30471 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30472 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30473 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30473 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30474 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30474 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30474 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30475 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30475 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30475 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30476 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30476 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30477 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30477 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30478 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30478 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30479 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30479 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30479 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30480 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30480 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30480 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30481 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30481 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30481 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30482 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30482 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30483 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30483 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30483 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30484 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30484 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30484 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30485 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30485 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30485 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30486 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30486 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30486 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30487 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30487 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30487 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30488 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30488 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30488 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30489 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30490 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30490 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30490 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30491 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30491 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30491 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30492 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30492 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30492 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30493 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30493 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30493 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30494 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30494 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30494 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30495 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30495 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30496 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30496 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30496 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30497 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30497 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30497 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30498 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30498 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30498 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30499 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30499 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30499 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30500 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30501 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30502 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30502 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30503 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30503 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30504 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30504 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30504 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30505 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30505 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30506 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30506 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30506 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30507 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30507 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30508 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30508 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30508 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30509 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30509 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30509 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30510 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30510 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30510 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30511 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30511 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30511 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30512 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30512 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30512 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30513 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30514 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30514 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30514 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30515 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30515 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30515 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30516 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30516 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30516 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30517 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30517 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30517 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30518 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30518 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30518 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30519 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30519 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30519 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30520 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30521 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30522 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30522 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30522 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30523 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30523 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30523 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30524 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30524 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30524 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30525 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30525 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30526 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30526 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30526 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30527 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30527 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30527 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30528 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30528 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30528 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30529 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30529 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30529 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30530 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30530 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30530 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30531 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30531 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30531 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30532 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30532 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30532 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30533 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30533 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30534 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30534 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30535 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30535 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30535 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30536 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30536 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30536 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30537 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30537 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30538 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30538 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30538 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30539 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30539 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30539 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30540 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30540 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30540 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30541 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30541 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30542 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30542 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30542 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30543 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30543 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30543 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30544 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30544 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30545 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30545 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30545 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30546 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30546 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30546 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30547 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30547 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30548 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30548 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30548 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30549 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30549 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30549 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30550 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30550 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30550 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30551 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30552 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30552 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30552 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30553 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30553 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30553 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30554 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30554 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30555 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30555 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30555 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30556 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30556 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30556 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30557 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30558 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30558 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30558 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30559 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30559 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30559 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30560 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30560 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30561 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30561 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30561 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30562 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30563 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30563 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30564 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30564 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30564 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30565 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30565 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30565 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30566 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30566 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30566 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30567 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30567 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30567 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30568 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30568 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30568 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30569 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30569 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30569 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30570 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30570 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30570 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30571 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30572 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30573 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30573 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30573 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30574 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30575 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30575 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30575 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30576 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30576 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30577 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30577 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30577 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30578 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30578 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30578 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30579 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30579 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30579 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30580 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30581 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30582 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30582 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30582 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30583 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30583 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30583 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30584 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30584 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30584 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30585 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30585 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30585 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30586 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30586 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30586 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30587 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30587 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30587 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30588 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30588 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30588 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30589 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30589 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30589 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30590 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30590 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30590 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30591 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30591 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30591 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30592 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30592 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30592 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30593 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30593 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30593 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30594 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30594 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30594 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30595 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30595 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30595 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30596 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30596 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30596 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30597 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30597 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30597 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30598 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30598 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30598 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30599 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30599 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30599 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30600 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30600 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30600 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30601 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30601 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30601 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30602 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30602 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30602 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30603 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30603 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30603 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30604 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30604 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30604 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30605 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30605 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30605 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30606 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30606 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30606 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30607 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30607 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30607 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30608 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30608 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30608 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30609 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30609 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30609 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30610 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30610 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30610 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30611 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30611 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30611 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30612 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30612 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30612 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30613 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30613 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30613 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30614 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30614 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30614 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30615 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30615 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30615 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30616 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30616 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30616 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30617 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30617 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30617 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30618 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30618 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30618 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30619 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30620 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30621 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30622 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30622 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30622 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30623 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30623 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30623 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30624 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30624 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30624 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30625 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30625 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30625 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30626 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30626 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30627 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30627 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30627 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30628 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30628 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30628 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30629 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30630 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30631 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30631 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30631 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30632 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30632 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30632 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30633 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30634 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30635 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30636 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30636 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30636 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30637 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30637 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30637 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30638 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30638 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30638 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30639 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30639 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30639 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30640 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30640 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30640 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30641 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30641 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30641 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30642 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30642 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30642 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30643 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30643 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30643 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30644 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30644 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30644 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30645 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30645 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30645 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30646 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30646 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30646 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30647 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30647 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30647 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30648 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30648 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30648 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30649 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30649 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30649 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30650 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30650 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30650 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30651 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30651 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30651 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30652 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30652 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30652 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30653 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30653 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30653 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30654 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30654 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30654 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30655 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30655 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30655 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30656 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30656 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30656 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30657 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30658 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30659 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30659 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30659 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30660 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30660 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30660 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30661 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30662 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30662 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30662 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30663 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30663 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30663 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30664 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30664 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30664 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30665 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30665 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30665 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30666 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30667 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30667 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30667 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30668 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30668 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30668 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30669 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30669 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30670 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30670 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30670 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30671 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30671 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30671 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30672 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30672 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30672 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30673 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30674 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30674 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30674 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30675 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30676 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30676 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30676 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30677 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30677 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30678 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30678 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30678 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30679 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30680 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30681 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30682 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30682 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30682 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30683 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30683 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30683 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30684 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30684 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30684 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30685 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30685 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30685 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30686 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30686 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30687 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30687 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30688 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30688 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30688 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30689 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30689 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30689 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30690 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30690 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30690 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30691 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30691 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30691 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30692 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30692 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30692 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30693 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30693 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30694 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30695 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30695 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30695 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30696 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30696 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30696 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30697 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30698 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30699 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30699 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30699 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30700 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30700 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30700 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30701 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30701 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30701 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30702 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30702 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30702 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30703 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30703 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30703 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30704 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30704 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30704 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30705 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30705 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30705 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30706 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30706 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30706 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30707 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30707 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30707 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30708 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30708 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30708 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30709 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30709 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30709 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30710 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30710 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30710 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30711 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30711 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30711 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30712 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30712 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30712 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30713 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30713 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30713 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30714 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30714 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30714 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30715 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30715 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30715 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30716 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30716 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30716 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30717 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30717 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30717 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30718 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30718 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30718 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30719 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30719 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30719 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30720 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30720 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30720 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30721 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30721 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30721 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30722 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30722 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30722 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30723 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30723 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30723 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30724 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30724 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30724 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30725 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30725 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30725 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30726 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30726 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30726 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30727 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30727 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30727 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30728 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30728 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30728 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30729 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30729 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30729 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30730 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30730 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30730 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30731 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30731 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30731 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30732 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30732 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30732 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30733 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30733 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30733 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30734 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30734 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30735 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30735 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30735 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30736 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30736 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30736 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30737 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30737 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30737 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30738 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30738 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30738 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30739 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30739 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30739 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30740 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30740 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30740 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30741 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30741 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30742 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30742 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30742 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30743 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30743 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30743 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30744 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30744 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30744 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30745 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30745 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30745 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30746 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30746 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30746 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30747 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30747 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30747 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30748 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30748 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30748 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30749 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30749 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30750 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30750 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30750 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30751 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30751 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30751 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30752 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30752 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30752 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30753 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30753 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30753 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30754 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30754 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30754 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30755 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30755 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30755 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30756 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30756 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30756 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30757 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30757 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30757 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30758 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30758 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30758 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30759 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30759 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30759 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30760 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30760 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30760 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30761 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30761 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30761 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30762 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30762 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30763 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30763 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30763 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30764 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30764 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30764 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30765 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30765 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30765 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30766 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30766 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30766 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30767 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30767 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30767 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30768 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30768 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30768 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30769 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30769 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30769 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30770 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30770 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30770 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30771 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30771 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30771 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30772 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30772 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30772 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30773 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30773 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30773 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30774 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30774 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30774 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30775 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30775 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30775 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30776 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30776 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30776 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30777 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30777 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30777 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30778 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30778 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30778 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30779 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30779 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30779 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30780 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30780 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30780 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30781 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30781 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30781 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30782 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30782 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30782 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30783 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30784 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30784 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30784 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30785 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30786 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30786 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30787 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30787 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30787 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30788 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30788 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30788 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30789 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30789 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30789 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30790 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30790 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30790 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30791 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30791 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30791 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30792 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30792 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30792 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30793 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30793 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30793 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30794 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30794 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30794 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30795 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30795 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30796 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30796 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30796 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30797 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30798 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30798 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30798 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30799 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30799 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30799 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30800 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30800 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30800 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30801 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30801 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30801 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30802 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30802 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30802 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30803 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30803 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30804 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30804 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30805 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30805 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30806 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30806 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30807 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30807 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30808 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30808 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30808 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30809 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30809 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30809 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30810 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30810 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30810 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30811 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30811 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30811 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30812 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30812 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30812 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30813 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30813 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30813 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30814 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30814 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30814 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30815 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30815 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30815 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30816 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30816 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30816 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30817 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30817 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30817 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30818 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30818 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30818 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30819 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30819 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30819 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30820 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30820 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30820 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30821 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30821 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30821 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30822 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30822 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30822 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30823 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30823 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30823 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30824 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30824 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30824 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30825 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30825 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30825 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30826 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30826 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30826 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30827 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30827 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30827 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30828 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30828 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30828 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30829 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30829 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30829 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30830 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30830 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30831 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30831 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30831 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30832 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30832 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30832 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30833 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30833 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30833 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30834 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30834 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30834 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30835 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30835 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30836 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30836 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30836 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30837 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30837 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30837 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30838 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30839 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30839 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30839 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30840 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30840 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30840 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30841 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30841 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30841 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30842 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30842 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30842 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30843 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30844 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30845 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30845 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30845 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30846 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30846 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30846 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30847 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30847 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30847 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30848 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30848 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30848 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30849 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30849 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30849 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30850 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30850 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30850 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30851 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30851 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30851 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30852 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30852 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30853 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30853 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30854 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30854 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30854 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30855 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30855 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30855 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30856 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30856 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30856 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30857 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30857 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30857 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30858 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30858 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30858 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30859 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30860 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30860 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30860 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30861 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30862 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30863 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30863 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30864 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30864 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30864 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30865 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30865 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30865 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30866 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30866 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30866 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30867 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30867 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30867 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30868 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30868 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30868 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30869 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30869 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30869 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30870 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30870 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30870 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30871 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30871 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30871 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30872 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30872 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30873 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30873 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30873 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30874 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30874 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30874 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30875 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30875 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30875 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30876 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30876 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30876 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30877 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30877 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30877 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30878 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30878 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30878 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30879 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30879 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30879 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30880 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30880 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30880 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30881 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30881 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30881 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30882 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30882 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30882 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30883 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30883 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30883 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30884 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30884 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30884 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30885 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30885 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30885 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30886 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30886 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30886 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30887 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30887 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30887 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30888 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30888 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30888 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30889 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30889 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30889 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30890 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30890 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30890 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30891 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30891 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30891 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30892 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30892 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30892 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30893 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30893 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30893 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30894 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30894 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30894 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30895 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30895 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30895 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30896 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30896 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30896 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30897 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30897 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30897 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30898 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30899 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30899 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30899 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30900 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30900 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30900 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30901 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30901 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30901 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30902 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30902 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30902 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30903 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30903 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30903 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30904 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30904 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30904 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30905 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30905 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30905 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30906 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30906 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30906 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30907 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30907 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30907 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30908 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30908 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30908 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30909 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30909 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30909 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30910 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30910 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30910 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30911 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30911 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30911 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30912 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30912 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30912 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30913 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30913 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30913 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30914 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30914 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30914 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30915 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30915 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30915 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30916 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30916 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30916 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30917 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30917 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30917 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30918 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30918 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30918 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30919 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30919 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30919 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30920 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30920 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30920 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30921 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30921 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30921 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30922 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30922 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30922 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30923 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30923 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30923 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30924 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30925 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30925 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30925 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30926 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30926 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30927 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30927 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30927 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30928 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30928 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30928 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30929 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30929 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30929 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30930 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30930 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30930 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30931 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30932 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30932 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30932 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30933 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30933 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30933 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30934 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30934 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30934 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30935 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30935 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30935 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30936 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30936 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30936 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30937 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30937 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30937 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30938 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30938 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30939 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30939 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30939 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30940 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30940 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30941 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30941 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30942 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30942 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30942 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30943 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30943 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30943 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30944 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30944 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30944 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30945 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30945 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30945 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30946 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30946 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30946 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30947 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30947 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30947 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30948 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30948 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30948 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30949 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30949 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30949 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30950 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30950 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30950 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30951 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30951 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30951 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30952 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30952 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30952 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30953 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30953 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30953 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30954 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30954 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30954 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30955 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30955 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30955 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30956 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30956 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30956 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30957 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30957 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30957 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30958 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30958 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30958 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30959 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30959 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30959 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30960 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30960 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30961 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30961 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30961 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30962 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30962 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30962 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30963 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30963 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30963 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30964 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30964 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30964 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30965 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30965 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30966 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30966 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30967 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30967 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30967 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30968 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30968 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30968 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30969 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30969 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30969 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30970 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30970 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30970 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30971 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30971 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30972 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30972 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30972 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30973 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30973 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30973 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30974 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30974 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30974 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30975 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30975 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30975 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30976 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30976 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30976 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30977 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30977 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30977 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30978 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30978 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30978 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30979 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30979 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30979 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30980 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30980 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30981 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30981 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30981 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30982 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30982 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30983 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30983 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30983 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30984 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30984 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30984 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30985 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30985 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30985 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30986 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30986 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30986 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30987 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30987 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30987 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30988 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30988 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30988 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30989 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30989 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30990 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30991 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30991 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30991 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30992 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30992 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30992 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30993 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30993 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30993 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30994 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30994 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30994 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30995 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30995 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30995 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30996 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30996 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30996 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30997 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30997 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30997 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30998 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30998 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30998 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30999 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30999 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 30999 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31000 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31000 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31000 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31001 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31001 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31001 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31002 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31002 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31002 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31003 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31003 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31003 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31004 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31004 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31005 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31005 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31005 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31006 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31006 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31006 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31007 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31007 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31007 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31008 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31008 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31008 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31009 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31009 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31009 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31010 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31010 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31010 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31011 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31011 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31011 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31012 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31012 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31012 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31013 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31013 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31013 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31014 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31014 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31014 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31015 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31015 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31015 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31016 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31016 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31016 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31017 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31017 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31017 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31018 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31018 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31018 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31019 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31019 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31019 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31020 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31020 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31020 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31021 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31021 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31021 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31022 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31022 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31022 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31023 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31023 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31023 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31024 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31024 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31024 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31025 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31026 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31026 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31026 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31027 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31028 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31029 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31029 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31029 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31030 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31030 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31030 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31031 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31031 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31031 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31032 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31032 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31032 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31033 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31033 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31033 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31034 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31034 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31034 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31035 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31035 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31035 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31036 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31036 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31036 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31037 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31038 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31038 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31038 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31039 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31039 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31039 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31040 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31040 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31041 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31041 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31041 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31042 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31042 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31042 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31043 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31044 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31044 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31044 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31045 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31045 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31045 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31046 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31047 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31047 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31047 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31048 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31049 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31050 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31050 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31050 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 31051 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025290 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025306 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025307 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025307 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025307 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025307 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025311 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025311 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025311 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025311 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025312 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025312 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025312 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025312 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025313 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025313 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025313 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025313 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025314 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025314 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025314 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025314 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025315 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025315 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025315 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025315 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025316 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025316 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025316 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025316 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025317 AND [Standard_Level] = 'H' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025317 AND [Standard_Level] = 'L' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025317 AND [Standard_Level] = 'M' AND [Level_Type] = 'NST'
DELETE FROM [dbo].[REQUIREMENT_LEVELS] WHERE [Requirement_Id] = 1025317 AND [Standard_Level] = 'VH' AND [Level_Type] = 'NST'
PRINT(N'Operation applied to 2657 rows out of 2657')

PRINT(N'Delete rows from [dbo].[NEW_QUESTION]')
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003383
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003384
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003385
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003386
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003387
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003388
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003389
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003390
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003391
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003392
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003393
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003394
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003395
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003396
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003397
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003398
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003399
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003400
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003401
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003402
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003403
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003404
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003405
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003406
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003407
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003408
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003409
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003410
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003411
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003412
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003413
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003414
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003415
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003416
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003417
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003418
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003419
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003420
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003421
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003422
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003423
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003424
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003425
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003426
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003427
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003428
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003429
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003430
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003431
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003432
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003433
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003434
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003435
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003436
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003437
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003438
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003439
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003440
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003441
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003442
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003443
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003444
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003445
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003446
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003447
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003448
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003449
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003450
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003451
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003452
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003453
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003454
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003455
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003456
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003457
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003458
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003459
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003460
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003461
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003462
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003463
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003464
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003465
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003466
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003467
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003468
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003469
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003470
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003471
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003472
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003473
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003474
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003475
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003476
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003477
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003478
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003479
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003480
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003481
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003482
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003483
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003484
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003485
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003486
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003487
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003488
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003489
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003490
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003491
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003492
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003493
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003494
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003495
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003496
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003497
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003498
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003499
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003500
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003501
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003502
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003503
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003504
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003505
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003506
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003507
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003508
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003509
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003510
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003511
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003512
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003513
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003514
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003515
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003516
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003517
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003518
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003519
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003520
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003521
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003522
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003523
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003524
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003525
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003526
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003527
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003528
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003529
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003530
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003531
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003532
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003533
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003534
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003535
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003536
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003537
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003538
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003539
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003540
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003541
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003542
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003543
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003544
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003545
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003546
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003547
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003548
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003549
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003550
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003551
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003552
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003553
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003554
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003555
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003556
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003557
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003558
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003559
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003560
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003561
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003562
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003563
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003564
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003565
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003566
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003567
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003568
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003569
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003570
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003571
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003572
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003573
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003574
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003575
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003576
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003577
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003578
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003579
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003580
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003581
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003582
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003583
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003584
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003585
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003586
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003587
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003588
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003589
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003590
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003591
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003592
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003593
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003594
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003595
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003596
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003597
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003598
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003599
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003600
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003601
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003602
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003603
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003604
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003605
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003606
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003607
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003608
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003609
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003610
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003611
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003612
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003613
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003614
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003615
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003616
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003617
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003618
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003619
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003620
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003621
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003622
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003623
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003624
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003625
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003626
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003627
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003628
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003629
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003630
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003631
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003632
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003633
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003634
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003635
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003636
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003637
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003638
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003639
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003640
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003641
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003642
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003643
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003644
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003645
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003646
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003647
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003648
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003649
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003650
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003651
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003652
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003653
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003654
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003655
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003656
DELETE FROM [dbo].[NEW_QUESTION] WHERE [Question_Id] = 1003657
PRINT(N'Operation applied to 275 rows out of 275')

PRINT(N'Delete rows from [dbo].[NEW_REQUIREMENT]')
DELETE FROM [dbo].[NEW_REQUIREMENT] WHERE [Requirement_Id] = 1008045
DELETE FROM [dbo].[NEW_REQUIREMENT] WHERE [Requirement_Id] = 1008046
DELETE FROM [dbo].[NEW_REQUIREMENT] WHERE [Requirement_Id] = 1025290
DELETE FROM [dbo].[NEW_REQUIREMENT] WHERE [Requirement_Id] = 1025306
DELETE FROM [dbo].[NEW_REQUIREMENT] WHERE [Requirement_Id] = 1025307
DELETE FROM [dbo].[NEW_REQUIREMENT] WHERE [Requirement_Id] = 1025311
DELETE FROM [dbo].[NEW_REQUIREMENT] WHERE [Requirement_Id] = 1025312
DELETE FROM [dbo].[NEW_REQUIREMENT] WHERE [Requirement_Id] = 1025313
DELETE FROM [dbo].[NEW_REQUIREMENT] WHERE [Requirement_Id] = 1025314
DELETE FROM [dbo].[NEW_REQUIREMENT] WHERE [Requirement_Id] = 1025315
DELETE FROM [dbo].[NEW_REQUIREMENT] WHERE [Requirement_Id] = 1025316
DELETE FROM [dbo].[NEW_REQUIREMENT] WHERE [Requirement_Id] = 1025317
PRINT(N'Operation applied to 12 rows out of 12')

PRINT(N'Delete rows from [dbo].[GEN_FILE]')
DELETE FROM [dbo].[GEN_FILE] WHERE [Gen_File_Id] = 5062
DELETE FROM [dbo].[GEN_FILE] WHERE [Gen_File_Id] = 5064
PRINT(N'Operation applied to 2 rows out of 2')

PRINT(N'Update rows in [dbo].[NEW_QUESTION_SETS]')
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17037 WHERE [New_Question_Set_Id] = 49998
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17038 WHERE [New_Question_Set_Id] = 49999
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17039 WHERE [New_Question_Set_Id] = 50000
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17040 WHERE [New_Question_Set_Id] = 50001
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17041 WHERE [New_Question_Set_Id] = 50002
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17042 WHERE [New_Question_Set_Id] = 50003
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17043 WHERE [New_Question_Set_Id] = 50004
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17046 WHERE [New_Question_Set_Id] = 50007
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17047 WHERE [New_Question_Set_Id] = 50008
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17048 WHERE [New_Question_Set_Id] = 50009
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17049 WHERE [New_Question_Set_Id] = 50010
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17050 WHERE [New_Question_Set_Id] = 50011
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17051 WHERE [New_Question_Set_Id] = 50012
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17052 WHERE [New_Question_Set_Id] = 50013
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17057 WHERE [New_Question_Set_Id] = 50021
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17058 WHERE [New_Question_Set_Id] = 50024
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17059 WHERE [New_Question_Set_Id] = 50037
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17060 WHERE [New_Question_Set_Id] = 50040
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17061 WHERE [New_Question_Set_Id] = 50041
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17062 WHERE [New_Question_Set_Id] = 50042
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17063 WHERE [New_Question_Set_Id] = 50051
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17064 WHERE [New_Question_Set_Id] = 50092
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17065 WHERE [New_Question_Set_Id] = 50093
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17066 WHERE [New_Question_Set_Id] = 50105
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17067 WHERE [New_Question_Set_Id] = 50125
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17068 WHERE [New_Question_Set_Id] = 50126
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17069 WHERE [New_Question_Set_Id] = 50127
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17070 WHERE [New_Question_Set_Id] = 50128
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17071 WHERE [New_Question_Set_Id] = 50129
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17072 WHERE [New_Question_Set_Id] = 50130
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17073 WHERE [New_Question_Set_Id] = 50131
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17074 WHERE [New_Question_Set_Id] = 50132
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17075 WHERE [New_Question_Set_Id] = 50133
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17076 WHERE [New_Question_Set_Id] = 50134
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17077 WHERE [New_Question_Set_Id] = 50135
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17078 WHERE [New_Question_Set_Id] = 50136
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17079 WHERE [New_Question_Set_Id] = 50137
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17080 WHERE [New_Question_Set_Id] = 50138
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17081 WHERE [New_Question_Set_Id] = 50158
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17082 WHERE [New_Question_Set_Id] = 50193
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17083 WHERE [New_Question_Set_Id] = 50217
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17084 WHERE [New_Question_Set_Id] = 50244
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17085 WHERE [New_Question_Set_Id] = 50273
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17086 WHERE [New_Question_Set_Id] = 50274
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17087 WHERE [New_Question_Set_Id] = 50277
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17088 WHERE [New_Question_Set_Id] = 50279
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17089 WHERE [New_Question_Set_Id] = 50280
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17090 WHERE [New_Question_Set_Id] = 50281
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17091 WHERE [New_Question_Set_Id] = 50283
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17092 WHERE [New_Question_Set_Id] = 50284
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17093 WHERE [New_Question_Set_Id] = 50290
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17094 WHERE [New_Question_Set_Id] = 50292
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17095 WHERE [New_Question_Set_Id] = 50304
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17096 WHERE [New_Question_Set_Id] = 50316
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17097 WHERE [New_Question_Set_Id] = 50337
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17098 WHERE [New_Question_Set_Id] = 50367
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17099 WHERE [New_Question_Set_Id] = 50368
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17100 WHERE [New_Question_Set_Id] = 50370
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17101 WHERE [New_Question_Set_Id] = 50372
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17102 WHERE [New_Question_Set_Id] = 50381
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17103 WHERE [New_Question_Set_Id] = 50400
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17104 WHERE [New_Question_Set_Id] = 50427
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17105 WHERE [New_Question_Set_Id] = 50428
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17106 WHERE [New_Question_Set_Id] = 50434
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17107 WHERE [New_Question_Set_Id] = 50435
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17108 WHERE [New_Question_Set_Id] = 50491
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17109 WHERE [New_Question_Set_Id] = 50497
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17110 WHERE [New_Question_Set_Id] = 50498
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17111 WHERE [New_Question_Set_Id] = 50499
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17112 WHERE [New_Question_Set_Id] = 50505
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17113 WHERE [New_Question_Set_Id] = 50531
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17114 WHERE [New_Question_Set_Id] = 50553
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17115 WHERE [New_Question_Set_Id] = 50563
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17116 WHERE [New_Question_Set_Id] = 50577
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17117 WHERE [New_Question_Set_Id] = 50654
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17118 WHERE [New_Question_Set_Id] = 50687
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17119 WHERE [New_Question_Set_Id] = 50688
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17120 WHERE [New_Question_Set_Id] = 50696
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17121 WHERE [New_Question_Set_Id] = 50697
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17122 WHERE [New_Question_Set_Id] = 50721
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17123 WHERE [New_Question_Set_Id] = 50724
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17124 WHERE [New_Question_Set_Id] = 50747
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17125 WHERE [New_Question_Set_Id] = 50749
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17126 WHERE [New_Question_Set_Id] = 50750
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17127 WHERE [New_Question_Set_Id] = 50751
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17128 WHERE [New_Question_Set_Id] = 50752
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17129 WHERE [New_Question_Set_Id] = 50797
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17130 WHERE [New_Question_Set_Id] = 50836
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17131 WHERE [New_Question_Set_Id] = 50889
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17132 WHERE [New_Question_Set_Id] = 50899
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17133 WHERE [New_Question_Set_Id] = 50903
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17134 WHERE [New_Question_Set_Id] = 50904
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17135 WHERE [New_Question_Set_Id] = 50922
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17136 WHERE [New_Question_Set_Id] = 50955
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17137 WHERE [New_Question_Set_Id] = 50986
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17138 WHERE [New_Question_Set_Id] = 51007
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17139 WHERE [New_Question_Set_Id] = 51008
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17140 WHERE [New_Question_Set_Id] = 51009
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17141 WHERE [New_Question_Set_Id] = 51010
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17142 WHERE [New_Question_Set_Id] = 51011
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17143 WHERE [New_Question_Set_Id] = 51012
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17144 WHERE [New_Question_Set_Id] = 51013
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17146 WHERE [New_Question_Set_Id] = 51018
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17147 WHERE [New_Question_Set_Id] = 51020
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17148 WHERE [New_Question_Set_Id] = 51022
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17149 WHERE [New_Question_Set_Id] = 51023
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17053 WHERE [New_Question_Set_Id] = 51024
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17150 WHERE [New_Question_Set_Id] = 51030
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17151 WHERE [New_Question_Set_Id] = 51031
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17152 WHERE [New_Question_Set_Id] = 51032
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17153 WHERE [New_Question_Set_Id] = 51033
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17154 WHERE [New_Question_Set_Id] = 51034
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17155 WHERE [New_Question_Set_Id] = 51036
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17156 WHERE [New_Question_Set_Id] = 51037
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17157 WHERE [New_Question_Set_Id] = 51046
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17158 WHERE [New_Question_Set_Id] = 51047
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17159 WHERE [New_Question_Set_Id] = 51048
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17160 WHERE [New_Question_Set_Id] = 51049
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17161 WHERE [New_Question_Set_Id] = 51050
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17162 WHERE [New_Question_Set_Id] = 51055
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17163 WHERE [New_Question_Set_Id] = 51056
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17164 WHERE [New_Question_Set_Id] = 51060
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17165 WHERE [New_Question_Set_Id] = 51063
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17054 WHERE [New_Question_Set_Id] = 51064
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17055 WHERE [New_Question_Set_Id] = 51065
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17056 WHERE [New_Question_Set_Id] = 51066
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17166 WHERE [New_Question_Set_Id] = 51282
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17167 WHERE [New_Question_Set_Id] = 51326
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17168 WHERE [New_Question_Set_Id] = 51327
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17169 WHERE [New_Question_Set_Id] = 51333
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17170 WHERE [New_Question_Set_Id] = 51343
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17171 WHERE [New_Question_Set_Id] = 51344
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17172 WHERE [New_Question_Set_Id] = 51345
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17173 WHERE [New_Question_Set_Id] = 51346
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17174 WHERE [New_Question_Set_Id] = 51355
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17175 WHERE [New_Question_Set_Id] = 51358
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17176 WHERE [New_Question_Set_Id] = 51384
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17177 WHERE [New_Question_Set_Id] = 51401
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17178 WHERE [New_Question_Set_Id] = 51409
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17179 WHERE [New_Question_Set_Id] = 51430
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17180 WHERE [New_Question_Set_Id] = 51435
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17181 WHERE [New_Question_Set_Id] = 51436
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17182 WHERE [New_Question_Set_Id] = 51437
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17183 WHERE [New_Question_Set_Id] = 51438
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17184 WHERE [New_Question_Set_Id] = 51439
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17185 WHERE [New_Question_Set_Id] = 51440
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17186 WHERE [New_Question_Set_Id] = 51441
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17187 WHERE [New_Question_Set_Id] = 51484
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17188 WHERE [New_Question_Set_Id] = 51513
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17189 WHERE [New_Question_Set_Id] = 51544
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17190 WHERE [New_Question_Set_Id] = 51554
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17191 WHERE [New_Question_Set_Id] = 51561
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17192 WHERE [New_Question_Set_Id] = 51570
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17193 WHERE [New_Question_Set_Id] = 51571
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17194 WHERE [New_Question_Set_Id] = 51572
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17195 WHERE [New_Question_Set_Id] = 51573
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17196 WHERE [New_Question_Set_Id] = 51574
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17197 WHERE [New_Question_Set_Id] = 51578
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17198 WHERE [New_Question_Set_Id] = 51579
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17199 WHERE [New_Question_Set_Id] = 51580
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17200 WHERE [New_Question_Set_Id] = 51581
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17201 WHERE [New_Question_Set_Id] = 51583
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17202 WHERE [New_Question_Set_Id] = 51585
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17203 WHERE [New_Question_Set_Id] = 51586
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17204 WHERE [New_Question_Set_Id] = 51595
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17205 WHERE [New_Question_Set_Id] = 51596
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17206 WHERE [New_Question_Set_Id] = 51597
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17207 WHERE [New_Question_Set_Id] = 51598
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17208 WHERE [New_Question_Set_Id] = 51599
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17209 WHERE [New_Question_Set_Id] = 51600
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17210 WHERE [New_Question_Set_Id] = 51601
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17211 WHERE [New_Question_Set_Id] = 51602
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17212 WHERE [New_Question_Set_Id] = 51603
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17213 WHERE [New_Question_Set_Id] = 51604
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17214 WHERE [New_Question_Set_Id] = 51611
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17215 WHERE [New_Question_Set_Id] = 51614
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17216 WHERE [New_Question_Set_Id] = 51616
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17217 WHERE [New_Question_Set_Id] = 51617
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17218 WHERE [New_Question_Set_Id] = 51633
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17219 WHERE [New_Question_Set_Id] = 51817
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17220 WHERE [New_Question_Set_Id] = 51818
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17221 WHERE [New_Question_Set_Id] = 51819
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17222 WHERE [New_Question_Set_Id] = 51820
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17223 WHERE [New_Question_Set_Id] = 51821
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17224 WHERE [New_Question_Set_Id] = 51822
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17225 WHERE [New_Question_Set_Id] = 51823
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17226 WHERE [New_Question_Set_Id] = 51824
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17227 WHERE [New_Question_Set_Id] = 51825
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17228 WHERE [New_Question_Set_Id] = 51826
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17229 WHERE [New_Question_Set_Id] = 51827
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17230 WHERE [New_Question_Set_Id] = 51828
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17231 WHERE [New_Question_Set_Id] = 51829
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17232 WHERE [New_Question_Set_Id] = 51830
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17233 WHERE [New_Question_Set_Id] = 51831
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17234 WHERE [New_Question_Set_Id] = 51836
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17235 WHERE [New_Question_Set_Id] = 51837
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17236 WHERE [New_Question_Set_Id] = 51838
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17237 WHERE [New_Question_Set_Id] = 51839
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17238 WHERE [New_Question_Set_Id] = 51840
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17239 WHERE [New_Question_Set_Id] = 51841
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17240 WHERE [New_Question_Set_Id] = 51842
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17241 WHERE [New_Question_Set_Id] = 51843
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17242 WHERE [New_Question_Set_Id] = 51846
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17243 WHERE [New_Question_Set_Id] = 51847
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17244 WHERE [New_Question_Set_Id] = 51848
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17245 WHERE [New_Question_Set_Id] = 51849
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17246 WHERE [New_Question_Set_Id] = 51851
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17247 WHERE [New_Question_Set_Id] = 51852
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17248 WHERE [New_Question_Set_Id] = 51853
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17249 WHERE [New_Question_Set_Id] = 51854
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17250 WHERE [New_Question_Set_Id] = 51855
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17251 WHERE [New_Question_Set_Id] = 51856
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17252 WHERE [New_Question_Set_Id] = 51857
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17253 WHERE [New_Question_Set_Id] = 51858
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17254 WHERE [New_Question_Set_Id] = 51859
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17255 WHERE [New_Question_Set_Id] = 51860
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17256 WHERE [New_Question_Set_Id] = 51861
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17257 WHERE [New_Question_Set_Id] = 51862
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17258 WHERE [New_Question_Set_Id] = 51863
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17259 WHERE [New_Question_Set_Id] = 51864
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17260 WHERE [New_Question_Set_Id] = 51868
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17261 WHERE [New_Question_Set_Id] = 51869
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17262 WHERE [New_Question_Set_Id] = 51870
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17263 WHERE [New_Question_Set_Id] = 51871
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17264 WHERE [New_Question_Set_Id] = 51872
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17265 WHERE [New_Question_Set_Id] = 51873
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17266 WHERE [New_Question_Set_Id] = 51874
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17267 WHERE [New_Question_Set_Id] = 51875
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17268 WHERE [New_Question_Set_Id] = 51876
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17269 WHERE [New_Question_Set_Id] = 51877
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17270 WHERE [New_Question_Set_Id] = 51878
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17271 WHERE [New_Question_Set_Id] = 51879
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17272 WHERE [New_Question_Set_Id] = 51880
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17273 WHERE [New_Question_Set_Id] = 51881
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17274 WHERE [New_Question_Set_Id] = 51882
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17275 WHERE [New_Question_Set_Id] = 51883
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17276 WHERE [New_Question_Set_Id] = 51884
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17277 WHERE [New_Question_Set_Id] = 51885
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17278 WHERE [New_Question_Set_Id] = 51886
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17279 WHERE [New_Question_Set_Id] = 51887
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17280 WHERE [New_Question_Set_Id] = 51888
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17281 WHERE [New_Question_Set_Id] = 51889
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17282 WHERE [New_Question_Set_Id] = 51890
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17283 WHERE [New_Question_Set_Id] = 51891
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17284 WHERE [New_Question_Set_Id] = 51892
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17285 WHERE [New_Question_Set_Id] = 51893
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17286 WHERE [New_Question_Set_Id] = 51894
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17287 WHERE [New_Question_Set_Id] = 51895
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17288 WHERE [New_Question_Set_Id] = 51896
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17289 WHERE [New_Question_Set_Id] = 51897
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17290 WHERE [New_Question_Set_Id] = 51898
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17291 WHERE [New_Question_Set_Id] = 51899
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17292 WHERE [New_Question_Set_Id] = 51900
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17293 WHERE [New_Question_Set_Id] = 51901
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17294 WHERE [New_Question_Set_Id] = 51902
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17295 WHERE [New_Question_Set_Id] = 51903
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17296 WHERE [New_Question_Set_Id] = 51904
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17297 WHERE [New_Question_Set_Id] = 51905
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17298 WHERE [New_Question_Set_Id] = 51906
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17299 WHERE [New_Question_Set_Id] = 51907
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17300 WHERE [New_Question_Set_Id] = 51908
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17301 WHERE [New_Question_Set_Id] = 51909
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17302 WHERE [New_Question_Set_Id] = 51910
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17303 WHERE [New_Question_Set_Id] = 51911
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17304 WHERE [New_Question_Set_Id] = 51912
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17305 WHERE [New_Question_Set_Id] = 51913
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17306 WHERE [New_Question_Set_Id] = 51915
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17307 WHERE [New_Question_Set_Id] = 51916
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17308 WHERE [New_Question_Set_Id] = 51917
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17309 WHERE [New_Question_Set_Id] = 51918
UPDATE [dbo].[NEW_QUESTION_SETS] SET [Question_Id]=17310 WHERE [New_Question_Set_Id] = 51919
PRINT(N'Operation applied to 271 rows out of 271')

PRINT(N'Delete and re-insert rows in [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] due to identity row modification')
UPDATE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] SET [Sub_Heading_Question_Description]=N'Does the organization have a privacy transparency policy?' WHERE [Question_Group_Heading_Id] = 54 AND [Universal_Sub_Category_Id] = 1575 AND [Set_Name] = 'C800_53_R5_V2'
UPDATE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] SET [Sub_Heading_Question_Description]=N'Does the organization issue system of records notices?' WHERE [Question_Group_Heading_Id] = 54 AND [Universal_Sub_Category_Id] = 6366 AND [Set_Name] = 'C800_53_R5_V2'
UPDATE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] SET [Sub_Heading_Question_Description]=N'Does the organization have authority to process personally identifiable information?' WHERE [Question_Group_Heading_Id] = 54 AND [Universal_Sub_Category_Id] = 8651 AND [Set_Name] = 'C800_53_R5_V2'
UPDATE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] SET [Sub_Heading_Question_Description]=N'Does the organization identify the purpose for which PII is processed?' WHERE [Question_Group_Heading_Id] = 54 AND [Universal_Sub_Category_Id] = 8652 AND [Set_Name] = 'C800_53_R5_V2'
UPDATE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] SET [Sub_Heading_Question_Description]=N'Does the organization categorize PII?' WHERE [Question_Group_Heading_Id] = 54 AND [Universal_Sub_Category_Id] = 8653 AND [Set_Name] = 'C800_53_R5_V2'
UPDATE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] SET [Sub_Heading_Question_Description]=N'Does your organization have a literacy training and awareness program?' WHERE [Question_Group_Heading_Id] = 63 AND [Universal_Sub_Category_Id] = 8623 AND [Set_Name] = 'C800_53_R5_V2'
UPDATE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] SET [Sub_Heading_Question_Description]=N'Does the organization develop and document organization-wide policies and procedures for PII?' WHERE [Question_Group_Heading_Id] = 69 AND [Universal_Sub_Category_Id] = 8644 AND [Set_Name] = 'C800_53_R5_V2'
UPDATE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] SET [Sub_Heading_Question_Description]=N'Does the organization perform risk assessments?' WHERE [Question_Group_Heading_Id] = 70 AND [Universal_Sub_Category_Id] = 1575 AND [Set_Name] = 'C800_53_R5_V2'
UPDATE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] SET [Sub_Heading_Question_Description]=N'Does the organization perform cyber-threat hunting?' WHERE [Question_Group_Heading_Id] = 70 AND [Universal_Sub_Category_Id] = 8656 AND [Set_Name] = 'C800_53_R5_V2'
UPDATE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] SET [Sub_Heading_Question_Description]=N'Does the organization have a PII quality operations validation and review program?' WHERE [Question_Group_Heading_Id] = 73 AND [Universal_Sub_Category_Id] = 8669 AND [Set_Name] = 'C800_53_R5_V2'
UPDATE [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] SET [Sub_Heading_Question_Description]=N'Does the organization have supply chain related policies and procedures?' WHERE [Question_Group_Heading_Id] = 82 AND [Universal_Sub_Category_Id] = 8556 AND [Set_Name] = 'C800_53_R5_V2'
PRINT(N'Operation applied to 11 rows out of 11')

PRINT(N'Update rows in [dbo].[MATURITY_QUESTIONS]')
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Authorized Access Control' WHERE [Mat_Question_Id] = 4785
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Risk Assessments' WHERE [Mat_Question_Id] = 4786
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Category]='Media Protection', [Sub_Category]='Media Protection', [Short_Name]='Protect Backups' WHERE [Mat_Question_Id] = 4788
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Personnel Actions' WHERE [Mat_Question_Id] = 4790
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Screen Individuals' WHERE [Mat_Question_Id] = 4791
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Alternative Work Sites' WHERE [Mat_Question_Id] = 4792
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Monitor Facility' WHERE [Mat_Question_Id] = 4793
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Manage Physical Access' WHERE [Mat_Question_Id] = 4794
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Physical Access Logs' WHERE [Mat_Question_Id] = 4795
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Escort Visitors' WHERE [Mat_Question_Id] = 4796
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Limit Physical Access' WHERE [Mat_Question_Id] = 4797
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Portable Storage Encryption' WHERE [Mat_Question_Id] = 4798
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Vulnerability Scan' WHERE [Mat_Question_Id] = 4799
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Media Accountability' WHERE [Mat_Question_Id] = 4800
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Media Markings' WHERE [Mat_Question_Id] = 4801
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Removable Media' WHERE [Mat_Question_Id] = 4802
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Media Access' WHERE [Mat_Question_Id] = 4803
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Media Protection' WHERE [Mat_Question_Id] = 4804
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Media Disposal' WHERE [Mat_Question_Id] = 4805
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Media Inspection' WHERE [Mat_Question_Id] = 4806
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Equipment Sanitization' WHERE [Mat_Question_Id] = 4807
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Maintenance Personnel' WHERE [Mat_Question_Id] = 4808
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Nonlocal Maintenance' WHERE [Mat_Question_Id] = 4809
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='System Maintenance Control' WHERE [Mat_Question_Id] = 4810
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Perform Maintenance' WHERE [Mat_Question_Id] = 4811
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Incident Response Testing' WHERE [Mat_Question_Id] = 4812
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Incident Reporting' WHERE [Mat_Question_Id] = 4813
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Shared Media' WHERE [Mat_Question_Id] = 4814
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Vulnerability Remediation' WHERE [Mat_Question_Id] = 4815
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Identify Unauthorized Use' WHERE [Mat_Question_Id] = 4819
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Monitor Communications for Attacks' WHERE [Mat_Question_Id] = 4820
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Security Alerts & Advisories' WHERE [Mat_Question_Id] = 4821
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='System & File Scanning' WHERE [Mat_Question_Id] = 4822
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Update Malicious Code Protection' WHERE [Mat_Question_Id] = 4823
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Malicious Code Protection' WHERE [Mat_Question_Id] = 4824
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Flaw Remediation' WHERE [Mat_Question_Id] = 4825
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Data at Rest' WHERE [Mat_Question_Id] = 4828
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Communications Authenticity' WHERE [Mat_Question_Id] = 4829
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Voice over Internet Protocol' WHERE [Mat_Question_Id] = 4830
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Mobile Code' WHERE [Mat_Question_Id] = 4831
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Key Management' WHERE [Mat_Question_Id] = 4832
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Connections Termination' WHERE [Mat_Question_Id] = 4833
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Data in Transit' WHERE [Mat_Question_Id] = 4834
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Split Tunneling' WHERE [Mat_Question_Id] = 4835
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Network Communication by Exception' WHERE [Mat_Question_Id] = 4836
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Shared Resource Control' WHERE [Mat_Question_Id] = 4837
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Role Separation' WHERE [Mat_Question_Id] = 4838
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Security Engineering' WHERE [Mat_Question_Id] = 4839
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='CUI Encryption' WHERE [Mat_Question_Id] = 4840
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Collaborative Device Control' WHERE [Mat_Question_Id] = 4842
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Public-Access System Separation' WHERE [Mat_Question_Id] = 4843
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Boundary Protection' WHERE [Mat_Question_Id] = 4844
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Authoritative Time Source' WHERE [Mat_Question_Id] = 4852
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='System Auditing' WHERE [Mat_Question_Id] = 4853
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='User Accountability' WHERE [Mat_Question_Id] = 4854
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Insider Threat Awareness' WHERE [Mat_Question_Id] = 4855
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Role-Based Training' WHERE [Mat_Question_Id] = 4856
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Role-Based Risk Awareness' WHERE [Mat_Question_Id] = 4857
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Encrypt CUI on Mobile' WHERE [Mat_Question_Id] = 4859
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Privileged Remote Access' WHERE [Mat_Question_Id] = 4860
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Mobile Device Connection' WHERE [Mat_Question_Id] = 4861
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Session Termination' WHERE [Mat_Question_Id] = 4862
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Privileged Functions' WHERE [Mat_Question_Id] = 4863
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Separation of Duties' WHERE [Mat_Question_Id] = 4864
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Remote Access Confidentiality' WHERE [Mat_Question_Id] = 4865
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Wireless Access Protection' WHERE [Mat_Question_Id] = 4866
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Control CUI Flow' WHERE [Mat_Question_Id] = 4867
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Remote Access Routing' WHERE [Mat_Question_Id] = 4868
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Control Remote Access' WHERE [Mat_Question_Id] = 4869
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Wireless Access Authorization' WHERE [Mat_Question_Id] = 4870
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Session Lock' WHERE [Mat_Question_Id] = 4871
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Unsuccessful Logon Attempts' WHERE [Mat_Question_Id] = 4872
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Non-Privileged Account Use' WHERE [Mat_Question_Id] = 4873
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Least Privilege' WHERE [Mat_Question_Id] = 4874
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Portable Storage Use' WHERE [Mat_Question_Id] = 4875
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Privacy & Security Notices' WHERE [Mat_Question_Id] = 4876
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Control Public Information' WHERE [Mat_Question_Id] = 4877
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='External Connections' WHERE [Mat_Question_Id] = 4878
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Transaction & Function Control' WHERE [Mat_Question_Id] = 4879
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Event Review' WHERE [Mat_Question_Id] = 4880
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Audit Failure Alerting' WHERE [Mat_Question_Id] = 4882
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Audit Protection' WHERE [Mat_Question_Id] = 4883
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Incident Handling' WHERE [Mat_Question_Id] = 4884
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Identifier Handling' WHERE [Mat_Question_Id] = 4885
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Identifier Reuse' WHERE [Mat_Question_Id] = 4886
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Replay-Resistant Authentication' WHERE [Mat_Question_Id] = 4887
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Multifactor Authentication' WHERE [Mat_Question_Id] = 4888
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Obscure Feedback' WHERE [Mat_Question_Id] = 4889
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Cryptographically-Protected Passwords' WHERE [Mat_Question_Id] = 4890
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Temporary Passwords' WHERE [Mat_Question_Id] = 4891
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Password Reuse' WHERE [Mat_Question_Id] = 4892
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Password Complexity' WHERE [Mat_Question_Id] = 4893
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Authentication' WHERE [Mat_Question_Id] = 4894
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Identification' WHERE [Mat_Question_Id] = 4895
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Application Execution Policy' WHERE [Mat_Question_Id] = 4896
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Nonessential Functionality' WHERE [Mat_Question_Id] = 4897
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Access Restrictions for Change' WHERE [Mat_Question_Id] = 4898
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Security Impact Analysis' WHERE [Mat_Question_Id] = 4899
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='System Change Management' WHERE [Mat_Question_Id] = 4900
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Security Configuration Enforcement' WHERE [Mat_Question_Id] = 4901
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='User-Installed Software' WHERE [Mat_Question_Id] = 4902
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Least Functionality' WHERE [Mat_Question_Id] = 4903
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='System Baselining' WHERE [Mat_Question_Id] = 4904
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Security Control Monitoring' WHERE [Mat_Question_Id] = 4906
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Plan of Action' WHERE [Mat_Question_Id] = 4907
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Security Control Assessment' WHERE [Mat_Question_Id] = 4908
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='System Security Plan' WHERE [Mat_Question_Id] = 4909
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Reduction & Reporting' WHERE [Mat_Question_Id] = 4910
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Audit Correlation' WHERE [Mat_Question_Id] = 4911
UPDATE [dbo].[MATURITY_QUESTIONS] SET [Short_Name]='Audit Management' WHERE [Mat_Question_Id] = 4912
PRINT(N'Operation applied to 110 rows out of 110')

PRINT(N'Add row to [dbo].[DIAGRAM_TEMPLATES]')
SET IDENTITY_INSERT [dbo].[DIAGRAM_TEMPLATES] ON
INSERT INTO [dbo].[DIAGRAM_TEMPLATES] ([Id], [Template_Name], [File_Name], [Is_Read_Only], [Is_Visible], [Diagram_Markup], [Image_Source]) VALUES (18, N'Emergency Management', N'DiagramTemplates\EmergencyManagement.csetd', 1, 1, '<mxGraphModel>
  <root>
    <mxCell id="0" />
    <mxCell id="1" value="Main Layer" parent="0" />
    <object Criticality="Low" zone="1" ZoneType="Other" SAL="High" label="Zone Core DMZ-High" internalLabel="Zone Core DMZ" id="UxTfs5nLP9km1SiU_4_t-107">
      <mxCell style="swimlane;zone=1;startSize=30;fillColor=#ece4d7;swimlaneFillColor=#f6f3ed;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="870" y="123" width="359" height="440" as="geometry" />
      </mxCell>
    </object>
    <object label="MPLS" internalLabel="MPLS" id="106">
      <mxCell style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#9673a6;strokeWidth=3;endArrow=none;labelBackgroundColor=#ffffff;fillColor=#e1d5e7;" parent="UxTfs5nLP9km1SiU_4_t-107" source="21" target="35" edge="1">
        <mxGeometry relative="1" as="geometry">
          <mxPoint x="141.5" y="117" as="sourcePoint" />
        </mxGeometry>
      </mxCell>
    </object>
    <mxCell id="cjdxwiZFUEl386gS18Un-139" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#d6b656;strokeWidth=7;endArrow=none;labelBackgroundColor=none;edgeStyle=isometricEdgeStyle;elbow=vertical;exitX=0;exitY=0.25;exitDx=0;exitDy=0;fillColor=#fff2cc;fontSize=11;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-142" target="35" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="141.5" y="327" as="sourcePoint" />
        <mxPoint x="59.53233354778013" y="201.21360000000004" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <object label="&amp;nbsp;" ComponentGuid="672a85a2-e7cd-4fbe-aab6-a166acf9e94e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="21">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="132.45249999999987" y="89.95079999999996" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="aee2e5d1-bf36-4630-87c9-7b55ced31283" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-28" id="cjdxwiZFUEl386gS18Un-142">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="132.45249999999987" y="335.95079999999996" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <object label="Zone Core Pair&lt;br&gt;" ComponentGuid="8e38f60e-bb96-444d-b5f8-c5c6400754e3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="" parent="3" id="cjdxwiZFUEl386gS18Un-147">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/router.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="199.65589999999997" y="87.21360000000004" width="60" height="25" as="geometry" />
      </mxCell>
    </object>
    <object label="Zone Core Pair&lt;br&gt;" ComponentGuid="7108598b-52a8-4942-8091-a7c46602d01c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="" parent="3" id="cjdxwiZFUEl386gS18Un-153">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/router.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=bottom;align=center;verticalAlign=top;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="199.65589999999997" y="333.71360000000004" width="60" height="25" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="051ef56a-0113-457d-b33b-87e29a78626d" Criticality="High" label="Zone Firewall Pair" internalLabel="FW-9" id="cjdxwiZFUEl386gS18Un-156">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/firewall.svg;fontSize=11;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;labelBackgroundColor=none;whiteSpace=wrap;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="290.5" y="74" width="60" height="51" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="71f10319-928c-49bd-ba84-cbc18b8d90c7" Criticality="High" label="Zone Firewall Pair" internalLabel="Zone Firewall Pair" id="cjdxwiZFUEl386gS18Un-158">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/firewall.svg;fontSize=11;labelBackgroundColor=none;whiteSpace=wrap;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="290.5" y="321" width="60" height="51" as="geometry" />
      </mxCell>
    </object>
    <object label="Mediation LAN" internalLabel="Mediation LAN" Security="Trusted" id="cjdxwiZFUEl386gS18Un-146">
      <mxCell style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#6c8ebf;labelBackgroundColor=none;fillColor=#dae8fc;strokeWidth=8;labelPosition=right;verticalLabelPosition=middle;align=left;verticalAlign=middle;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-142" target="21" edge="1">
        <mxGeometry relative="1" as="geometry">
          <mxPoint x="142.45249999999987" y="235.95080000000007" as="sourcePoint" />
          <mxPoint x="142.45249999999987" y="155.95080000000007" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </object>
    <mxCell id="cjdxwiZFUEl386gS18Un-152" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;labelBackgroundColor=none;endArrow=none;strokeColor=#808080;strokeWidth=1;fontSize=11;" parent="UxTfs5nLP9km1SiU_4_t-107" source="21" target="cjdxwiZFUEl386gS18Un-147" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="cjdxwiZFUEl386gS18Un-155" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;labelBackgroundColor=none;endArrow=none;strokeColor=#808080;strokeWidth=1;fontSize=11;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-142" target="cjdxwiZFUEl386gS18Un-153" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <object label="" internalLabel="" id="6nKIGXFCzWmfwkv6MnNh-109">
      <mxCell style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#6c8ebf;labelBackgroundColor=none;fillColor=#dae8fc;strokeWidth=8;labelPosition=right;verticalLabelPosition=middle;align=left;verticalAlign=middle;entryX=0.5;entryY=1;entryDx=0;entryDy=0;exitX=0.5;exitY=0;exitDx=0;exitDy=0;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-153" target="cjdxwiZFUEl386gS18Un-147" edge="1">
        <mxGeometry relative="1" as="geometry">
          <mxPoint x="238.5" y="287" as="sourcePoint" />
          <mxPoint x="248.5" y="141.5" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </object>
    <mxCell id="cjdxwiZFUEl386gS18Un-157" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;labelBackgroundColor=none;endArrow=none;strokeColor=#6C8EBF;strokeWidth=8;fontSize=11;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-147" target="cjdxwiZFUEl386gS18Un-156" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="cjdxwiZFUEl386gS18Un-159" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;labelBackgroundColor=none;endArrow=none;strokeColor=#6C8EBF;strokeWidth=8;fontSize=11;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-153" target="cjdxwiZFUEl386gS18Un-158" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <object label="" internalLabel="" id="cjdxwiZFUEl386gS18Un-160">
      <mxCell style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#6c8ebf;labelBackgroundColor=none;fillColor=#dae8fc;strokeWidth=8;labelPosition=right;verticalLabelPosition=middle;align=left;verticalAlign=middle;" parent="UxTfs5nLP9km1SiU_4_t-107" source="cjdxwiZFUEl386gS18Un-158" target="cjdxwiZFUEl386gS18Un-156" edge="1">
        <mxGeometry relative="1" as="geometry">
          <mxPoint x="320.5" y="307" as="sourcePoint" />
          <mxPoint x="341.5" y="147" as="targetPoint" />
        </mxGeometry>
      </mxCell>
    </object>
    <object label="Console Site Router" ComponentGuid="1bf065a7-cfb5-45cd-8458-500f8e01b9a3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="High" HostName="" parent="3" id="35">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/router.svg;labelBackgroundColor=none;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;" parent="UxTfs5nLP9km1SiU_4_t-107" vertex="1">
        <mxGeometry x="11.655899999999974" y="190.21360000000004" width="60" height="25" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="XH7oSB1Q3w3cp9QVCW1a-107" value="&lt;div style=&quot;text-align: left&quot;&gt;&lt;span&gt;Control Room Site - Customer Enterprise Network (CEN)&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left&quot;&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;Control Room CENs usually host Nice Recording, DSS Recording, Elite API and/or CADI Services.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left&quot;&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;Control Room CENs are typically &quot;stubs&quot; (CEN LAN), meaning that they are single, dedicated subnets that are created to only host specific service.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left&quot;&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left&quot;&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;The Control Room Firewall is a firewall that is installed at a console site to allow communications with outside networks. The firewall will be configured for &lt;/span&gt;&lt;span style=&quot;font-size: 12px ; font-weight: 400&quot;&gt;network&lt;/span&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;&amp;nbsp;address translation (NAT) mapping. The firewall will also be configured to only pass dispatch console related traffic to and from the customer network.&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left&quot;&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/div&gt;&lt;div style=&quot;text-align: left&quot;&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;Console Site LAN devices send all traffic to the Console Site Router. Traffic that is destined for the &lt;/span&gt;&lt;span style=&quot;font-size: 12px ; font-weight: 400&quot;&gt;Enterprise&lt;/span&gt;&lt;span style=&quot;font-weight: 400&quot;&gt;&amp;nbsp;CEN is sent to the firewall from the Console Site Router via a static route. All CEN hosts using these services need to be able to route to the dispatch site.&lt;/span&gt;&lt;/div&gt;" style="shape=rectangle;whiteSpace=wrap;html=1;strokeWidth=1;labelPosition=center;verticalLabelPosition=middle;align=center;verticalAlign=middle;fontStyle=1" parent="1" vertex="1">
      <mxGeometry x="150" y="-141" width="950" height="170" as="geometry" />
    </mxCell>
    <object Criticality="Low" zone="1" ZoneType="Other" SAL="Very High" label="System LAN-Very High" internalLabel="System LAN" id="m1hxJIzNgrUlvDxOGyZo-107">
      <mxCell style="swimlane;zone=1;strokeColor=#B20000;fontColor=#000000;fillColor=#ece4d7;swimlaneFillColor=#f6f3ed;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1240.5" y="391.5" width="368" height="247" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="9b69355c-4957-4cb4-b955-80056ac4edf3" Criticality="High" label="Firewall Mgt Server" internalLabel="AD-24" id="m1hxJIzNgrUlvDxOGyZo-109">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/active_directory.svg;labelBackgroundColor=none;imageBackground=#FF6666;imageBorder=#FF0000;strokeWidth=4;" parent="m1hxJIzNgrUlvDxOGyZo-107" vertex="1">
        <mxGeometry x="119" y="48" width="44" height="60" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="86f12799-f93a-4e71-8d84-01308f21254a" Criticality="High" label="CSMS" internalLabel="DB-25" id="m1hxJIzNgrUlvDxOGyZo-110">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/database_server.svg;labelBackgroundColor=none;imageBackground=#FF6666;imageBorder=#FF0000;strokeWidth=4;" parent="m1hxJIzNgrUlvDxOGyZo-107" vertex="1">
        <mxGeometry x="244" y="147" width="43" height="60" as="geometry" />
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="984e1378-9a75-439b-96b1-eaec190b3c3e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="&amp;nbsp;" id="XNDtLr3cqQsbXonp8KkM-128">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="m1hxJIzNgrUlvDxOGyZo-107" vertex="1">
        <mxGeometry x="38" y="67" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="82282b19-f58e-4b1e-a4aa-b051aa86fe0a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="&amp;nbsp;" id="XNDtLr3cqQsbXonp8KkM-131">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="m1hxJIzNgrUlvDxOGyZo-107" vertex="1">
        <mxGeometry x="38" y="167" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-130" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="m1hxJIzNgrUlvDxOGyZo-107" source="XNDtLr3cqQsbXonp8KkM-128" target="m1hxJIzNgrUlvDxOGyZo-109" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-132" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="m1hxJIzNgrUlvDxOGyZo-107" source="XNDtLr3cqQsbXonp8KkM-128" target="XNDtLr3cqQsbXonp8KkM-131" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-134" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="m1hxJIzNgrUlvDxOGyZo-107" source="XNDtLr3cqQsbXonp8KkM-131" target="m1hxJIzNgrUlvDxOGyZo-110" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="243" y="177" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <object Criticality="Low" zone="1" ZoneType="Other" SAL="High" label="Zone Core LAN-High" internalLabel="Zone Core LAN" id="cjdxwiZFUEl386gS18Un-183">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fontSize=11;strokeColor=#82b366;whiteSpace=wrap;fillColor=#ece4d7;swimlaneFillColor=#f6f3ed;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="1240.5" y="-207.5" width="371" height="566" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="c44bbe77-90c8-44d2-9248-b67f9cd27a78" Criticality="High" label="Zone Database Server" internalLabel="Zone Database Server" id="cjdxwiZFUEl386gS18Un-184">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/database_server.svg;labelBackgroundColor=none;fontSize=11;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;imageBackground=#B5FA8F;imageBorder=#66CC00;strokeWidth=4;" parent="cjdxwiZFUEl386gS18Un-183" vertex="1">
        <mxGeometry x="118" y="225" width="43" height="60" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="96763130-f6b8-4cf0-9cc0-e0d4484dd79a" Criticality="High" label="Zone Backup Server" internalLabel="SVR-15" id="cjdxwiZFUEl386gS18Un-185">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;fontSize=11;imageBackground=#B5FA8F;imageBorder=#66CC00;strokeWidth=4;" parent="cjdxwiZFUEl386gS18Un-183" vertex="1">
        <mxGeometry x="258" y="473" width="23" height="60" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="775f68d7-29b7-4fca-904d-7288ed3f6ee5" Criticality="High" label="Zone UEM Server" internalLabel="SVR-16" id="cjdxwiZFUEl386gS18Un-186">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/server.svg;labelBackgroundColor=none;fontSize=11;imageBackground=#B5FA8F;imageBorder=#66CC00;strokeWidth=4;" parent="cjdxwiZFUEl386gS18Un-183" vertex="1">
        <mxGeometry x="128" y="398.5" width="23" height="60" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="6622a6ba-9868-475e-bac1-8e33ec5948d9" Criticality="High" label="Zone Statistics Server" internalLabel="AS-17" id="cjdxwiZFUEl386gS18Un-187">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/application_server.svg;labelBackgroundColor=none;fontSize=11;imageBackground=#B5FA8F;imageBorder=#66CC00;strokeWidth=4;" parent="cjdxwiZFUEl386gS18Un-183" vertex="1">
        <mxGeometry x="244" y="325.5" width="44" height="60" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="2g9_9qOLPwzJJ6DQc6ya-110" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;exitX=0;exitY=0.5;exitDx=0;exitDy=0;endArrow=none;strokeColor=#808080;labelBackgroundColor=none;labelPosition=right;verticalLabelPosition=bottom;align=left;verticalAlign=top;" parent="cjdxwiZFUEl386gS18Un-183" source="cjdxwiZFUEl386gS18Un-184" target="cjdxwiZFUEl386gS18Un-184" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <object ComponentGuid="bc088ff5-a041-4c5c-a02f-2fff627935be" Criticality="High" label="Zone Controller 01" internalLabel="EW-1" id="m-PKMXxfoYSgVNY3it_B-107">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/ews.svg;labelBackgroundColor=none;imageBackground=#B5FA8F;imageBorder=#66CC00;strokeWidth=4;" parent="cjdxwiZFUEl386gS18Un-183" vertex="1">
        <mxGeometry x="100" y="55" width="63" height="55" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="e299a91e-f696-4b7f-b0aa-0dc9f1d6de17" Criticality="High" label="Zone Controller 02" internalLabel="EW-1" id="m-PKMXxfoYSgVNY3it_B-108">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/ews.svg;labelBackgroundColor=none;imageBackground=#B5FA8F;imageBorder=#66CC00;strokeWidth=4;" parent="cjdxwiZFUEl386gS18Un-183" vertex="1">
        <mxGeometry x="226.5" y="142.5" width="63" height="55" as="geometry" />
      </mxCell>
    </object>
    <object SAL="Moderate" label="CEN-Moderate" internalLabel="CEN" ZoneType="Corporate" zone="1" Criticality="Low" id="2">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=middle;align=center;verticalAlign=middle;strokeColor=#000000;fillColor=#fdf9d9;swimlaneFillColor=#fffef4;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="11" y="71" width="305" height="538" as="geometry" />
      </mxCell>
    </object>
    <object label="Audio Recording Server" ComponentGuid="e7fdf040-49a3-402a-ac95-257ade9f041c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="13">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/remote_access_server.svg;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="94" y="421" width="34" height="60" as="geometry" />
      </mxCell>
    </object>
    <object label="&lt;span&gt;Agency Software Ops&lt;/span&gt;" ComponentGuid="fb69097e-468e-4622-99cb-8deda74c35fe" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="wJGx4hFZ0Sm7uMFEhMk5-141">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;labelPosition=right;verticalLabelPosition=middle;align=left;verticalAlign=middle;" parent="2" vertex="1">
        <mxGeometry x="202" y="90.5" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <object label="&lt;span&gt;Agency CADICAD&lt;/span&gt;" ComponentGuid="23249778-d240-4527-9517-223c32eefa33" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" id="4i8PqE1TzuKkrrOvAeYK-143">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="2" vertex="1">
        <mxGeometry x="162.5" y="170" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="2a8cc1fe-15d9-4d41-85dd-7401edbb9a49" Criticality="Low" label="Remote LMR Console" internalLabel="PC-1" id="wJGx4hFZ0Sm7uMFEhMk5-140">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/pc.svg;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;whiteSpace=wrap;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="79" y="74" width="60" height="51" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="wJGx4hFZ0Sm7uMFEhMk5-143" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="wJGx4hFZ0Sm7uMFEhMk5-141" target="wJGx4hFZ0Sm7uMFEhMk5-140" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <object ComponentGuid="fd0531c4-ee86-4d54-8777-74325e7c9b27" Criticality="Low" label="CAD System" internalLabel="EW-2" id="4i8PqE1TzuKkrrOvAeYK-147">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/ews.svg;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="79" y="153" width="60" height="52" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="4i8PqE1TzuKkrrOvAeYK-148" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="4i8PqE1TzuKkrrOvAeYK-143" target="4i8PqE1TzuKkrrOvAeYK-147" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <object label="CEN Network IP/Mask" ComponentGuid="0d18b12b-055c-46d7-9ae4-ee98179c4afe" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" internalLabel="CON-3" id="xszBj1p53JAKddVs91M7-148">
      <mxCell style="html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;labelPosition=left;verticalLabelPosition=middle;align=right;verticalAlign=middle;" parent="2" vertex="1">
        <mxGeometry x="202" y="242.5" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="00572486-4939-45a5-b4fd-4d6fcf80716c" Criticality="Low" label="Audio Recorder Client" internalLabel="PC-4" id="74er5_TXb4ZCgvV5zPsg-144">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/pc.svg;whiteSpace=wrap;labelBackgroundColor=none;" parent="2" vertex="1">
        <mxGeometry x="79" y="300" width="60" height="51" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-145" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="74er5_TXb4ZCgvV5zPsg-139" target="74er5_TXb4ZCgvV5zPsg-144" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <object label="Agency Recording" ComponentGuid="98a200b6-71ad-4163-85ab-696f712d8352" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="2" internalLabel="CON-3" id="74er5_TXb4ZCgvV5zPsg-139">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;labelPosition=right;verticalLabelPosition=middle;align=left;verticalAlign=middle;" parent="2" vertex="1">
        <mxGeometry x="202" y="378.5" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="16cd40b1-38c0-4a16-87c7-4e7b8dae23b0" Criticality="Low" label="Agency Firewall&lt;br&gt;" internalLabel="FW-12" id="cjdxwiZFUEl386gS18Un-180">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/firewall.svg;labelBackgroundColor=none;fontSize=11;whiteSpace=wrap;" parent="2" vertex="1">
        <mxGeometry x="231" y="228" width="60" height="51" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="cjdxwiZFUEl386gS18Un-182" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;labelBackgroundColor=none;endArrow=none;strokeColor=#808080;strokeWidth=1;fontSize=11;" parent="2" source="xszBj1p53JAKddVs91M7-148" target="cjdxwiZFUEl386gS18Un-180" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="4i8PqE1TzuKkrrOvAeYK-144" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="wJGx4hFZ0Sm7uMFEhMk5-141" target="xszBj1p53JAKddVs91M7-148" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="225" y="158" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-140" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="xszBj1p53JAKddVs91M7-148" target="74er5_TXb4ZCgvV5zPsg-139" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="215" y="267" as="sourcePoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="4i8PqE1TzuKkrrOvAeYK-150" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="4i8PqE1TzuKkrrOvAeYK-143" target="xszBj1p53JAKddVs91M7-148" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="205" y="248" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-143" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="2" source="74er5_TXb4ZCgvV5zPsg-139" target="13" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="195" y="388" as="sourcePoint" />
      </mxGeometry>
    </mxCell>
    <object SAL="High" label="Control Room-High" internalLabel="Control Room" ZoneType="Control System" zone="1" Criticality="Low" id="3">
      <mxCell style="swimlane;zone=1;labelBackgroundColor=none;fillColor=#d3eef2;swimlaneFillColor=#f2f8f9;" parent="1" vertex="1" connectable="0">
        <mxGeometry x="390" y="69" width="466" height="540" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-168" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="18" target="74er5_TXb4ZCgvV5zPsg-164" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="226" y="410" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-169" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="74er5_TXb4ZCgvV5zPsg-157" target="18" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="146" y="338" as="sourcePoint" />
        <mxPoint x="207.5" y="271.89944134078223" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-159" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="18" target="74er5_TXb4ZCgvV5zPsg-158" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="313.31414490287716" y="271.9508000000001" as="sourcePoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-152" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="18" target="74er5_TXb4ZCgvV5zPsg-151" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <object label="Control Room Firewall" ComponentGuid="d2016409-df25-4c4f-87a0-e6b99e256d60" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Control Room Firewall" id="14">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/firewall.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="17.2034" y="229.9508" width="60" height="51" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="260aa052-2428-45ad-8141-410d1d600b93" Criticality="Low" label="Dispatch Console 01" internalLabel="DC-5" id="74er5_TXb4ZCgvV5zPsg-151">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/dispatch_console.svg;whiteSpace=wrap;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="114" y="111" width="46" height="60" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="d7ff4e13-cc1f-4dab-8192-3b858068cd6b" Criticality="Low" label="Dispatch Console 02&lt;br&gt;" internalLabel="DC-5" id="74er5_TXb4ZCgvV5zPsg-157">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/dispatch_console.svg;whiteSpace=wrap;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;labelBackgroundColor=none;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;" parent="3" vertex="1">
        <mxGeometry x="116" y="339" width="46" height="60" as="geometry" />
      </mxCell>
    </object>
    <object ComponentGuid="254b52f1-89c4-4e5c-a774-a680ee1d48ef" Criticality="Low" label="Dispatch Console 03&lt;br&gt;" internalLabel="DC-5" id="74er5_TXb4ZCgvV5zPsg-158">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/dispatch_console.svg;whiteSpace=wrap;labelPosition=center;verticalLabelPosition=bottom;verticalAlign=top;labelBackgroundColor=none;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;" parent="3" vertex="1">
        <mxGeometry x="286.5" y="340" width="46" height="60" as="geometry" />
      </mxCell>
    </object>
    <object label="Console Site Firewall" ComponentGuid="c23f1123-15aa-496a-8910-2ace96d1c82c" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="Control Room Firewall" id="74er5_TXb4ZCgvV5zPsg-162">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/firewall.svg;labelBackgroundColor=none;" parent="3" vertex="1">
        <mxGeometry x="386.7034" y="230.4508" width="60" height="51" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="82" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=#ffffff;" parent="3" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="303.1931999999997" y="255.95080000000007" as="sourcePoint" />
        <mxPoint x="305.47450000000026" y="255.95080000000007" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <object label="Aux I/O" ComponentGuid="8f952cf1-ca6e-46a4-959e-2dc6319e11e1" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="74er5_TXb4ZCgvV5zPsg-164">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/database_server.svg;labelBackgroundColor=none;imageBackground=#6666FF;strokeWidth=4;imageBorder=#0000CC;" parent="3" vertex="1">
        <mxGeometry x="197.5" y="418" width="43" height="60" as="geometry" />
      </mxCell>
    </object>
    <object label="Control Site LAN" ComponentGuid="37b736a8-a5b0-4adf-b7b1-b3fbefe6aa7a" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="18">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=none;labelPosition=center;verticalLabelPosition=top;align=center;verticalAlign=bottom;" parent="3" vertex="1">
        <mxGeometry x="207.9424" y="245.9508" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="73" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=#ffffff;" parent="3" source="14" target="18" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="107" style="rounded=0;orthogonalLoop=1;jettySize=auto;html=1;strokeColor=#808080;strokeWidth=1;endArrow=none;labelBackgroundColor=#ffffff;" parent="3" source="18" target="74er5_TXb4ZCgvV5zPsg-162" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="303.1931999999997" y="255.95080000000007" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <object ComponentGuid="3cca3871-7b9c-4240-adad-a0a35a7e70b0" Criticality="High" label="Dispatch IP Logger" internalLabel="DB-6" id="74er5_TXb4ZCgvV5zPsg-153">
      <mxCell style="aspect=fixed;html=1;align=center;shadow=0;dashed=0;spacingTop=3;image;image=img/cset/database_server.svg;labelPosition=center;verticalLabelPosition=top;verticalAlign=bottom;whiteSpace=wrap;labelBackgroundColor=none;imageBackground=#6666FF;imageBorder=#0000CC;strokeWidth=4;" parent="3" vertex="1">
        <mxGeometry x="286" y="109" width="43" height="60" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-170" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="3" source="18" target="74er5_TXb4ZCgvV5zPsg-153" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="223" y="246" as="sourcePoint" />
        <mxPoint x="291" y="334.7627032983421" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <object label="NAT Network Address Translation&amp;nbsp;" ComponentGuid="a93040be-8a83-4d06-bd6b-045a29c4b524" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" id="74er5_TXb4ZCgvV5zPsg-146">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="346" y="314" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-148" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="74er5_TXb4ZCgvV5zPsg-146" target="14" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="cjdxwiZFUEl386gS18Un-181" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;labelBackgroundColor=none;endArrow=none;strokeColor=#808080;strokeWidth=1;fontSize=11;" parent="1" source="74er5_TXb4ZCgvV5zPsg-146" target="cjdxwiZFUEl386gS18Un-180" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <object label="&amp;nbsp;" ComponentGuid="41409b6b-b639-46cf-8e81-cb488a93599e" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="b0xLSYqVklmmNSaO8BDo-107">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="1286.5" y="210.5" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="5591b625-8c0c-4d20-9c78-294cda1bf230" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="XNDtLr3cqQsbXonp8KkM-112">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="1286.5" y="137.5" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="21cde674-dc41-4bf0-a2c9-e2e9ca1f47b3" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="XNDtLr3cqQsbXonp8KkM-114">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="1286.5" y="37.5" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="7c3c217f-c781-4ff3-b580-894111596000" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="XNDtLr3cqQsbXonp8KkM-116">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="1286.5" y="-47.5" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="389b1445-d01a-472a-9a51-ca96fc904c9d" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="XNDtLr3cqQsbXonp8KkM-118">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="1286.5" y="-133.5" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <object label="&amp;nbsp;" ComponentGuid="783265e3-a041-41cc-bf83-d744ed2ab8a5" HasUniqueQuestions="" IPAddress="" Description="" Criticality="" HostName="" parent="3" internalLabel="CON-27" id="XNDtLr3cqQsbXonp8KkM-108">
      <mxCell style="whiteSpace=wrap;html=1;image;image=img/cset/connector.svg;labelBackgroundColor=#ffffff;" parent="1" vertex="1">
        <mxGeometry x="1286.5" y="286.5" width="20" height="20" as="geometry" />
      </mxCell>
    </object>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-107" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="b0xLSYqVklmmNSaO8BDo-107" target="cjdxwiZFUEl386gS18Un-186" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-109" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="b0xLSYqVklmmNSaO8BDo-107" target="XNDtLr3cqQsbXonp8KkM-108" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-111" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-108" target="cjdxwiZFUEl386gS18Un-185" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1386.5" y="324.5" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-113" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="b0xLSYqVklmmNSaO8BDo-107" target="XNDtLr3cqQsbXonp8KkM-112" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-115" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-112" target="XNDtLr3cqQsbXonp8KkM-114" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-117" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-114" target="XNDtLr3cqQsbXonp8KkM-116" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-119" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-116" target="XNDtLr3cqQsbXonp8KkM-118" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-125" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-114" target="cjdxwiZFUEl386gS18Un-184" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-127" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-112" target="cjdxwiZFUEl386gS18Un-187" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1458.5" y="149.5" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-120" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-118" target="m-PKMXxfoYSgVNY3it_B-107" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1343.5" y="-123.80519480519479" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-124" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-116" target="m-PKMXxfoYSgVNY3it_B-108" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="1468.5" y="-37.92574257425747" as="targetPoint" />
      </mxGeometry>
    </mxCell>
    <mxCell id="b0xLSYqVklmmNSaO8BDo-108" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;fontColor=#000000;" parent="1" source="cjdxwiZFUEl386gS18Un-156" target="b0xLSYqVklmmNSaO8BDo-107" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="XNDtLr3cqQsbXonp8KkM-129" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;" parent="1" source="XNDtLr3cqQsbXonp8KkM-128" target="cjdxwiZFUEl386gS18Un-158" edge="1">
      <mxGeometry relative="1" as="geometry" />
    </mxCell>
    <mxCell id="74er5_TXb4ZCgvV5zPsg-172" value="" style="edgeStyle=none;rounded=0;orthogonalLoop=1;jettySize=auto;html=1;endArrow=none;strokeColor=#808080;exitX=0;exitY=0.5;exitDx=0;exitDy=0;" parent="1" source="35" target="74er5_TXb4ZCgvV5zPsg-162" edge="1">
      <mxGeometry relative="1" as="geometry">
        <mxPoint x="880.1558999999997" y="332.29340945677586" as="sourcePoint" />
      </mxGeometry>
    </mxCell>
  </root>
</mxGraphModel>', N'iVBORw0KGgoAAAANSUhEUgAAAIwAAACMCAYAAACuwEE+AAAACXBIWXMAAAsTAAALEwEAmpwYAAAKT2lDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjanVNnVFPpFj333vRCS4iAlEtvUhUIIFJCi4AUkSYqIQkQSoghodkVUcERRUUEG8igiAOOjoCMFVEsDIoK2AfkIaKOg6OIisr74Xuja9a89+bN/rXXPues852zzwfACAyWSDNRNYAMqUIeEeCDx8TG4eQuQIEKJHAAEAizZCFz/SMBAPh+PDwrIsAHvgABeNMLCADATZvAMByH/w/qQplcAYCEAcB0kThLCIAUAEB6jkKmAEBGAYCdmCZTAKAEAGDLY2LjAFAtAGAnf+bTAICd+Jl7AQBblCEVAaCRACATZYhEAGg7AKzPVopFAFgwABRmS8Q5ANgtADBJV2ZIALC3AMDOEAuyAAgMADBRiIUpAAR7AGDIIyN4AISZABRG8lc88SuuEOcqAAB4mbI8uSQ5RYFbCC1xB1dXLh4ozkkXKxQ2YQJhmkAuwnmZGTKBNA/g88wAAKCRFRHgg/P9eM4Ors7ONo62Dl8t6r8G/yJiYuP+5c+rcEAAAOF0ftH+LC+zGoA7BoBt/qIl7gRoXgugdfeLZrIPQLUAoOnaV/Nw+H48PEWhkLnZ2eXk5NhKxEJbYcpXff5nwl/AV/1s+X48/Pf14L7iJIEyXYFHBPjgwsz0TKUcz5IJhGLc5o9H/LcL//wd0yLESWK5WCoU41EScY5EmozzMqUiiUKSKcUl0v9k4t8s+wM+3zUAsGo+AXuRLahdYwP2SycQWHTA4vcAAPK7b8HUKAgDgGiD4c93/+8//UegJQCAZkmScQAAXkQkLlTKsz/HCAAARKCBKrBBG/TBGCzABhzBBdzBC/xgNoRCJMTCQhBCCmSAHHJgKayCQiiGzbAdKmAv1EAdNMBRaIaTcA4uwlW4Dj1wD/phCJ7BKLyBCQRByAgTYSHaiAFiilgjjggXmYX4IcFIBBKLJCDJiBRRIkuRNUgxUopUIFVIHfI9cgI5h1xGupE7yAAygvyGvEcxlIGyUT3UDLVDuag3GoRGogvQZHQxmo8WoJvQcrQaPYw2oefQq2gP2o8+Q8cwwOgYBzPEbDAuxsNCsTgsCZNjy7EirAyrxhqwVqwDu4n1Y8+xdwQSgUXACTYEd0IgYR5BSFhMWE7YSKggHCQ0EdoJNwkDhFHCJyKTqEu0JroR+cQYYjIxh1hILCPWEo8TLxB7iEPENyQSiUMyJ7mQAkmxpFTSEtJG0m5SI+ksqZs0SBojk8naZGuyBzmULCAryIXkneTD5DPkG+Qh8lsKnWJAcaT4U+IoUspqShnlEOU05QZlmDJBVaOaUt2ooVQRNY9aQq2htlKvUYeoEzR1mjnNgxZJS6WtopXTGmgXaPdpr+h0uhHdlR5Ol9BX0svpR+iX6AP0dwwNhhWDx4hnKBmbGAcYZxl3GK+YTKYZ04sZx1QwNzHrmOeZD5lvVVgqtip8FZHKCpVKlSaVGyovVKmqpqreqgtV81XLVI+pXlN9rkZVM1PjqQnUlqtVqp1Q61MbU2epO6iHqmeob1Q/pH5Z/YkGWcNMw09DpFGgsV/jvMYgC2MZs3gsIWsNq4Z1gTXEJrHN2Xx2KruY/R27iz2qqaE5QzNKM1ezUvOUZj8H45hx+Jx0TgnnKKeX836K3hTvKeIpG6Y0TLkxZVxrqpaXllirSKtRq0frvTau7aedpr1Fu1n7gQ5Bx0onXCdHZ4/OBZ3nU9lT3acKpxZNPTr1ri6qa6UbobtEd79up+6Ynr5egJ5Mb6feeb3n+hx9L/1U/W36p/VHDFgGswwkBtsMzhg8xTVxbzwdL8fb8VFDXcNAQ6VhlWGX4YSRudE8o9VGjUYPjGnGXOMk423GbcajJgYmISZLTepN7ppSTbmmKaY7TDtMx83MzaLN1pk1mz0x1zLnm+eb15vft2BaeFostqi2uGVJsuRaplnutrxuhVo5WaVYVVpds0atna0l1rutu6cRp7lOk06rntZnw7Dxtsm2qbcZsOXYBtuutm22fWFnYhdnt8Wuw+6TvZN9un2N/T0HDYfZDqsdWh1+c7RyFDpWOt6azpzuP33F9JbpL2dYzxDP2DPjthPLKcRpnVOb00dnF2e5c4PziIuJS4LLLpc+Lpsbxt3IveRKdPVxXeF60vWdm7Obwu2o26/uNu5p7ofcn8w0nymeWTNz0MPIQ+BR5dE/C5+VMGvfrH5PQ0+BZ7XnIy9jL5FXrdewt6V3qvdh7xc+9j5yn+M+4zw33jLeWV/MN8C3yLfLT8Nvnl+F30N/I/9k/3r/0QCngCUBZwOJgUGBWwL7+Hp8Ib+OPzrbZfay2e1BjKC5QRVBj4KtguXBrSFoyOyQrSH355jOkc5pDoVQfujW0Adh5mGLw34MJ4WHhVeGP45wiFga0TGXNXfR3ENz30T6RJZE3ptnMU85ry1KNSo+qi5qPNo3ujS6P8YuZlnM1VidWElsSxw5LiquNm5svt/87fOH4p3iC+N7F5gvyF1weaHOwvSFpxapLhIsOpZATIhOOJTwQRAqqBaMJfITdyWOCnnCHcJnIi/RNtGI2ENcKh5O8kgqTXqS7JG8NXkkxTOlLOW5hCepkLxMDUzdmzqeFpp2IG0yPTq9MYOSkZBxQqohTZO2Z+pn5mZ2y6xlhbL+xW6Lty8elQfJa7OQrAVZLQq2QqboVFoo1yoHsmdlV2a/zYnKOZarnivN7cyzytuQN5zvn//tEsIS4ZK2pYZLVy0dWOa9rGo5sjxxedsK4xUFK4ZWBqw8uIq2Km3VT6vtV5eufr0mek1rgV7ByoLBtQFr6wtVCuWFfevc1+1dT1gvWd+1YfqGnRs+FYmKrhTbF5cVf9go3HjlG4dvyr+Z3JS0qavEuWTPZtJm6ebeLZ5bDpaql+aXDm4N2dq0Dd9WtO319kXbL5fNKNu7g7ZDuaO/PLi8ZafJzs07P1SkVPRU+lQ27tLdtWHX+G7R7ht7vPY07NXbW7z3/T7JvttVAVVN1WbVZftJ+7P3P66Jqun4lvttXa1ObXHtxwPSA/0HIw6217nU1R3SPVRSj9Yr60cOxx++/p3vdy0NNg1VjZzG4iNwRHnk6fcJ3/ceDTradox7rOEH0x92HWcdL2pCmvKaRptTmvtbYlu6T8w+0dbq3nr8R9sfD5w0PFl5SvNUyWna6YLTk2fyz4ydlZ19fi753GDborZ752PO32oPb++6EHTh0kX/i+c7vDvOXPK4dPKy2+UTV7hXmq86X23qdOo8/pPTT8e7nLuarrlca7nuer21e2b36RueN87d9L158Rb/1tWeOT3dvfN6b/fF9/XfFt1+cif9zsu72Xcn7q28T7xf9EDtQdlD3YfVP1v+3Njv3H9qwHeg89HcR/cGhYPP/pH1jw9DBY+Zj8uGDYbrnjg+OTniP3L96fynQ89kzyaeF/6i/suuFxYvfvjV69fO0ZjRoZfyl5O/bXyl/erA6xmv28bCxh6+yXgzMV70VvvtwXfcdx3vo98PT+R8IH8o/2j5sfVT0Kf7kxmTk/8EA5jz/GMzLdsAAAAgY0hSTQAAeiUAAICDAAD5/wAAgOkAAHUwAADqYAAAOpgAABdvkl/FRgAAMtpJREFUeNrsvXmQJUd62PfLrOOd/bp7emZ67gsYYAAMjgUWi8XiIrBLrCXalFYSGZYvyvJBhS3GinJYMkOHHbJCtGXaMqUQKYqyw1pTligFJYqklntwDwjYBXZxLO5jBnNfPdMz3f363VWVmf6jsl7Xe13vvT6mezBU50TF9KuqrLy+/O7vS2GMYatslZUWuTUFW2ULYLbKFsBslS2A2SpbALNVtgBmq2yVLYDZKlsAs1U2pbirefntd95L/pxwBD9n4Kcizd6tabw9iokxROA6/FAbfs0YvgrwwP33bQzA2HLMEfzWXEvfe3kxohUahNhajNsCYAxIAZNF5yf3VpyfzDni7yjDX9wwDAOMO5J/eWEhuufsXITBILeA5bbDMvV5zVxDcc9O/+eLvpgB/vaGAIyU/Ln5pr7n7FyEwCC3UMttV0S8jjQCzcc3Ao7vyv3VDQMYDP/h5cUoRm1ZqEWAQKRgeavcevAAYwym+ysujhRU25qFlh7bMJKkNHtaoQZhloGDEIIwUtSbAWGkt8DlkyACC0Eh51IseMiMLayNoRHojZOSAJUwT6YPWBYbHeaqLSKlCSONEPH99e4Pcwv35u3cttYGKQWuIynkXHZMFHFdSY83i+nFOhslJfUMRwpBox1wfb6B0TGqe+DYHu46sJOc79p3xYAvmBQJW/48DAI8z8sEvATJioESgRkIsKPa1loThiG5nD+g78PaNhjDkLaNBYpskq6UQiuN73tkuSoNa9ukxnR9ocGbH13iyo1F2m3D7HyDXdvLA3qz4QDTi9aqtQ6YeKL/yBP38bkH9qENRAqLaQbtgpgBG1RarTb5XB4hV1fXmHiHOY4YsgMH11fK0Gm3KRQLmX2PAWJtbSdAkFVfCAhDjYoU+cJygBlWNxmTFU6459AUD929h3/y1Tc4PzNPO1A0WgFjxRzamDVzme6akEuq42GkiSKNVobPHD/IY/fvox0aO3EaIcTA3ZagzUEljDSOoxEZ7wyra4xBa402zkiUnQ0wijDSuJHOxm7DsNeItuO1yq6f8IEqUjiRR7835LC6CWaMAUYSAoWcy5eeu5+v/O5rLNbbtDuKciEFKWb1YLNq04ARYIRYuuwkFfIen73/INrAltfnJ6OEkWF6ssCDd+1GWWDqWbs18JhybRjGpC4QRlAu5MjnvS5a/OTpHjZGZySEwPkEay81MFkpIZEII8Do3vXbcIDJ0r0IESvxlmBo6EXf/8PeWe9lu8VctdNDu0f1jxU8EwJqzZDZhXYXaFbyXdb4fKXz2nNZSUgKcVNMOGtgenuHJwBHCAQiVhDZK6Hnw75gjEGaYYjMfstk8wqDNkhST0rodBQfnVuk3oz41LFt5Hxpyebg+toYdGocWf0SlombX+zw8YUad+4bY//uUiwSD62bSGjZ2CDd9iAeZpgA0j/v2oiuNLukmTdrVq6660X1CVfelThS8GQGyPnJPjdax0hOZIvdRseTJky2qBJ/X2Q2IKVgbqHDiXOLOFJy3x0T5DxpSWaCCsUQSUcPAVSDkAKlDPt2FPFdyakLNRYbIXfsL+O5InPsMcDE381i5JeovRmAdiwQyQFiddJmhq7FcbB2P7Ns/TYUYFKsC8ncO1LiSNkdbBfCzSA5X3Q1ACYtLw6bwIyFQ2ePWgjB2ct1LlxtcXB3iQPTpZg0mXinKaUHfjfd72ExW1obHBkDxvS2PJWSx4dnF3njgznuPTLORNknUhmWfMNA7CtSG2Ewhok30qCdaETvt+M/BY6UCCF6WJe1CCir52GE6V5GGJAGx6K7RLs7+gIpJELIoe/J7nezLomUy+t7nuTqXJvzM02OHhjjyN4yQsYYp9VRvH9qgXZgcJzhbTtD+uY4kgtXm5y6VI8XTggKeZcH75qkXPR471SVekvhujKz36PmR456LgfPq4CMuaa7Run1i68NBpiezrC0cPITIClIKVish5y5VOPOfWX27SwSqRgTXJtv89aJOXxfkvMl64n4NAamxnMs1gPeOjFPu6O6fMJ9R8YpFVw+OFNF60+Gr5AQMRXIBLTNEat7LykETqKTuUUXAiKlef90lYkxn73TRUIVa1xn59ucvljj6IEKdx2s4FrswhrbQUCl7PHQ3dsoFdwloBExb3LsUAVjDOeuNJDy1s6LsRAjUyRpoGi2GWK1EOA6okesvDW7SHD6Yh2tDYf3llGWx5id73DifI07D1TYOZVHm1iDfG2+TaTNqsfaaituLHRiBlMK7jpYYXoqz4fnqnRCDRg8T3L0YIVL15rcqHZuqZ4msTy5Tryp143FWSeKERiL7mSXi9/sS0q4eqPFzPUWxw6Pk/cdwHB9oc2Jc1WOHaqwbdxHa8NiPeDdU/N0AoUUrLotzxXcWOjw4dkqkdJoYzi0p8RYwePdk/NEUWwamBjz2DmV56Ozi7QDFUuFt2R+7KZO2AYzSgO00Yo7Ygt1sovS9JEhjBsrYI6X8Ux9zFzyjSgynL/SYHp7gYmKjzbQCTQfX6hzeO8Yk+M5AOYXA06er3Fwd5kDu8vkcg65nEM+5+B7DlJKe88nl/PxXBfHiZ/ncg453yGXc7nzQBnfk3xwuopSGm3g8L4ynic5fbGGtKj/4O4SGLhyvYUj5YrGLLJ4xfSYh8wJA74X8zDiprjTujeDFEgLMFobwjDsMpRK6y7HP0jPMoxZVkoRhuEA46NGSInrCK7NBXQCxa5tPkEQAnDuSoNiTrJ93CUIQlptzakLNQ7vKTJedlhcbPDOeycJgwADbNs2wZ7dO3j/g1NopQjDiIMH91IuFzlx8mxXLN+3bxeHDuzmwK48Zy41OHGuxtEDscLu0O4C755a5Ea1zeSYjyNgespnZrbF9KSP48RzNMz4GCnVHfdysTrBqNn7XGltzSCp59YIGgOMQK2TaVg9wIjU1bXTSKSQREoRRaor20cWYOQAfxZtTCxeDzKehVFMgTPqKxN/OxSCmestJioejlB0OhGNlmahFnLXgSLtTgeAs5fb7NrmkfcNrVaHhdoiP3j9fSYmd9Ko1yjlLyEfuY9X3/iI7dO7mbs+S73ZZtf0FK+9+TE7p3dz9col6o0me/fuIAoi9mz3OHO5w9lLNfZszyEF7Jz0OT/TJO/FkzBRdrhy3TBzvcHOSZ9QJRKVzJxbpRRaa0xnObXQlqzFvEj2nAA4qW9r5WAAx3GQUqCE7uHJNh3DADiOQErwPBfPzXV3xnrdG4SAfD6fWT/2OZGEkSZULQ7tKFIs+iBhdqHB1HiObRNFAK7PB5SKPnt3lVEq5rna7YDJyW3c//BjzM5cYu7qKXI5n527dvPAw49z4oO3yXltcr7L3n37Of7go7z1xivkfI9SoUjoRkghuPNAjo/OLYLjU8g77PNyzJ1YoBO5TI37IGDbeES1oTmwp0Au0RQPcm8IQ5RS5PP5dbk3dBfYdXBkM8YwfXNtNofpFcsuR8Sa3k3XuwioNUJ8V1IpeWhjiEJNvRmye3sOoyGKDJdnm+zcls9wSDJEUbxA3XtaE0Vhd/KThei/l9hucr5k744C1+c7CAO+K9g56XNlttV1N5meytNoRTRa0S3RywisHkb0rptArNpA4K6+cWMvUkYtq7XtN5uPUo4NMCwus0MMeVath5QKLk4spFFrRDhSUMhJBIa5agfflZQLDkrp4d/N9onsnVTTY0VEK0Ol5HJ1rk0QKlxHMDnmMVcLiSKNKwWlvIPrCpqtiHLBGT4vPa4jJqMvI+r2j8NoZEKmhInXKLWWmyolmbSUtMmKu5hmQ7MdUS668RxZdwPPk11b13wtYNu4n+l2sZ5xJ5c2xGYGBIuNCIBczsFzJJ1Aoe3uLvgOnVDdMqWm48SswXr1ZDeFjkhLHzd1IoQg0oYw0uRzDtpurEZL4XkSEIRKE4SaUtFFJQbFIQBjhjpyDFR0g4By0aXWDDEChIScL2l2FAkVyOecbvjNpgMM8frcDLFaroUepi+ZiGxy9AIsszaPeD4KE0SRQut492Cdr4NIk/PizgRBzHR7feEVmZZiIXBdt28jSFzXGeBaYdJYn2LeoRPornXY9ySdVMxPzpeEkRk67q6yDTOCYq0cTySKu0S5KpYLupssVkthjY+yZ9DpRR86OUYOea7jKwOujTEoZSUO67yldHzP9yRGQBDqLjDrlBkgdgHQXXCUUlBdrPPu+ye7EojjSK5evU693sBxyt1BG5J+LW0JDXiuRKm4D0IYXFfS6ajuXLiOJFJh18dnIIfYp6nNmjOBzAQqk7EhEonMkRIjdC+UbL5YHXdbyiVdS1rkE4iBYrWwfimxniVbphZCdr8xSO5OXCWF9U1JxHHBUrYC0eeeKCyTnv7darW5cGGG8andXd3SQrVGrdZgeu9Yd7witjAiZa8+I3EFxe5oKUTsriPFUmiWWXpRDIgzEVIitB4SBCgyFZkJOhH9a2D/ll2nK7NG3LJmgOlFZgKBY30usoSk4dhTDBemTLLrsp6J7heMiclC4t6htP0tYsY48XteLnyJrkZ5544pHn3kXl55/VQcRBdGHL3jINPTU3x0eq6POC7vkza9gKp0nNnC6F7SMEwgE31jXq4GEENdSzE9AtxSu4AjQZn1EKM1A8xyl+PEOWc5KjUjJMiVPDcDaXOCPbTWGCMRIlYEhqHuGgq10t0Qi14eZjk7q/tJwDJ+JyFJvf0SQhCEOmYqRaLfUdYjz3T5LSkTR/kV8DFDfHqH+TJnkaRE/RG7upp1qe7kOilS17DlSLHuWOrVNu46EikhUvE2kkLge4JOECvifC9Wiweh3lCFmQBa7Yi873Tb6QSGnO90l6QTaDxPrGdzr8PeB26GpnctbIxc7czIlOuk7PO+6xdENzKgLUk54nsOzbbqtl4uulZaiZ2n8r7DwmLQtSD3902sVleeEb6qDdSaEZVyHN4aRYZOqCjmHRsFAM22wnfluh2G1janievn8vXbeAzTJ5d1Y6dFtpKy/97NvASxOFtrhF0+plz0CCMd8zEGJis+C/UQpc1o5fEK9QI9fRAQhAopBKVCrEBsthWRiiUlYQRBqGgHKpbe1jnmtcxp19AoRLZuZEN5mIyoqQTLmL54n6G02spYZiVxSQPkM6U15aLLfDUgiDSOhLwfa3kb7YhKUVAuxnqUxXpIpeyhtekR97t9T/V3SbJL2k9+L/Fp2kokUgjmqwHlghMzuRjmayG+J7thHfVmnIQpn5MorYfGa60kLmmQnNMVxvrF6mRMkB2pt6G2pH7ITKM3Y6yeobezg4K64rCIISEmWsexSyI79khjKPiCSBnqjYDxcpw4p5h3uDEfUCm6YGKXg/nFgErJiftnxRqlIoJOhyAI0Ep3A+nj3wotNUbHBspOp0MUhRgjYz2Mdd1odxTXFzoc2VuyRkpDtRZyYFfRxl3FUZfFvGPjovQQMUl0x2wGANawsJxuWE9qvpJIHCklQou+tWPjowboo4HSOlBJmdIjJFfiBZa+Zy+ZeKBlPEueiyFXoqfxPJd8TnK9Gsb3pWSy4rPYiGh2DEJKJio5lIbZ+QDXcxBS4ngeEsWJ917l2uXTVCplcrk8c9ev8t4b3+Pi+VMUS0WKpRLN2g0+ePtl2s15yuVYiec4DkYILl5rMzmeo5B3kY7k6nyA70nGx3wQgk5kqNYjpiZyNjbIhpkMGLMcMnZsXTlkTrLmlFSYyXIeZoOt1dkwJHqCpFZlrDZre57mIXZtL/Dx+RqL9ZCxkkcx7zA17nHmUp1jhypIKdg3XeDUhTrKwK6pPIV8nj/5x5+3Gl+B57nU6k2KxRzPf/4xvvaNF9mze5o7juxn//7d3cYcxyGKYhLz8cU65bzL7qk8BqjWQmbn2xw9UCbxW7k828ZzJdsqPpE2K56TbD3MyhjifjOIsco+cWucwJdzvWJY1qANLlobxkse5aLH5dmWDXOF6akcAsHFq02EVd0f2VdivhrE9wTkch75XI583sfzPIIgIJfLMTU1QbFYYHGxjuu65HN+/F7Ox3Mc2h3FyfN1ijmHPTsLGBOL7ucuN5jelqOQi42fjVbEjYUOu7bnY5/nWxRSIXr4sn6fmI02PoreS4olDectKwL27MxTa0bMVTs4Mp6gQ3tLzC+GXJ1rIwDfdbhjf+x1F4Yxv6WN6dqZOp2AQj6H73sUi3mq1VrXqNl9T8Qi9PiYx/7pYsxnCDh7qUEh77JrewFtJbSLV1sU8y5TlVyPLeuWTJHIvjZcShL0pSETpAxz2Sk9ViJwrfZ5j1+MNowVPXZM5jg/06RUcHHd2KXg0N4Spy/UY7Iw7uMg2L8rjojUFmW7rouQgk4npFjMI6VDZazMjbkqyvRmBFXaMDXux/6xJs5VfPFqE6UNd+4rx37KEhYbIbVGxF0HyyBNN2/OSudkkGvFSlRE2bpc0asGYW1EYd0kSZAohGLimRYJ9ZB4Gd21Rt+c+BulNXt2FMj5DhevNrsST6XkcnhviUvXWlyba8cWZVvHkZIrM7N869vftxJPQLlcQhtDpVKi3mhYR/TlfdfGEASKM5caVOshh/aUui4erY7i/EyDXTvylItu16o+ak5Wcq2pPpYSZLjXbrgtKQsqE4Ax2IwKPQzXADM+cRCYGJCJIEmNobXODKuIny0xcknmyjv2lTh5vs75mTaHdhdRxlApuxx0ilyebVHIu+S8JWZQKcWP3nwfIQUL84vcc8+dRJGiPFak0w5oNtsUi/mu/SlmRjVSSGYXAowxHD1Qjh3IjLH8TYNS3mXXVC42W6QyVSR6qkH+Q9oC+jD3Bi3kwGSNZGRvEKk16hdWNhzDxDtTdAOjhGDN0DqMWe7aooeY+bP65rqC/bsKLCyGnJ9pdi3JhbzDkX1lG4ifaiFhBg0EQUi5XERrTbFYQAhBo9GMPe8d2fO+0jC9LceB3cXYJ0gIWm3Fx+fr+J7kwJ7isgRAIsWADvUDGDbmtdARkR4v3TgysYaEwHK1wDK7UOP6Qp1mOw4Ac2RaGZTmglPS07IL648iepmivksM/Ybo0T0klzaxPenQngLz1ZDTFxvWqYmU05fs9kMpxc6dUzzxxCNUKmUKhTxaawr5PJ7n0u50WKw1ePF7r8XZGGTS9pJbqiMFi82Qk+fr+L7k8N4iriOWlGg9lxw6ZkaN2bY9aF4zOdzUBpVSEEWKxUabKzeqNDvBxpKkKDLUWh0a7Q6OI5kql9hXmaSbv1qvUnGwrqiB7EdKGyolhzsPljh7qclHZ2rcsb+Uwi5xfRVF7Ng+xZf+2I+jlabVblPI59Ba4zoO5XKRy5eu8tFHZ7h4aYbHH3uop0+J89b8YsjZSw0mKj77p/MxL6eHGaw2M2og/i2kIIgUMzcWCUIVR6muQC+0boAxLOU8CUNFvdVZ4s616cFZK/LbXbM/zHC/EKU1xbzLnQdKXL3RSTGLS+9orcnnfVzX4fr1eZTSOI7E6NgdYtu2CT46eZYoisjnc5l+KoI4/HXX9jzTUzGwKa0HZkoYladuJf4ww+rCch7GkPjsxOvlOk4KIZmNBZiEJ5AsdUSQnR9/s8TqQc+VXuJpYl1KhvhqgWix1uiK2GEUkXi9HTq4h+npHbz62ttLC5LGZsYwMebG5DDVhlmZd8Sqxr4esXrJWC2WUs6ZTUkdb7rKqiR1hHAEwrnV2rvsiTUmXtRRol+z1WZ2do5avcHYWInrszd4970THDiwh2P33MH4xFh3krM2UBrd3YyYp5s6FyJeHyEy3A02OsfdqOwiK8txJ1ac+mIl6T5WeyX1XNfpplur1xsIIXjzrQ/xfY+33v6IXbt2IKVEK82u6R04jtMDZGLTr9XNcZYD/vqyw9wk42MXPStFFIZLDPKQ7A2J8suRg7M3BFGE6HSyszdYz/rMzBAmfu46cgBJjVHx1WuLTFTGKBYLzN1Y4Njdh7l+/QYvv/Im12/M8+wzj/GDV9+mVqvje65VnMV6GCFkZmBYEu4yqu1sHkcQqQitVMqDsa+uTfchBjD7JJJr8sWUX/HNKGt3oDJLyYwSHkYrsxS/DCit0EIOSPehY2cmOZiSKRUffJENMLFTtR4UszQgz27StpQOr776Djnf48knPk11scaBA3ezd+8ufu/ffIdnnn6U8fEKRhvq9SbjlbFYoQYYoxDCoAfogga3veRobsTgHC9KaaRSy9N9WO24I7NdqLrnCaS0gsKGczjJ+6ux3dwcKSkVV9yjQjM4roPre0vvJvE1Itv5OEn3MSzYLVfITvdhhtQ1Jk4aLR1noB7LcRzy+Rwff3yWVqtDtVpn5/R2btxYQEqJijRjlTLFYoF2J2B3qUAYqa5D2KA45VFt9wQvLdOYC4IgRKmIQqGwnF8aUjeZ766eKSXFtVW7V9u8Dl5rXTnuMqP/UzqEpdTvyy8z4vkoB9ZRdUc9M8bQ6QTs3LmdJ596lEIhh1aat976gB//8Sc5eeocCws1SuUitVoj0bmvqN8raXtgPVKi8RrGvOz5qk85uNkYxgzXLd0uRWnNrl072L9vN1ppcrkcM1evs3PnFA8cv5trM7O8+tpbVCpj1GqNPzRnc68u0PAmKe6ScPGlv1I8zWoVvev0uBsF1AN1SUrz6Ufux/M83nvvBMZozp+7xOOPP0yr3eH48bv59ndfod0OcKRjncdHj2tU25vtcbdc8WtSaftvxfE3o9DPJ/hSkUIrRbPZ4sqVWQqFPNsmxomCiEI+zwP3383ZsxepNxpWcjG33RhvNhlwbza89AayjVCBE8cLZ9HRWITVVqs84Lk2A47YG95+ot3V1ptubq5KqVTkkYfvj4/QM5pO0OHonYc5e+4Sly7N0G7HB5b2579diXq+X9IRDBoz9vi/0aGyw86iNBvIJ8i1IZHexMFpdkqnLpNxL/0s0cXoAe8kHnHZ9c3wbw/7Zqp+pDUL1UXuuecOKhNjRFp1TQYaOHL4AJ1OQKPVBinQxnSTE6217fWMeS1tm9TiZTlXbaKmt79Bk+nLleXnJbppL7KfSyGQiIHPk+Cy7GdmKfXFoLaJlX5RGNJudzh9+gKNeiNOvNP1JBRcvXaddrtDu9XuntgixbB+MbztIWOS3W+LgWMe3nb2uJNVyJaPNjrHXYZEJroZGVdXxC0WPYQQdKw/SKvV4tXX3sazWag8z2Nm5hpnz15kamqSarV2y/u7rrEma7TORH83Jd3HIC4+CTP9JEpJidddvd7E81w+9/gTvPjSq1ybvcHkxDjtdocXX3qVQ4f2oZRibn5hVX0elZJjM6WkXl3f+lR3ayJJWfTR9Ijcy0XvT+I/IWGhuojjOBy54yDHj9/Nt779fZTRvP6jd2m3Ozz66AOUSkWq1VocF73uf7dmTrpMd9+14dbqdZs7P0loWghqtQalUgGtNXfffYQwDPnmN1/k7NmLPPHEp8nlfMbGSjSbLaIouq0VeCZj/Tac6f3DBDHGQK1Wp1wuxYe1F/I8/vgjnDx5hgMH9nDo4D46nZByuUQYRvbgi9tZ5WvYfNPAEDqbnNTRS68H58aPRbvBCxApjav0AF3L4LpL4r4eqgcKw5BGo8n27duIIgUIqtUaUkoWF+u0rN+y7/sYYyy/46GUHjGmwW0POy8gSRSZXKs9a2BJB6R7vpn2L9bxMZ0r4ok2QKzuy8losn1Shx3+NCwAa/ihVAypB6MOtAJBGCra7Q5jYyWEECwsVHnzzfd48slHabXavP762/YMJR/Pc7tOVsPGNKrttHFxtdda695M+rAG42PGgqWgOQ396z3NRKZOjl1N3VHnCtnO0mq2iCJFpTKGlA6vv/4OR44c4FMPHWd8fIxvfvMldu7czrFjd1Isxoyv4zoopUZgmMFtj8IwUspu/Ztxmkl6/vuPN9ZmE1w0hxUNt/xAzJVeQggazRZCCMpjZU6dPsvMzCyfevh+Wu0OO3du58EH7+Httz9Aa8PYWInFWj3zzILb4bplpoE/LEWIWAeTz+dQSvHyy29w59FDXYkpDCMefOg+hBC8++6HTE1NUq83Mp3A/10qawqVHUgjbyPrrQDqtTpjY2Xeeut9pBA89OB9RGFkU69pPNfh/vuP8eqrbxGGIWEQosKwe4L97WitXq8taU0+vb19MT02lNSv4RrRDdT09vgcD2m72WwxP1/l0sUrPPXMZ/F9jzCMut8OwoiDB/dx6tR53n77A3zfp92Jkw4xJOE0t8gfhgGBj4PmbZOkpGwNIqugp11eJwXlWe/oHu1otuFzcN3hbUdKUa83uHLlKvcev5v9+/cShJF9x8SXjq3GTzz5GXzfp1pdpNlo9WQkHjq+zPujxszwMZu1jTtr7YZFlm4KD2NWKPKBzZDJaNF64Dcs2TBDTPYDyafRKKWo15vs27eb+44fIwiCzNw1UajIF3J85jOfQinNYq0e+5xoPXx8g/psT0JZ85i7mUpXPu6byfXeVAeqbnR6n510mXbU5nIxme+naolhiW8G59wS3ckb8G0hUZEiiiKiKKJRb1CpjBGGsSZXJlkWiIPdgk7IyY/PoJSKMYyQIPQQre8wo6vsSb+RaVEeMGbTM53Z417+7OZqptfP9C6zUaSJ8DDmkBHPh79jRtXXw+5DFEXxETcLi3z9a99h7sY8nut12xUGXMchCiO++53v8fHJ04yNlajXG2tve+ScjHqH0fOmB8zVEMXqpmt6b0eROghCxsbKPPfcE3Q6Ad/4xne5enUWz4vjqhxHopTilVde58yZ83z2s5/moYeOs7BQXXa67O1sTdoEDLMcSsUqmd5brsSySjvPc7nz6BF+4j94Hs/z+NrXvs3MzDVy+Rytdoevf/07nD59jue/+CwPPnQflfEKrVabThB2D/e6XZR2YgiPufHGx0wozc7JNpq8jSZ/q647ajIENBoNcrkcYRhRqZT5wvPP8J1vvcQf/MG/5TOPPcwHH5zg2tVZnnr6sxw6tJ92J6BQyKNUbH/ybKz1MJI9zDSwUpK/2rpZ8nJa2XELIh9XoUTY0It1Ke2ajSbFYgGMIQpCyqUSzz77BL7v8eK/fYWF+SpPP/M4d911B51OB6M1uZyPlJJWs2l9ks0tGPNqx61vKuNwC/1h1neU3LrOLjTQarUplQo9u9JxnfgMARMbTXN+bqmXxuB7Hr7v02q119Hz9Y7ZrK1av2Zxjd+6Kf4wCV8QqgilVPddZdN9iAFBNMqm+xhUgjDoGgqXW2YVUshMsTxJR+YMCIgPwoBGo4l0HFrttvW8q/PKD16n1W7z0KeOc+H8Zb797Rf53Oce5eChfYRhhOM4FAp56o0G7U7b+tCsru34lNzBh1sppWKmWogBaVeTNLQDUqD0WasRApelDBrLQmU33jTQ696AWcpQ6UinZ3HlCPcGOcK9QSkVZ+nOBBhncF27aFkZFGInpYhOJyCfz1Mo5Lly+SrffeFlBPDFLz7L+HiFQ4f28+ab7/HSSz8gjCKOHTsKGCqVMlGkrDQ1wLFrSPaG9JlMWX0TApSKz9BerXuDk5G9AQFCEesJWH5MNJvO9Aq6Pivx+chO3wQMBpjkUM+B9FJKHMcZMLlmKMAIITIXTUpJEIREUcTYWJmZmVle+O730Vrz3HNPsm1qkk67g+d5PPXUZ8HAKy+/BsADD97HWGWMhfkqjuNmZso0xmAGtD1q0ZcOPMWSxlV63CVHQfcBjNE6nisxLOZjA42P/VeS2Fj1eRXHeW0HU+1RDjzpk89WVdfWy9o9AkOz2UJKyczVa3z/pR/iOA6f/8LT7JzeTqcTxNGNURwB+dhnH6HVavP9772KMTA1NcnMzLWYdAyRkhghJYkRUpIeJCWZeE6HYq8+66NgaY3WKybdhDMfkwO2xCCL1yfqEkja7Q6tVpuXv/canufx7HNPsXPnDsIg6um7Vhrf93nmxz7H/v17+cHLr3HixCmiSMWZtm6VUmXVY47TmAkp1nvUwM3xh5FC3DZRgUJAo9FkcTFOFvT5zz/Njh3brB0pm4/K5XI8/czjHD5ykI9PnmFhfsGGnNwmEQTJCcCIZQeCbI6U1MfDJEfSOW4v/IkRTK8YwfQ6roMzgOkdWtcYxADG03FdqtVFtm/fxvNffI5CIU8URTiu29NvR/Xey+XzPPv5p9j+zge8984HtDsdJouFnpx+K2N6h/AhiW5HxP1cNQ+TxfRa4UJwi3iYtBN4wke4rkMQhLz2xntE3QyQS+efDrbpmqEx2UoppCMz3xlVN8lDt2xNpGDmylXyhQJvvfkOaoBorLTCdfqmx/IBnufyxutvUywW4uzn/SoPM2RRSXgYkUnuk5NMHMdZng1uWF2WEgSln0dKsXfXTh48dlfMVPdLSRueCTytfLFxSI4jiXTEyROn6ARhd7LECN5q1GEaiTbVrKnuYInRdR0WF2tcuTwzsG5y5HBWu47rsFitZTK9iXfBEKvE8DkZ0fao+ex/HoQBDoZHjt9j+cz1udzdHH8YAYV8ns8+/mic+jPJ8Jkk/BlEOTQDOX6AKAxxXTdbOTesbpJLd4hScFj9+OjhCC+VEXTFSuZRbZthCl+BVgqjNa7nLU8pZkYoixNsJ3tDfbaPj1vt9Qgt8GbwMEn/fd/j8OEDPYMZlnw5fm56khD3l3arjZ/PZdYfWtfmyh2kbR1VX2lN0O5QKBYGqgMGjUlbHmZQ29ryIXIADxMFIUop8oX8MiwztC7ZcUkGgWcPRhJCZLhs3gKm13EkRoj4eN70AJQeevyt1gY9BGCiKEKGzsBANj1C0zvsYM5h9ZMwEzeIsk+LMyPCf4e0PYrpVVFsXomd0U0GNzAkgC+D6TXG4HgujpPrkun1WKvXGDWQNg0saXQ1vS4NGoMwa1fc6Q1Q3K2kfpzePXYEz3rHmNGKt7Uq7nTqTMlBUpI2K1fcLZ35GEuyWX7Hm06SpBS3dXamP+xFCoF0xDKStBa/wXUr7hAgHYnrSjxH/jsfGfhJKwbIeW5sl5O3IpAtZR8QQtAOIpTW5Dyf8WKeTrXeDVbXxiAG0PvEXRA9WF8RKRWn+5BiAHM5QCNhTx1hgO/tqLaV0kSJm8Eg1C+y2+56AurVp/sAQaQ12radycPYumIYSbKHY2gMpXyOUt7DcSTNTmg3tBghbt10gDFdVHe9WuPDCzM8cd8dAOygzPXFBlGkU8fiDv7KsAPjHceNF1cP6MFQNsagtRg6guFte5ZxzQZ2sY62B6tADAKJtJbwrHeGjjs130JAOZ9jx0QJVzoorXnj1PnUIVtrY3vXddZAzNhLfv+19ziyZwd7to3jOJJi3qMdREOllJUhMnHrDjO4VW2LNa9lT/Fdh5zv4joS33X46g/f4+TFa/bcpzXr7VYNMEKnwjjjnSi5vljnV3/3Bf74Ew9x74HdFHM+pXxui4G4xdyL1oa5WoPvvHWC7771Ea7r9J0HucE8jIjVLrHiKtWS5zjMVmv8w6++yL7tk2yvlJFCrOnwg61ysxCkoB2EXJidZ6HRIuc6PXxOgmHERgKM7zqnpyuF3ZcWmriyF1oTzebF6/Ocuza3tWKfBKAhjt7Mee4yKmeINcK7x4sbBzDamF968uiuJ87eqDHfCPDd5VK5Y8W3rfIJIk4952zH+pd2EPHk0V0c2FZ+d8MARmnz21Ol3K/9qUeO/Ozvvn2OywvNNQpnW+XWAQ/4ruRzd+7iuXv2NrUxP7uhUlKg9H+7Z6I4/zOP3/XlD2cWClerzS0t722EaXzX4eh0hX2T5feUNn9eG/P9VZG51dgS3n7nve7fUoh7XEd8SSCObi3FbcXWtJQxL0RK/y7QAHjg/vs2BsOkg848KT9A8EHSi1Bpotskq4EQAldKXBmbMoI+K/tmlsQfOjnieDX1pBD2/IPNK6sCmGqrnTC/XFyoEtpIO20M+ybGOTQ5QceGXyQ2JUcIlM26lJ6gbpRe6jjfpfy2scoymcQEUNP+NYmLQXqi+53R05GAiZo/73mESnFhocqVao1y3ue+6Z04UhAotXRYuO1XbOLQ3fOTkrE41vIrUhGK8fPYRuOkrPeOBUyRAliAnOuw0GrTiSK2l0oAhNasolKHxCeHo+etj7EUgkYQsNBqs71URAhhN6vpOexcG5bqm6X7AtGzRhsGMP/1P//t2PMcw0KrbRcknsRtxSI/ce9d/NF77qbgu5RzObQxVFttthUL+F4sds8324RKsaNcItKaWruD7zpoYyj6HjcasciujWayUMCRkhuNJgbDjnKJVhhSawd4jqQVRkyV4nekEFRbHVphiGNPjt9eKqKM4XqjwVSpCAZeOn2Of/HWu3x07Tr1TvydzxzYy089dD93bN/GRCGPFIK5ZgtXSlphyEShQKAUjU6HbcUirhv3Kee6tIKQUs4n0pp2GDFZLFDwPa7XmxR9j7znMVtvMJ7PEag41qkTRYDgtQuX+I3X3qTaavPowX389EPH2V0ZI4gU20oF6p2AVhhS9nO4juSbH33MD89f5KG9u3nh1BnevXKNT+/fy09/Kq4ngKliEQPMNZsUPI+FdpuxXI6S76O0Zq7VIlKavOdSyeVYLX5aFQ+z/+f+8hJKtIuS3s3tSDFZyOO7DrsrY0Rac7m6yMP79vIT997Faxcu8+Lps7TDiB+78zBzzRYfXZul5Pt4jsOuSpk3L16h4Ht0IsWj+/cgRDyxAE8dOcSl6iJnbsxT9D3mmi0e3reHn3roPl45e4EXTp2l1ungOzEAPnH4IM0w5AdnL/C5wweYb7V4+ewFMLHqPMFU7SjCdxwmCgWevuMQY/kc3/jwJAXPo9pqs29inGYYcLXW4P7d00wU8rxy7gIThQLzzRZTpSKdKKLaanPvrp0cnprk2ydPc3Bygh3lEt87c447prZRDwI6UUTdBsvdaMQCgyMEnUhRyeeYKBRoRyH3Tu/kYrXKXLPFjlIJz5G8PzOLMkuYx5UOnSii6HuM5WLPxC/cfQdKa77z8Rm2F4tcqdXYPzHOT9x7Nz+6dIU3LlwmUIqJQp7psTLaGH7nL395YwDm0Jd/If2zAvx9YIf9/QvAjxL0F1ns40hJqFTsEW8MnnSQAjpRjHrTLhFKa3zH6brMJjvSt0rBIFI4UnTJgRSCUGk8xyFQEa7FNMmIgkghRFw/sKg+57qI2K3j54GfBH4D+HVjkwOESmFMrL1O3CEjSwodKQkjhcaQc5w4mYAlQzF5lYRaxdZ7140tz9qQcx3CJDGBJSkpnvBzwH7gN9MOY4HSuFIghUQZ3QXyVDkKPAv8ujbGJK4KgU2G4DsOShtcGfc/6aPnOJYk6S75mvmV/23jxOpUGQceAP66ZTouJvQVO7lLzPLyZop+hnavzw+20OdI7frZikJjDAVvucN2+v2+b/1d4Anb91NdRtgyw8OYfcdbGovT93//WN2eORiozbwXOA78pkz5P6f76yy1UAF+GvhHwG7gOeAfSSFM4uGdbjPRq2a17eDgORvM9C5rEy4A/zp17ylgEngM+GdAAfhjFhNdtu/8x8AdwN+yzx8HOkAJeAH4C8D7QAv4tgXGn7N1fxnYCdxjMdtR4O8LIebt8z9tgfhbtn9fB8aAf8/2MwA+A/wp4D7gRqrvPwPsA/42EAJfsGLnc3Ysh+yO/ofAeeB5+/yPAr8N7AIesWOdBZ6x45gD/gTwVeAY4ANfBF4Dfg94CTid6sefAaaB/wP49y1g/76dm1+0/XTt3HyFJce5/wrI2/Y18ONA2/b/K8AZoAz8N8BV4B+vSapbB8Bo28G9FtqlXez/wS7+t4A/CxwA/oat87PAf2Yn5M/bRf0K8H/Ze/8EuMu+8xu2jV+yAPKs/faUncDH7KL9Pfvt/xn4S8CCXbxfs316HPirQBKx9gzwQR+w/LxdiN3A/2Lv/Y/A/24B5bt28e6x/RXA37Hv+BYwnwCeBn7F1v8LFqB94FftRvoZ4P+xC/4bwBE7hr9u6/ySXdCGfWfKbsq/aTeKtBupDDxsMWXCDvwJ4I/Yd7Eb8m8B99t5Tfr8oN04Gy9W95UOcCfwmxaSf9J25DctJvjTdjd+aHegYwHoy3ZH/WPgn1rg+o/svb9mJ/EhW+eI3emfsgP/VeCbdrH/ogWiX7bA9mfsbjpp2/ordsEetLszAZjdwHwfpvyzFpg/BH5gFyCymOUfWIzxv9oF+4Elx9r2519ZYPoV4J/bC6CZarNh3/eA37IA/HngUfveIrDdztljCXm3pAfgSbsx/28LmL9kx9qxAPkzFmsq4HcsIBtb/3eAty2m/ZTFUr91KwAmD3wEfMl2rmW/l6DIup1036L4il2sX0y949vF+JHdMefs/dBO5F5LJv4VULQTlAdqKQzZsTzAIvBxIrTZb/4YcDfwtVS/m/YbSZmwQDtjAd6xGCqwC520Z+z4lP0/SjSlKYwgUkBiBmDlhdSGc1PjPW7J18XU+/+5Jen32u8VUyyTtH3YkZpHbZ9P2U1cs0AapbDO/wmcAN7ZbIDBdqSZoX5O/u9PKqEt+j1p61XswJOF8FLfTXb/dbv7kwU6npo0kXrf7Vukr1s0nWCFpLwL/Cep3/0HOSYLIezfWQkyTB9JH3S+e2S/bzLYgP5o36hvPZ60JPZ5y8MVbF3T14bKaFf39R8LbP/SboD/z5Lq+mbyMFhautvuyLxdSCeFPZLO5uzOesfS2WspQPPt8w8siXvMoutJi0pbFnXP2F0jbJ2k/yWLTRzgz1nU6wL/xn4rsHxAUn7Pfufv2t2pLTn8guVXZuxVSM2PnwKIpG0v9dxLPU+AvmWx2712frTtl9NX37Hz+CM7lv/U/n+/nacLlpk2dsNM2TEKO+fXgCsWmz5l+z6b6n/SZ2nrvWDndmKzmd66Hejv2938pBVRE5R71qJdbQdkLP/ytGWI/6QlI2ft+1eB/8nyDImEct3W+WvAN6xIOZeq0wQu2e/8rGWkv26lketWmnkho99fsovwXUv/vwz8l5YP+YVUnxdtv8+msMVZ+/xCCugv2Gcd2yaWqf0bll/5oQWMayn+6aLtS9Xeb1iG968Av27nVVgA71jAf8fO8f9rnyV9+UvAf2///+9sny+l2IIztv7ftHzZL/eRvk1R3AmL5pLdVbcAqO3kFe1ONhaDtFP1dttJiux7rRSqdS0/8xUr+iq7WyZtnUQ6a9pF8G39BJNN2Pf2WiB7fsjkTFsA71hGtmwnOuHRolT7SRvJ33m7CMnzTqoPybt7LYAHKRJr7PzkU6TXTc1PwV5zdm4SScmz9RxgmwU8L9XWNvv/XOo7Yap/Tfu9sp2fbjn7y7+4KTyMSTF9WSXN27T76l0e8N5D9vd/AfxBioFspSYmXUf13e9YTFW0IuRvj9hJV9O2VXtl9bmZ8Xe63UF/X+prTw34ftRXv5Vqq5nitZJvzGbU6/eLzZqvZgbPuXEYZqtslS3v262yBTBbZQtgtsoWwGyVLYDZKlsAs1W2Srr8/wMAUx2PePfgBCQAAAAASUVORK5CYII=')
SET IDENTITY_INSERT [dbo].[DIAGRAM_TEMPLATES] OFF

PRINT(N'Add rows to [dbo].[NEW_REQUIREMENT]')
SET IDENTITY_INSERT [dbo].[NEW_REQUIREMENT] ON
INSERT INTO [dbo].[NEW_REQUIREMENT] ([Requirement_Id], [Requirement_Title], [Requirement_Text], [Supplemental_Info], [Standard_Category], [Standard_Sub_Category], [Weight], [Implementation_Recommendations], [Original_Set_Name], [NCSF_Cat_Id], [NCSF_Number], [Ranking], [Question_Group_Heading_Id], [ExaminationApproach], [Old_Id_For_Copy]) VALUES (31183, '5.2.8', 'Determination of pipeline critical facilities:
INSERT INTO [dbo].[NEW_REQUIREMENT] ([Requirement_Id], [Requirement_Title], [Requirement_Text], [Supplemental_Info], [Standard_Category], [Standard_Sub_Category], [Weight], [Implementation_Recommendations], [Original_Set_Name], [NCSF_Cat_Id], [NCSF_Number], [Ranking], [Question_Group_Heading_Id], [ExaminationApproach], [Old_Id_For_Copy]) VALUES (31184, '5.2.12', 'If damage or destruction of a facility has the potential to meet at least one of the following criteria, the facility or facilities should be designated as critical:
INSERT INTO [dbo].[NEW_REQUIREMENT] ([Requirement_Id], [Requirement_Title], [Requirement_Text], [Supplemental_Info], [Standard_Category], [Standard_Sub_Category], [Weight], [Implementation_Recommendations], [Original_Set_Name], [NCSF_Cat_Id], [NCSF_Number], [Ranking], [Question_Group_Heading_Id], [ExaminationApproach], [Old_Id_For_Copy]) VALUES (31185, '5.2.13', 'If damage or destruction of a facility has the potential to meet at least one of the following criteria, the facility or facilities should be designated as critical:
INSERT INTO [dbo].[NEW_REQUIREMENT] ([Requirement_Id], [Requirement_Title], [Requirement_Text], [Supplemental_Info], [Standard_Category], [Standard_Sub_Category], [Weight], [Implementation_Recommendations], [Original_Set_Name], [NCSF_Cat_Id], [NCSF_Number], [Ranking], [Question_Group_Heading_Id], [ExaminationApproach], [Old_Id_For_Copy]) VALUES (31186, '5.2.14', 'If damage or destruction of a facility has the potential to meet at least one of the following criteria, the facility or facilities should be designated as critical:
INSERT INTO [dbo].[NEW_REQUIREMENT] ([Requirement_Id], [Requirement_Title], [Requirement_Text], [Supplemental_Info], [Standard_Category], [Standard_Sub_Category], [Weight], [Implementation_Recommendations], [Original_Set_Name], [NCSF_Cat_Id], [NCSF_Number], [Ranking], [Question_Group_Heading_Id], [ExaminationApproach], [Old_Id_For_Copy]) VALUES (31187, '5.2.15', 'If damage or destruction of a facility has the potential to meet at least one of the following criteria, the facility or facilities should be designated as critical:
INSERT INTO [dbo].[NEW_REQUIREMENT] ([Requirement_Id], [Requirement_Title], [Requirement_Text], [Supplemental_Info], [Standard_Category], [Standard_Sub_Category], [Weight], [Implementation_Recommendations], [Original_Set_Name], [NCSF_Cat_Id], [NCSF_Number], [Ranking], [Question_Group_Heading_Id], [ExaminationApproach], [Old_Id_For_Copy]) VALUES (31188, '5.2.16', 'If damage or destruction of a facility has the potential to meet at least one of the following criteria, the facility or facilities should be designated as critical:
INSERT INTO [dbo].[NEW_REQUIREMENT] ([Requirement_Id], [Requirement_Title], [Requirement_Text], [Supplemental_Info], [Standard_Category], [Standard_Sub_Category], [Weight], [Implementation_Recommendations], [Original_Set_Name], [NCSF_Cat_Id], [NCSF_Number], [Ranking], [Question_Group_Heading_Id], [ExaminationApproach], [Old_Id_For_Copy]) VALUES (31189, '5.2.17', 'If damage or destruction of a facility has the potential to meet at least one of the following criteria, the facility or facilities should be designated as critical:
INSERT INTO [dbo].[NEW_REQUIREMENT] ([Requirement_Id], [Requirement_Title], [Requirement_Text], [Supplemental_Info], [Standard_Category], [Standard_Sub_Category], [Weight], [Implementation_Recommendations], [Original_Set_Name], [NCSF_Cat_Id], [NCSF_Number], [Ranking], [Question_Group_Heading_Id], [ExaminationApproach], [Old_Id_For_Copy]) VALUES (31190, '5.2.18', 'If damage or destruction of a facility has the potential to meet at least one of the following criteria, the facility or facilities should be designated as critical:
SET IDENTITY_INSERT [dbo].[NEW_REQUIREMENT] OFF
PRINT(N'Operation applied to 8 rows out of 8')

PRINT(N'Add rows to [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS]')
SET IDENTITY_INSERT [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ON
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 7, 'FAA_PED_V2', NULL, 8524)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 52, 'FAA_PED_V2', NULL, 8527)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 56, 'FAA_PED_V2', NULL, 8528)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 89, 'FAA_PED_V2', NULL, 8529)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 198, 'FAA_PED_V2', NULL, 8532)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 211, 'FAA_PED_V2', NULL, 8533)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 250, 'FAA_PED_V2', NULL, 8534)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 367, 'FAA_PED_V2', NULL, 8541)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 477, 'FAA_PED_V2', NULL, 8530)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 1612, 'FAA_PED_V2', NULL, 8525)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 1679, 'FAA_PED_V2', NULL, 8539)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 3769, 'FAA_PED_V2', NULL, 8535)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 4023, 'FAA_PED_V2', NULL, 8538)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 4194, 'FAA_PED_V2', NULL, 8537)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 6322, 'FAA_PED_V2', NULL, 8536)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 7517, 'FAA_PED_V2', NULL, 8540)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 8685, 'FAA_PED_V2', NULL, 8526)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (47, 8686, 'FAA_PED_V2', NULL, 8531)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (58, 452, 'FAA_PED_V2', NULL, 8486)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (58, 697, 'FAA_PED_V2', NULL, 8489)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (58, 1543, 'FAA_PED_V2', NULL, 8492)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (58, 1944, 'FAA_PED_V2', NULL, 8490)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (58, 3763, 'FAA_PED_V2', NULL, 8484)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (58, 3856, 'FAA_PED_V2', NULL, 8487)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (58, 3857, 'FAA_PED_V2', NULL, 8488)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (58, 3858, 'FAA_PED_V2', NULL, 8491)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (58, 8684, 'FAA_PED_V2', NULL, 8485)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (59, 493, 'FAA_PED_V2', NULL, 8498)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (59, 759, 'FAA_PED_V2', NULL, 8495)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (59, 1160, 'FAA_PED_V2', NULL, 8496)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (59, 1543, 'FAA_PED_V2', NULL, 8499)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (59, 1776, 'FAA_PED_V2', NULL, 8497)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (59, 3851, 'FAA_PED_V2', NULL, 8494)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (59, 3852, 'FAA_PED_V2', NULL, 8493)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (59, 8656, 'FAA_PED_V2', NULL, 8500)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 4, 'FAA_PED_V2', NULL, 8501)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 7, 'FAA_PED_V2', NULL, 8503)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 73, 'FAA_PED_V2', NULL, 8505)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 124, 'FAA_PED_V2', NULL, 8507)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 759, 'FAA_PED_V2', NULL, 8513)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 1543, 'FAA_PED_V2', NULL, 8518)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 3763, 'FAA_PED_V2', NULL, 8502)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 3769, 'FAA_PED_V2', NULL, 8517)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 3851, 'FAA_PED_V2', NULL, 8510)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 3852, 'FAA_PED_V2', NULL, 8509)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 3853, 'FAA_PED_V2', NULL, 8514)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 3854, 'FAA_PED_V2', NULL, 8506)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 3855, 'FAA_PED_V2', NULL, 8508)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 3857, 'FAA_PED_V2', NULL, 8511)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 3858, 'FAA_PED_V2', NULL, 8512)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 3859, 'FAA_PED_V2', NULL, 8516)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 3860, 'FAA_PED_V2', NULL, 8519)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 8684, 'FAA_PED_V2', NULL, 8504)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (60, 8687, 'FAA_PED_V2', NULL, 8515)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (62, 452, 'FAA_PED_V2', NULL, 8522)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (62, 1160, 'FAA_PED_V2', NULL, 8523)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (62, 3763, 'FAA_PED_V2', NULL, 8521)
INSERT INTO [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] ([Question_Group_Heading_Id], [Universal_Sub_Category_Id], [Set_Name], [Sub_Heading_Question_Description], [Heading_Pair_Id]) VALUES (80, 452, 'FAA_PED_V2', NULL, 8520)
SET IDENTITY_INSERT [dbo].[UNIVERSAL_SUB_CATEGORY_HEADINGS] OFF
PRINT(N'Operation applied to 58 rows out of 58')

PRINT(N'Add rows to [dbo].[NEW_QUESTION]')
SET IDENTITY_INSERT [dbo].[NEW_QUESTION] ON
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17036, 'TSA2018', 1, 'Does the organization have a written policy to identify critical facilities?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17037, 'TSA2018', 2, 'To determine facility criticality, do operators pay particular attention to facilities on critical pipeline systems?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17038, 'TSA2018', 3, 'To determine facility criticality, are facilities that provide a primary service to designated critical infrastructure and determined a "single point of failure" deemed pipeline critical facilities?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17039, 'TSA2018', 4, 'When determining facility criticality, do operators conduct operational assessments to identify pipeline facilities that are necessary for critical pipeline systems (as designated by TSA) to function?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17040, 'TSA2018', 5, 'To determine facility criticality, are operators prepared to provide documentation including how redundancies are evaluated to TSA if requested?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17041, 'TSA2018', 6, 'Do operators coordinate with internal business functions (e.g., sales, marketing, and rates (tariffs)) to identify pipeline feeds to potentially critical infrastructure? This includes large volume customers such as natural gas-fired power generation plants, military bases and defense industrial base manufacturers.', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17042, 'TSA2018', 7, 'When determining facility criticality, do operators take into consideration whether firm or interruptible contracts are in place?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17043, 'TSA2018', 8, 'When determining facility criticality, do operators consider adjustments based on the severity of consequences as a results of the loss of facility or disruption in service?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17044, 'TSA2018', 9, 'To determine facility criticality, do operators consider their ability to continue operations as a facility backup as long as they demonstrate no impact to deliverability?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17045, 'TSA2018', 10, 'Do you apply TSA guidelines for critical facilities?
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17046, 'TSA2018', 11, 'Does the organization designate as “critical” those facilities which, if damaged or destroyed, would disrupt or significantly reduce required service or deliverability to installations identified as critical to national defense?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17047, 'TSA2018', 12, 'Does the organization designate as “critical” those facilities which, if damaged or destroyed, would disrupt or significantly reduce required service or deliverability to key infrastructure (such as power plants or major airports) resulting in major operational disruption?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17048, 'TSA2018', 13, 'Does the organization designate as “critical” those facilities which, if damaged or destroyed, would cause:
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17049, 'TSA2018', 14, 'Does the organization designate as “critical” those facilities which, if damaged or destroyed, would disrupt or significantly reduce required service or deliverability resulting in a state or local government''s inability to provide essential public services, and emergency response for an extended period of time?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17050, 'TSA2018', 15, 'Does the organization designate as “critical” those facilities which, if damaged or destroyed, would disrupt or significantly reduce the intended usage of major rivers, lakes, or waterways (for example, public drinking water for large populations or disruption of major commerce or public transportation routes)?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17051, 'TSA2018', 16, 'Does the organization designate as “critical” those facilities which, if damaged or destroyed, would disrupt or significantly reduce required service or deliverability to a significant number of customers or individuals for an extended period of time?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17052, 'TSA2018', 17, 'Does the organization designate as “critical” those facilities which, if damaged or destroyed, would significantly disrupt pipeline system operations for an extended period of time?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17053, 'TSA2018', 18, 'When evaluating the criticality of a facility and considering system redundancies, contingency plans and available mitigations, does the pipeline operator exclude mutual aid from consideration?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17054, 'TSA2018', 19, 'Does the organization have a written policy that identifies critical facilities in accordance with:
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17055, 'TSA2018', 20, 'Does the organization have a written procedure that identifies critical facilities in accordance with:
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17056, 'TSA2018', 21, 'When determining the ability to continue operations (e.g., product free flow or alternate or redundant prime-mover capacity) as an adequate facility backup, does the operator first demonstrate that there is no impact to deliverability?', 'L', 0, NULL, NULL, 'TSA2018', NULL, 5261)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17057, 'C800_53_R5_V2', 2, 'Does the organization have an official who manages the development, documentation, and dissemination of the access control policy and procedures?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 9)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17058, 'C800_53_R5_V2', 3, 'Does the organization define and document the types of accounts allowed and specifically prohibited for use within the system?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 1)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17059, 'C800_53_R5_V2', 4, 'Does the organization align account management processes with personnel termination and transfer processes?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 713)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17060, 'C800_53_R5_V2', 5, 'Does the organization disable accounts that are expired within a defined time period?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 713)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17061, 'C800_53_R5_V2', 6, 'Does the organization disable accounts that are no longer associated with a user or individual within a defined time period?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 713)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17062, 'C800_53_R5_V2', 7, 'Does the organization disable accounts that are in violation of organizational policy within a defined time period?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 713)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17063, 'C800_53_R5_V2', 8, 'Does the organization monitor changes to role or attributes?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 713)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17064, 'C800_53_R5_V2', 9, 'Does the organization approve access changes after initial installation of the application?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 10)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17065, 'C800_53_R5_V2', 10, 'Does the information system enforce an attribute-based access control policy over defined subjects and objects?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 10)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17066, 'C800_53_R5_V2', 11, 'Does the organization block, strip, modify, and/or quarantine data after a filter processing failure in accordance with their security/privacy policy?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17067, 'C800_53_R5_V2', 12, 'Does the organization, when transferring information between different security domains, modify non-releasable information by implementing a defined modification action?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17068, 'C800_53_R5_V2', 13, 'Does the organization, when transferring information between different security domains, parse incoming data into an internal normalized format?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17069, 'C800_53_R5_V2', 14, 'Does the organization, when transferring information between different security domains, sanitize the data to prevent:
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17070, 'C800_53_R5_V2', 15, 'Does the organization, when transferring information between different security domains, record and audit content filtering actions and results for the information being filtered?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17071, 'C800_53_R5_V2', 16, 'Does the organization, when transferring information between different security domains, implement content filtering solutions that provide redundant and independent filtering mechanisms for each data type?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17072, 'C800_53_R5_V2', 17, 'Does the organization, when transferring information between different security domains, implement a linear content filter pipeline that is enforced with discretionary and mandatory access controls?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17073, 'C800_53_R5_V2', 18, 'Does the organization, when transferring information between different security domains, employ content filter orchestration engines to ensure that content filtering mechanisms successfully complete execution without errors?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17074, 'C800_53_R5_V2', 19, 'Does the organization, when transferring information between different security domains, employ content filter orchestration engines to ensure that content filtering actions occur in the correct order and comply with organization policy?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17075, 'C800_53_R5_V2', 20, 'Does the organization, when transferring information between different security domains, implement content filtering mechanisms using multiple processes?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17076, 'C800_53_R5_V2', 21, 'Does the organization, when transferring information between different security domains, prevent the transfer of failed content to the receiving domain?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17077, 'C800_53_R5_V2', 22, 'Does the organization, when transferring information between different security domains, ensure that the process that transfers information between filter pipelines does not filter message content?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17078, 'C800_53_R5_V2', 23, 'Does the organization, when transferring information between different security domains, ensure that the process that transfers information between filter pipelines validates filtering metadata?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17079, 'C800_53_R5_V2', 24, 'Does the organization, when transferring information between different security domains, ensure that the process that transfers information between filter pipelines ensures the content associated with the filtering metadata has successfully completed filtering?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17080, 'C800_53_R5_V2', 25, 'Does the organization, when transferring information between different security domains, ensure that the process that transfers information between filter pipelines transfers the content to the destination filter pipeline?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 717)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17081, 'C800_53_R5_V2', 26, 'Does the information system log the execution of privileged functions?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 23)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17082, 'C800_53_R5_V2', 27, 'Does the organization audit and review changes to attributes for applicability at a defined frequency?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4630)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17083, 'C800_53_R5_V2', 28, 'Does the organization route remote accesses through authorized and managed network access control points?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 722)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17084, 'C800_53_R5_V2', 29, 'Does the organization prohibit the use of organizationally-defined types of external systems?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4631)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17085, 'C800_53_R5_V2', 30, 'Does the organization update literacy training and awareness content at a defined frequency and after defined events?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7487)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17086, 'C800_53_R5_V2', 31, 'Does the organization incorporate lessons learned from internal or external security incidents or breaches into literacy training and awareness techniques?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7487)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17087, 'C800_53_R5_V2', 32, 'Does the organization include literacy training on recognizing and reporting potential and actual instances of social engineering and social mining?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7487)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17088, 'C800_53_R5_V2', 33, 'Does the organization provide literacy training on the advanced persistent threat?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7487)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17089, 'C800_53_R5_V2', 34, 'Does the organization provide literacy training on the cyber threat environment?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7487)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17090, 'C800_53_R5_V2', 35, 'Does the organization''s literacy training reflect current cyber threat information in system operations?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7487)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17091, 'C800_53_R5_V2', 36, 'Does the organization update role-based training at an organization-defined frequency and after organization-defined events?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4636)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17092, 'C800_53_R5_V2', 37, 'Does the organization incorporate lessons learned from internal or external security incidents or breaches into role-based training?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4636)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17093, 'C800_53_R5_V2', 38, 'Does the organization provide organization-defined personnel or roles with initial and organization-defined frequency training in the employment and operation of personally identifiable information processing and transparency controls?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4636)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17094, 'C800_53_R5_V2', 39, 'Does the organization provide feedback on organizational training results to defined personnel at a defined frequency?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7488)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17095, 'C800_53_R5_V2', 40, 'Does the organization review and update event types selected for logging at a defined frequency?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7489)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17096, 'C800_53_R5_V2', 41, 'Does the organization provide an alternate audit logging capability in the event of a failure in primary audit logging capability?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7490)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17097, 'C800_53_R5_V2', 42, 'Does the information system alert organization-defined personnel or roles upon detection of unauthorized access, modification, or deletion of audit information?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 94)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17098, 'C800_53_R5_V2', 43, 'If information disclosure is discovered, does the organization notify defined personnel and take defined additional actions?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4634)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17099, 'C800_53_R5_V2', 44, 'Are automated mechanisms used to monitor open-source information and information sites?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4634)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17100, 'C800_53_R5_V2', 45, 'Does the organization employ discovery techniques, processes, and tools to determine if external entities are replicating organizational information in an unauthorized manner?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 90)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17101, 'C800_53_R5_V2', 46, 'Does the organization develop, integrate, and use session auditing activities in consultation with legal counsel and in accordance with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 97)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17102, 'C800_53_R5_V2', 47, 'Does the organization implement organization-defined measures to disassociate individuals from audit information transmitted across organizational boundaries?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7491)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17103, 'C800_53_R5_V2', 48, 'Does the organization verify that individuals or systems transferring data between interconnecting systems have the requisite authorizations (i.e., write permissions or privileges) prior to accepting such data?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7492)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17104, 'C800_53_R5_V2', 49, 'Does the organization employ actions to validate that policies are established and implemented controls are operating in a consistent manner?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 907)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17105, 'C800_53_R5_V2', 50, 'Are automated mechanisms used to ensure the accuracy, currency, and availability of monitoring results for the system?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 907)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17106, 'C800_53_R5_V2', 51, 'Does the organization terminate internal system connections after it meets defined conditions?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 908)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17107, 'C800_53_R5_V2', 52, 'Does the organization review the continued need for each internal connection?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 908)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17108, 'C800_53_R5_V2', 53, 'Is unauthorized software limited to specific versions or from a specific source?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 765)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17109, 'C800_53_R5_V2', 54, 'Does the organization identify hardware components authorized for system use?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 765)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17110, 'C800_53_R5_V2', 55, 'Does the organization prohibit the use or connection of unauthorized hardware components?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 765)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17111, 'C800_53_R5_V2', 56, 'Does the organization review and update the list of authorized hardware components per organization-defined frequency?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 765)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17112, 'C800_53_R5_V2', 57, 'Does the system inventory not include duplicate accounting of components or components assigned to any other system?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4641)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17113, 'C800_53_R5_V2', 58, 'Does the organization utilize automated mechanisms to enforce and monitor compliance with software installation policies?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 183)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17114, 'C800_53_R5_V2', 59, 'Does the organization incorporate lessons learned from contingency plan testing, training, or actual contingency activities into contingency testing and training?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 768)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17115, 'C800_53_R5_V2', 60, 'Does the organization review and update contingency training content per defined frequency or after defined events?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 771)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17116, 'C800_53_R5_V2', 61, 'Does the organization employ organization-defined mechanisms to disrupt and adversely affect the system or system component?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 769)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17117, 'C800_53_R5_V2', 62, 'Does the organization maintain the attributes for each uniquely identified individual, device, or service in organization-defined protected central storage?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 786)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17118, 'C800_53_R5_V2', 63, 'Does the organization employ password managers to generate and manage passwords?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 784)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17119, 'C800_53_R5_V2', 64, 'Does the organization protect passwords within the password manager with organization-defined controls?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 784)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17120, 'C800_53_R5_V2', 65, 'Does the organization document and maintain a list of accepted external authenticators?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 240)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17121, 'C800_53_R5_V2', 66, 'Does the organization conform to organization-defined profiles for identity management?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 240)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17122, 'C800_53_R5_V2', 67, 'Does the organization review an update incident response training at a defined frequency and after defined events?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 791)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17123, 'C800_53_R5_V2', 68, 'Does the organization provide incident response training on how to identify and respond to a breach, including the organization’s process for reporting a breach?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 791)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17124, 'C800_53_R5_V2', 69, 'Does the organization establish and maintain an integrated incident response team that can be deployed to any location?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 253)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17125, 'C800_53_R5_V2', 70, 'Does the organization analyze anomalous or suspected adversarial behavior in or related to defined environments and resources?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 253)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17126, 'C800_53_R5_V2', 71, 'Does the organization establish and maintain a security operations center?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 253)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17127, 'C800_53_R5_V2', 72, 'Does the organization manage public relations associated with an incident?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 253)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17128, 'C800_53_R5_V2', 73, 'Does the organization employ measures to repair their reputation after an incident occurs?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 253)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17129, 'C800_53_R5_V2', 74, 'Does the organization inspect maintenance tools to ensure the latest software updates and patches are installed?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 288)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17130, 'C800_53_R5_V2', 75, 'Does the organization restrict or prohibit field maintenance on systems or system components to trusted maintenance facilities?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7493)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17131, 'C800_53_R5_V2', 76, 'Does the organization employ access control vestibules at defined locations within the facility?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 836)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17132, 'C800_53_R5_V2', 77, 'Does the organization review video recordings at a defined frequency?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 835)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17133, 'C800_53_R5_V2', 78, 'Does the organization report anomalies in visitor access records to defined personnel?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 380)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17134, 'C800_53_R5_V2', 79, 'Does the organization use automated-mechanisms to maintain and review visitor access records?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 380)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17135, 'C800_53_R5_V2', 80, 'Does the organization employ environmental control monitoring that provides an alarm or notification of changes potentially harmful to personnel or equipment to defined personnel?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7494)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17136, 'C800_53_R5_V2', 81, 'Does the organization include rules of behavior on use of organization-provided identifiers (e.g., email addresses) and authentication secrets (e.g., passwords) for creating accounts on external sites/applications?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 399)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17137, 'C800_53_R5_V2', 82, 'Does the organization offload non-essential functions or services to other systems, system components, or an external provider?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 509)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17138, 'C800_53_R5_V2', 83, 'Does the organization develop and disseminate an organization-wide privacy program plan that provides an overview of the agency’s privacy program?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7495)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17139, 'C800_53_R5_V2', 84, 'Does the organization''s privacy plan include a description of the structure of the privacy program and the resources dedicated to the privacy program?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7495)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17140, 'C800_53_R5_V2', 85, 'Does the organization''s privacy plan provide an overview of the requirements for the program and a description of the management controls and common controls in place or planned for meeting those requirements?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4682)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17141, 'C800_53_R5_V2', 86, 'Does the organization''s privacy plan include roles and responsibilities?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4682)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17142, 'C800_53_R5_V2', 87, 'Does the organization''s privacy plan describe management commitment, compliance, and the strategic goals and objectives of the privacy program?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4682)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17143, 'C800_53_R5_V2', 88, 'Does the organization''s privacy plan reflect coordination among organizational entities responsible for the different aspects of privacy?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4682)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17144, 'C800_53_R5_V2', 89, 'Is the organization''s privacy plan approved by a senior official with responsibility and accountability for the privacy risk being incurred to organizational operations (including mission, functions, image, and reputation), organizational assets, individuals, other organizations, and the Nation?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4682)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17145, 'C800_53_R5_V2', 90, 'Does the organization maintain a central resource webpage on their principal public website that serves as a central source of information about the organization’s privacy program?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4672)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17146, 'C800_53_R5_V2', 91, 'Does the organization ensure that privacy practices and reports are publicly available?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4672)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17147, 'C800_53_R5_V2', 92, 'Does the organization develop and post privacy policies on all external-facing websites, mobile applications, and other digital services?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4672)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17148, 'C800_53_R5_V2', 93, 'Are privacy policies written to provide information needed by the public to make an informed decision about whether and how to interact with the organization?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4672)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17149, 'C800_53_R5_V2', 94, 'Are privacy policies updated whenever the organization makes a substantive change to the practices it describes and includes a time/date stamp to inform the public of the date of the most recent changes?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4672)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17150, 'C800_53_R5_V2', 95, 'Does the organization develop and document organization-wide policies and procedures for reviewing for the accuracy, relevance, timeliness, and completeness of personally identifiable information across the information life cycle?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7496)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17151, 'C800_53_R5_V2', 96, 'Does the organization develop and document organization-wide policies and procedures for correcting or deleting inaccurate or outdated personally identifiable information?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7496)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17152, 'C800_53_R5_V2', 97, 'Does the organization develop and document organization-wide policies and procedures for disseminating notice of corrected or deleted personally identifiable information to individuals or other appropriate entities?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7496)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17153, 'C800_53_R5_V2', 98, 'Does the organization develop and document organization-wide policies and procedures for appeals of adverse decisions on correction or deletion requests?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7496)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17154, 'C800_53_R5_V2', 99, 'Does the organization establish a Data Governance Body that consists of defined roles and responsibilities?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7497)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17155, 'C800_53_R5_V2', 100, 'Does the organization''s Data Integrity Board review proposals to conduct or participate in a matching program?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4669)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17156, 'C800_53_R5_V2', 101, 'Does the organization''s Data Integrity Board Conduct an annual review of all matching programs in which the agency has participated?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4669)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17157, 'C800_53_R5_V2', 102, 'Does the organization''s complaint management process include acknowledgement of receipt of complaints, concerns, or questions from individuals?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7498)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17158, 'C800_53_R5_V2', 103, 'Does the organization develop privacy reports?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4684)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17159, 'C800_53_R5_V2', 104, 'Does the organization disseminate privacy reports to defined oversight bodies to demonstrate accountability with statutory, regulatory, and policy privacy mandates?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4684)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17160, 'C800_53_R5_V2', 105, 'Does the organization disseminate privacy reports to personnel with responsibility for monitoring privacy program compliance?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4684)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17161, 'C800_53_R5_V2', 106, 'Does the organization review and update privacy reports at a defined frequency?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4684)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17162, 'C800_53_R5_V2', 107, 'Does the organization distribute the results of risk framing activities to defined personnel?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4686)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17163, 'C800_53_R5_V2', 108, 'Does the organization review and update risk framing considerations at a defined frequency?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4686)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17164, 'C800_53_R5_V2', 109, 'Does the organization identify, prioritize, and assess suppliers of critical or mission-essential technologies, products, and services?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7499)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17165, 'C800_53_R5_V2', 110, 'Does the organization''s continuous monitoring program define the frequency for monitoring?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7500)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17166, 'C800_53_R5_V2', 111, 'Does the information system store state information from applications and software separately?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7501)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17167, 'C800_53_R5_V2', 112, 'Does the organization implement physically separate subnetworks to isolate critical system components and functions?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 915)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17168, 'C800_53_R5_V2', 113, 'Does the organization implement logically separate subnetworks to isolate critical system components and functions?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 915)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17169, 'C800_53_R5_V2', 114, 'Does the information system implement a protected distribution system to prevent unauthorized disclosure of information and/or detect changes to information during transmission unless otherwise protected by organization-defined alternative physical safeguards?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 601)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17170, 'C800_53_R5_V2', 115, 'Does the organization distribute asymmetric cryptographic keys using : NSA-approved key management technology and processes ; DoD-approved or DoD-issued Medium Assurance PKI certificates ; or DoD-approved or DoD-issued Medium Hardware Assurance PKI certificates and hardware security tokens that protect the user''s private key?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 917)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17171, 'C800_53_R5_V2', 116, 'Does the organization produce asymmetric cryptographic keys using : NSA-approved key management technology and processes ; DoD-approved or DoD-issued Medium Assurance PKI certificates ; or DoD-approved or DoD-issued Medium Hardware Assurance PKI certificates and hardware security tokens that protect the user''s private key?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 917)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17172, 'C800_53_R5_V2', 117, 'Does the organization control asymmetric cryptographic keys using : NSA-approved key management technology and processes ; DoD-approved or DoD-issued Medium Assurance PKI certificates ; or DoD-approved or DoD-issued Medium Hardware Assurance PKI certificates and hardware security tokens that protect the user''s private key?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 917)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17173, 'C800_53_R5_V2', 118, 'Does the organization maintain physical control of cryptographic keys when stored information is encrypted by external service providers?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 917)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17174, 'C800_53_R5_V2', 119, 'Does the organization implement anti-spoofing mechanisms to prevent adversaries from falsifying the security attributes indicating the successful application of the security process?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 601)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17175, 'C800_53_R5_V2', 120, 'Does the organization include only approved trust anchors in trust stores or certificate stores managed by the organization?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 594)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17176, 'C800_53_R5_V2', 121, 'Does the organization provide protected storage for cryptographic keys, for example via hardware-protected key store?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 925)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17177, 'C800_53_R5_V2', 122, 'Does the organization partition privileged functions into separate physical domains?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4713)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17178, 'C800_53_R5_V2', 123, 'Does the organization synchronize duplicate systems or system components?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 919)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17179, 'C800_53_R5_V2', 124, 'Does the organization synchronize system clocks within and between systems and system components?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7502)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17180, 'C800_53_R5_V2', 125, 'Does the organization implement a logical policy enforcement mechanism between the physical and/or network interfaces for the connecting security domains?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7503)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17181, 'C800_53_R5_V2', 126, 'Does the organization implement a physical policy enforcement mechanism between the physical and/or network interfaces for the connecting security domains?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7503)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17182, 'C800_53_R5_V2', 127, 'Does the organization establish alternate communications paths for system operations organizational command and control?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7504)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17183, 'C800_53_R5_V2', 128, 'Does the organization relocate sensors and monitoring capabilities to defined locations under defined conditions or circumstances?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7505)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17184, 'C800_53_R5_V2', 129, 'Does the organization dynamically relocate defined sensors and monitoring capabilities under defined conditions?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7505)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17185, 'C800_53_R5_V2', 130, 'Does the organization implement a hardware-enforced separation and policy enforcement mechanisms between domains?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7506)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17186, 'C800_53_R5_V2', 131, 'Does the organization implement a software-enforced separation and policy enforcement mechanisms between domains?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7507)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17187, 'C800_53_R5_V2', 132, 'Does the organization determine criteria for unusual or unauthorized activities or conditions for inbound and outbound communications traffic?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4722)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17188, 'C800_53_R5_V2', 133, 'Does the information system provide visibility into network traffic at external and key internal system interfaces to optimize the effectiveness of monitoring devices?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4722)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17189, 'C800_53_R5_V2', 134, 'Does the information system implement organization-defined controls for application self-protection at runtime?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 611)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17190, 'C800_53_R5_V2', 135, 'Does the organization prevent untrusted data injections?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7508)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17191, 'C800_53_R5_V2', 136, 'Does the organization use techniques to dispose of, destroy, or erase information following the retention period?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4718)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17192, 'C800_53_R5_V2', 137, 'Does the organization refresh defined system-related information at a defined frequency?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 6465)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17193, 'C800_53_R5_V2', 138, 'Does the organization generate defined system-related information on demand?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 6465)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17194, 'C800_53_R5_V2', 139, 'Does the organization delete defined system-related information when no longer needed?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 6465)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17195, 'C800_53_R5_V2', 140, 'Does the information system establish connections on demand and terminate connections after completion of a request?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 6465)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17196, 'C800_53_R5_V2', 141, 'Does the information system establish connections on demand and terminate connections after a period on non-use?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 6465)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17197, 'C800_53_R5_V2', 142, 'Does the organization check the accuracy, relevance, timeliness, and completeness of personally identifiable information across the information life cycle at a defined frequency?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7509)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17198, 'C800_53_R5_V2', 143, 'Does the organization correct or delete inaccurate or outdated personally identifiable information?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7509)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17199, 'C800_53_R5_V2', 144, 'Does the organization employ automated mechanisms to correct or delete personally identifiable information that is inaccurate or outdated, incorrectly determined regarding impact, or incorrectly de-identified?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7509)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17200, 'C800_53_R5_V2', 145, 'Does the organization employ data tags to automate the correction or deletion of personally identifiable information across the information life cycle within organizational systems?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7509)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17201, 'C800_53_R5_V2', 146, 'Does the organization correct or delete personally identifiable information upon request by individuals or their designated representatives?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7509)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17202, 'C800_53_R5_V2', 147, 'Does the organization define elements of personally identifiable information to remove from datasets?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4716)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17203, 'C800_53_R5_V2', 148, 'Does the organization evaluate a defined frequency for effectiveness of de-identification?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4716)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17204, 'C800_53_R5_V2', 149, 'Does the organization embed data or capabilities in systems or system components to determine if organizational data has been exfiltrated or improperly removed from the organization?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7510)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17205, 'C800_53_R5_V2', 150, 'Does the organization refresh information at defined frequencies or generate the information on demand and delete the information when no longer needed?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7511)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17206, 'C800_53_R5_V2', 151, 'Does the organization identify alternative sources of information for defined essential functions and services?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7512)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17207, 'C800_53_R5_V2', 152, 'Does the organization use an alternative information source for the execution of essential functions or services when the primary source of information is corrupted or unavailable?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7512)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17208, 'C800_53_R5_V2', 153, 'Does the organization fragment (divide information into disparate elements) based on defined circumstances?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7513)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17209, 'C800_53_R5_V2', 154, 'Does the organization distribute the fragmented information across systems or system component?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7513)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17210, 'C800_53_R5_V2', 155, 'Does the organization have a Supply Chain Risk Management policy?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7514)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17211, 'C800_53_R5_V2', 156, 'Does the organization have a Supply Chain Risk Management procedure?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7514)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17212, 'C800_53_R5_V2', 157, 'Is the supply chain risk management policy consistent with applicable laws, Executive Orders, directives, regulations, policies, standards, and guidelines?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7514)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17213, 'C800_53_R5_V2', 158, 'Does the organization establish a supply chain risk management team consisting of personnel, roles, and responsibilities to lead and support SCRM activities?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7515)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17214, 'C800_53_R5_V2', 159, 'Does the organization ensure that the controls included in the contracts of prime contractors are also included in the contracts of subcontractors?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7516)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17215, 'C800_53_R5_V2', 160, 'Does the organization establish and maintain unique identification of the systems and critical system components for tracking through the supply chain?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7517)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17216, 'C800_53_R5_V2', 161, 'Does the organization employ controls and conduct analysis to ensure the integrity of the system and system components by validating the internal composition and provenance of critical or mission-essential technologies, products, and services?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7517)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17217, 'C800_53_R5_V2', 162, 'Does the organization employ the following acquisition strategies, contract tools, and procurement methods to protect against, identify, and mitigate supply chain risks?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7518)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17218, 'C800_53_R5_V2', 163, 'Does the organization dispose of data, documentation, tools, or system components using defined techniques and methods?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7519)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17219, 'C800_53_R5_V2', 164, 'Is personally identifiable information contained in visitor access records limited to elements defined in the privacy risk assessment?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 380)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17220, 'C800_53_R5_V2', 165, 'Does the organization analyze systems or systems components supporting mission essential services or functions to ensure that the information resources are being used consistent with their intended purpose?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7520)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17221, 'C800_53_R5_V2', 166, 'Does the organization incorporate security and privacy roles and responsibilities into organizational position descriptions?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7521)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17222, 'C800_53_R5_V2', 167, 'Are current personally identifiable information processing and transparency policies and procedures reviewed and updated?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7522)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17223, 'C800_53_R5_V2', 168, 'Does the organization develop and document an processing and transparency policy that addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7522)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17224, 'C800_53_R5_V2', 169, 'Does the organization develop and document procedures to facilitate the implementation of the processing and transparency policy and associated controls?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7522)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17225, 'C800_53_R5_V2', 170, 'Does the organization have a processing and transparency policy?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7522)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17226, 'C800_53_R5_V2', 171, 'Does the organization have a processing and transparency procedure?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7522)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17227, 'C800_53_R5_V2', 172, 'Is the processing and transparency policy consistent with applicable laws, Executive Orders, directives, regulations, policies, standards, and guidelines?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7522)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17228, 'C800_53_R5_V2', 173, 'Is an official designated to manage the development, documentation, and dissemination of the personally identifiable information processing and transparency policy and procedures?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7522)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17229, 'C800_53_R5_V2', 174, 'Does the organization determine and document the authority that permits the processing of personally identifiable information?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7523)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17230, 'C800_53_R5_V2', 175, 'Does the organization restrict the processing of personally identifiable information to only that which is authorized?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7523)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17231, 'C800_53_R5_V2', 176, 'Does the organization attach data tags containing authorized processing to defined elements of personally identifiable information?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7523)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17232, 'C800_53_R5_V2', 177, 'Does the organization use automated mechanisms to manage enforcement of the authorized processing of personally identifiable information using?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7523)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17233, 'C800_53_R5_V2', 178, 'Does the organization identify and document the purpose(s) for processing personally identifiable information?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7524)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17234, 'C800_53_R5_V2', 179, 'Does the organization restrict the processing of personally identifiable information to only that which is compatible with the identified purpose(s)?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7524)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17235, 'C800_53_R5_V2', 180, 'Does the organization monitor changes in processing personally identifiable information and implement mechanisms to ensure that any changes are made in accordance with requirements?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7524)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17236, 'C800_53_R5_V2', 181, 'Does the organization attach data tags containing the processing purposes with elements of personally identifiable information?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7524)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17237, 'C800_53_R5_V2', 182, 'Does the organization use automated mechanisms to track processing purposes of personally identifiable information?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7524)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17238, 'C800_53_R5_V2', 183, 'Does the organization implement tools or mechanisms for individuals to consent to the processing of their personally identifiable information prior to its collection that facilitate individuals’ informed decision-making?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 460)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17239, 'C800_53_R5_V2', 184, 'Does the organization provide mechanisms to allow individuals to tailor processing permissions to selected elements of personally identifiable information?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 460)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17240, 'C800_53_R5_V2', 185, 'Does the organization present consent mechanisms to individuals at a defined frequency and in conjunction with personally identifiable information processing?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 460)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17241, 'C800_53_R5_V2', 186, 'Does the organization implement tools or mechanisms for individuals to revoke consent to the processing of their personally identifiable information?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 460)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17242, 'C800_53_R5_V2', 187, 'Does the organization provide effective notice to individuals regarding its authority for processing personally identifiable information (PII)?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 481)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17243, 'C800_53_R5_V2', 188, 'Does the organization provide effective notice to individuals that identifies the purposes for processing personally identifiable information (PII)?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 481)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17244, 'C800_53_R5_V2', 189, 'Does the organization include organizational-defined information (policies and determinations) within privacy notices for personally identifiable information (PII)?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 481)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17245, 'C800_53_R5_V2', 190, 'Does the organization present notice of personally identifiable information (PII) processing to individuals at a time and location where the individual provides PII or in conjunction with a data action, or at a defined frequency?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 481)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17246, 'C800_53_R5_V2', 191, 'Does the organization draft system of records notices in accordance with OMB guidance for Privacy Act system of records?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7525)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17247, 'C800_53_R5_V2', 192, 'Does the organization submit new system of records notices to OMB and appropriate congressional committees for Privacy Act system of records?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7525)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17248, 'C800_53_R5_V2', 193, 'Does the organization submit significantly modified system of records notices to OMB and appropriate congressional committees for Privacy Act system of records?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7525)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17249, 'C800_53_R5_V2', 194, 'Does the organization publish system of records notices in the Federal Register for Privacy Act system of records?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7525)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17250, 'C800_53_R5_V2', 195, 'Does the organization keep system of records notices accurate, up-to-date, and scoped in accordance with policy for Privacy Act system of records?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7525)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17251, 'C800_53_R5_V2', 196, 'Does the organization review all routine uses published in the system of records notice at a defined frequency to ensure continued accuracy and to ensure that the original purpose is still compatible?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7525)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17252, 'C800_53_R5_V2', 197, 'Does the organization review all Privacy Act exemptions claimed for the system of records at a defined frequency to ensure they remain appropriate and necessary in accordance with law, that they have been promulgated as regulations, and that they are accurately described in the system of records notice?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7525)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17253, 'C800_53_R5_V2', 198, 'Does the organization apply defined processing conditions for specific categories of personally identifiable information?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7526)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17254, 'C800_53_R5_V2', 199, 'Does the organization eliminate unnecessary collection, maintenance, and use of Social Security numbers, and explore alternatives to their use as a personal identifier?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7526)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17255, 'C800_53_R5_V2', 200, 'Does the organization not deny any individual any right, benefit, or privilege provided by law because of such individual’s refusal to disclose his or her Social Security number?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7526)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17256, 'C800_53_R5_V2', 201, 'Does the organization inform any individual who is asked to disclose his or her Social Security number whether that disclosure is mandatory or voluntary, by what statutory or other authority such number is solicited, and what uses will be made of it?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7526)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17257, 'C800_53_R5_V2', 202, 'Does the organization prohibit the processing of information describing how any individual exercises rights guaranteed by the First Amendment unless expressly authorized by statute or by the individual or unless pertinent to and within the scope of an authorized law enforcement activity?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7526)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17258, 'C800_53_R5_V2', 203, 'When a system or organization processes information for the purpose of conducting a matching program, do they complete the following?
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17259, 'C800_53_R5_V2', 204, 'Are current risk assessment policies and procedures reviewed and updated?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7528)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17260, 'C800_53_R5_V2', 205, 'Is the risk assessment policy consistent with applicable laws, Executive Orders, directives, regulations, policies, standards, and guidelines?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7528)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17261, 'C800_53_R5_V2', 206, 'Is an official designated to manage the development, documentation, and dissemination of the personally identifiable information risk assessment policy and procedures?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7528)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17262, 'C800_53_R5_V2', 207, 'Does the organization use all-source intelligence to assist in the analysis of risk?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 887)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17263, 'C800_53_R5_V2', 208, 'Does the organization employ advanced automation and analytics capabilities to predict and identify risks to systems?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 887)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17264, 'C800_53_R5_V2', 209, 'Does the organization establish a public reporting channel for receiving reports of vulnerabilities in organizational systems and system components?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7529)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17265, 'C800_53_R5_V2', 210, 'Does the organization establish and maintain a cyber threat hunting capability to search for indicators of compromise in organizational systems?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7530)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17266, 'C800_53_R5_V2', 211, 'Does the organization establish and maintain a cyber threat hunting capability to detect, track, and disrupt threats that evade existing controls?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7530)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17267, 'C800_53_R5_V2', 212, 'Does the organization employ the threat hunting capability at a defined frequency?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7530)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17268, 'C800_53_R5_V2', 213, 'Are defined Privacy Act requirements included in the acquisition contract for the operation of a system of records on behalf of an organization to accomplish an organizational mission or function?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 615)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17269, 'C800_53_R5_V2', 214, 'Does the organization include organizational data ownership requirements in the acquisition contract?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 615)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17270, 'C800_53_R5_V2', 215, 'Does the organization require all data to be removed from the contractor’s system and returned to the organization within a defined time frame?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 615)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17271, 'C800_53_R5_V2', 216, 'Does the organization implement the security design principle of clear abstractions via simple, well-defined interfaces and functions and a consistent view of how data is managed?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17272, 'C800_53_R5_V2', 217, 'Does the organization implement the security design principle of least common mechanism via minimizing the amount of mechanism common to one user and depended on by all users?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17273, 'C800_53_R5_V2', 218, 'Does the organization implement the security design principle of modularity and layering to manage system complexity?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17274, 'C800_53_R5_V2', 219, 'Does the organization implement the security design principle of principle of partially ordered dependencies to increase simplicity and coherency of the system design?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17275, 'C800_53_R5_V2', 220, 'Does the organization implement the security design principle of efficiently mediated access by ensuring that policy enforcement mechanisms utilize the least common mechanism available while satisfying stakeholder requirements?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17276, 'C800_53_R5_V2', 221, 'Does the organization implement the security design principle of minimized sharing via ensuring that no computer resource is shared between system components unless absolutely necessary?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17277, 'C800_53_R5_V2', 222, 'Does the organization implement the security design principle of reduced complexity by ensuring that the system design is as simple and small as possible?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17278, 'C800_53_R5_V2', 223, 'Does the organization implement the security design principle of secure evolvability by ensuring that a system is developed to facilitate the maintenance of its security properties when there are changes to the systems'' structure, interfaces, interconnections, functionality, or configuration?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17279, 'C800_53_R5_V2', 224, 'Does the organization implement the security design principle of trusted components by ensuring that a component is trustworthy to at least a level commensurate with the security dependencies it supports?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17280, 'C800_53_R5_V2', 225, 'Does the organization implement the security design principle of hierarchical trust by ensuring that the security dependencies in a system will form a partial ordering if they preserve the principle of trusted components?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17281, 'C800_53_R5_V2', 226, 'Does the organization implement the security design principle of inverse modification threshold by ensuring that the degree of protection provided to a component is commensurate with its trustworthiness?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17282, 'C800_53_R5_V2', 227, 'Does the organization implement the security design principle of hierarchical protection by ensuring that a component need not be protected by more trustworthy components?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17283, 'C800_53_R5_V2', 228, 'Does the organization implement the security design principle of minimized security elements by ensuring that the system does not have extraneous trusted components?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17284, 'C800_53_R5_V2', 229, 'Does the organization implement the security design principle of least privilege by ensuring that each system component is allocated sufficient privileges to accomplish specified function but no more?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17285, 'C800_53_R5_V2', 230, 'Does the organization implement the security design principle of predicate permission by ensuring that system designers consider multiple authorized entities to provide consent before a highly critical operation or access to highly sensitive data, information, or resources is allowed to proceed?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17286, 'C800_53_R5_V2', 231, 'Does the organization implement the security design principle of self-reliant trustworthiness by ensuring that systems minimize their reliance on other systems for their own trustworthiness?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17287, 'C800_53_R5_V2', 232, 'Does the organization implement the security design principle of secure distributed composition by ensuring that the composition of distributed components that enforce the same system security policy result in a system that enforces that policy at least as well as the individual components do?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17288, 'C800_53_R5_V2', 233, 'Does the organization implement the security design principle of trusted communications channels by ensuring that when composing a system where there is a potential threat to communications between components each communication channel is trustworthy to a level commensurate with the security dependencies it supports?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17289, 'C800_53_R5_V2', 234, 'Does the organization implement the security design principle of continuous protection by ensuring that components and data used to enforce the security policy have uninterrupted protection that is consistent with the security policy and the security architecture assumptions?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17290, 'C800_53_R5_V2', 235, 'Does the organization implement the security design principle of secure metadata management by ensuring that metadata are “first class” objects with respect to security policy when the policy requires either complete protection of information or that the security subsystem be self-protecting?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17291, 'C800_53_R5_V2', 236, 'Does the organization implement the security design principle of self-analysis by ensuring that a system component is able to assess its internal state and functionality to a limited extent at various stages of execution, and that this self-analysis capability is commensurate with the level of trustworthiness invested in the system?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17292, 'C800_53_R5_V2', 237, 'Does the organization implement the security design principle of accountability and traceability by ensuring that it''s possible to trace security-relevant actions to the entity on whose behalf the action is being taken?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17293, 'C800_53_R5_V2', 238, 'Does the organization implement the security design principle of secure defaults by ensuring that the default configuration of a system reflects a restrictive and conservative enforcement of security policy?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17294, 'C800_53_R5_V2', 239, 'Does the organization implement the security design principle of secure failure and recovery by ensuring that neither a failure in a system function or mechanism nor any recovery action in response to failure leads to a violation of security policy?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17295, 'C800_53_R5_V2', 240, 'Does the organization implement the security design principle of economic security by ensuring that security mechanisms are not costlier than the potential damage that could occur from a security breach?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17296, 'C800_53_R5_V2', 241, 'Does the organization implement the security design principle of performance security by ensuring that security mechanisms are constructed so that they do not degrade system performance unnecessarily?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17297, 'C800_53_R5_V2', 242, 'Does the organization implement the security design principle of human factored security by ensuring that the user interface for security functions and supporting services is intuitive, user-friendly, and provides feedback for user actions that affect such policy and its enforcement?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17298, 'C800_53_R5_V2', 243, 'Does the organization implement the security design principle of acceptable security by ensuring that  the level of privacy and performance that the system provides is consistent with the users’ expectations?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17299, 'C800_53_R5_V2', 244, 'Does the organization implement the security design principle of repeatable and documented procedures by ensuring that the techniques and methods employed to construct a system component permit the same component to be completely and correctly reconstructed at a later time?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17300, 'C800_53_R5_V2', 245, 'Does the organization implement the security design principle of procedural rigor by ensuring that the rigor of a system life cycle process is commensurate with its intended trustworthiness?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17301, 'C800_53_R5_V2', 246, 'Does the organization implement the security design principle of secure system modification by ensuring that system modification maintains system security with respect to the security requirements and risk tolerance of stakeholders?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17302, 'C800_53_R5_V2', 247, 'Does the organization implement the security design principle of sufficient documentation by ensuring that organizational personnel with responsibilities to interact with the system are provided with adequate documentation and other information such that the personnel contribute to rather than detract from system security?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17303, 'C800_53_R5_V2', 248, 'Does the organization implement the security design principle of minimization by ensuring that organizations should only process personally identifiable information that is directly relevant and necessary to accomplish an authorized purpose?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4724)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17304, 'C800_53_R5_V2', 249, 'Does the organization restrict the geographic location of information processing and data storage to facilities located within in the legal jurisdictional boundary of the United States?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 626)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17305, 'C800_53_R5_V2', 250, 'Does the organization require security and privacy representatives to be included in the configuration change management and control process?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 620)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17306, 'C800_53_R5_V2', 251, 'Does the organization require the developer of the system, system component, or system service to employ interactive application security testing tools to identify flaws and document the results?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 4723)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17307, 'C800_53_R5_V2', 252, 'Does the organization require the developer of the system or system component to minimize the use of personally identifiable information in development and test environments?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 948)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17308, 'C800_53_R5_V2', 253, 'Does the organization design critical systems or system components with coordinated behavior to implement defined capabilities?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7531)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17309, 'C800_53_R5_V2', 254, 'Does the organization use different designs for critical systems or system components to satisfy a common set of requirements or to provide equivalent functionality?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7531)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17310, 'C800_53_R5_V2', 255, 'Does the organization employ one or more processes (design, modification, augmentation, reconfiguration) on systems or system components that support mission essential services or increase trustworthiness in those systems?', 'L', 0, NULL, NULL, 'C800_53_R5_V2', NULL, 7532)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17311, 'FFAV2', 31131, 'Does the operator’s security architecture block the user from browsing to known malicious websites? ', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8485)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17312, 'FFAV2', 31132, 'Does the operator use multi-factor authentication (MFA) or phishing-resistant MFA methods so that either (1) there is no password for a malicious actor to capture or (2) capturing the password is insufficient to obtain access to enterprise resources?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8502)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17313, 'FFAV2', 31133, 'Does the operator detect and respond to the installation of unauthorized applications?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8484)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17314, 'FFAV2', 31134, 'Does the operator’s security architecture identify the presence of devices running an outdated version of iOS or Android and block them from accessing enterprise resources until system updates are installed?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8484)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17315, 'FFAV2', 31135, 'Does the operator conduct application vetting (testing) on applications that collect or access location, camera, and microphone data to determine (1) the intent of the use of such data and (2) whether the application is malicious?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8502)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17316, 'FFAV2', 31136, 'Does the operator''s security architecture detect applications that attempt to establish a hypertext transfer protocol or unencrypted connection?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8484)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17317, 'FFAV2', 31137, 'Does the operator''s enterprise mobility management (EMM) enforce policies that require a device unlock code to be set, prevent the device unlock code from being removed, require a minimum complexity for the device unlock code, and factory reset the device after 10 failed unlock attempts?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8502)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17318, 'FFAV2', 31138, 'Does the operator''s EMM or MDM system have the capability to identify and report devices with a disabled lock screen?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8484)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17319, 'FFAV2', 31139, 'Does the operator''s EMM or MDM discover and report credential weaknesses in cases of unauthorized access to backend services via authentication or credential storage vulnerabilities in internally developed applications?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8484)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17320, 'FFAV2', 31140, 'Does the operator block unauthorized access of enterprise resources from unmanaged and potentially compromised devices?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8502)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17321, 'FFAV2', 31141, 'Is the operator''s EMM or MDM system capable of locating or wiping EMM or MDM-enrolled devices in response to a report that they have been lost or stolen?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8521)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17322, 'FFAV2', 31142, 'Does the operator''s EMM or MDM system prohibit screenshots and other data-sharing actions while using managed applications?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8502)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17323, 'FFAV2', 31143, 'Does the operator''s EMM or MDM system prevent unauthorized access to work applications via a bypassed lock screen?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8502)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17324, 'FFAV2', 31144, 'Does the EMM and/or MDM prevent the following: (1) the collection/inventory of applications on the device; (2) location information, including physical address, geographic coordinates and history, IP address, and SSID?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8496)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17325, 'FFAV2', 31145, 'Is access to MDM monitoring data restricted to administrators, such that the system provides access controls to monitoring functions and logs, and data flow between the operator and third parties does not contain location information such as physical address, geographic coordinates and history, IP address, and SSID?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8496)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17326, 'FFAV2', 31146, 'Does the operator''s EMM or MDM system allow the selective wiping of the device, such that the user retains personal data/applications while the corporate applications and data are removed?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8523)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17327, 'FFAV2', 31147, 'Does the commercial off-the-shelf PED have an ingress protection (IP) rating to ensure moisture/dust migration into cooling vents, fan ports and/or power/data connections and screen or battery boards and components?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8518)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17328, 'FFAV2', 31148, 'Does the operator follow privileged access management principles for network-based administration of EO-critical software and EO-critical software platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8524)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17329, 'FFAV2', 31149, 'Does the operator use multi-factor authentication that is verifier impersonation-resistant for all users and administrators of EO-critical software and EO-critical software platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8526)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17330, 'FFAV2', 31150, 'Does the operator uniquely identify and authenticate each service attempting to access EO-critical software or EO-critical software platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8538)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17331, 'FFAV2', 31151, 'Does the operator employ boundary protection techniques as appropriate to minimize direct access to EO-critical software, EO-critical software platforms, and associated data?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8539)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17332, 'FFAV2', 31152, 'Does the operator establish and maintain a data inventory for EO-critical software and EO-critical software platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8525)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17333, 'FFAV2', 31153, 'Consistent with NIST’s cryptographic standards, does the org protect data at rest by encrypting the sensitive data used by EO-critical software and EO-critical software platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8539)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17334, 'FFAV2', 31154, 'Consistent with NIST’s cryptographic standards, does the operator protect data in transit by (1) using mutual authentication whenever feasible, and (2) encrypting sensitive data communications for EO-critical software and EO-critical software platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8540)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17335, 'FFAV2', 31155, 'Does the operator back up data, exercise backup restoration, and be prepared to recover data used by EO-critical software and EO-critical software platforms at any time from backups?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8541)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17336, 'FFAV2', 31156, 'Does the operator establish and maintain a software inventory for all platforms running EO-critical software and all software (both EO-critical and non-EO-critical) deployed to each platform?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8531)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17337, 'FFAV2', 31157, 'Does the operator use patch management practices to maintain EO-critical software platforms and all software deployed to those platforms to include (1) rapidly identify, document, and mitigate known vulnerabilities (e.g., patching, updating, upgrading software to supported version) to continuously reduce the exposure time and (2) monitor the platforms and software to ensure the mitigations are not removed outside of change control processes?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8534)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17338, 'FFAV2', 31158, 'Does the operator use configuration management practices to maintain EO-critical software platforms and all software deployed to those platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8527)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17339, 'FFAV2', 31159, 'Does the operator configure logging to record the necessary information about security events involving EO-critical software platforms and all software running on those platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8537)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17340, 'FFAV2', 31160, 'Does the operator continuously monitor the security of EO-critical software platforms and all software running on those platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8529)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17341, 'FFAV2', 31161, 'To protect the platforms and their software using networks, does the operator employ network security protection that monitors the network traffic to and from EO-critical software platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8528)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17342, 'FFAV2', 31162, 'Does the org employ endpoint security protection on EO-critical software platforms to protect the platforms and all software running on them?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8533)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17343, 'FFAV2', 31163, 'Does the operator train all users of EO-critical software, based on their roles and responsibilities, on how to securely use the software and the EO-critical software platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8536)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17344, 'FFAV2', 31164, 'To enforce the principle of least privilege to the extent possible, does the operator use fine-grained access control for data and resources used by EO-critical software and EO-critical software platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8532)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17345, 'FFAV2', 31165, 'Does the operator train all security operations personnel and incident response team members, based on their roles and responsibilities, on how to handle incidents involving EO-critical software or EO-critical software platforms?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8530)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17346, 'FFAV2', 31166, 'Train all administrators of EO-critical software and EO-critical software platforms, based on their roles and responsibilities, on how to securely administer the software and/or platforms.', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8517)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17347, 'FFAV2', 31167, 'Does the operator conduct frequent awareness activities to reinforce the training for all users and administrators of EO-critical software and platforms, and to measure the training’s effectiveness for continuous improvement purposes?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8535)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17348, 'FFAV2', 31168, 'Does the operator conduct regular penetration testing on systems, components, and software applications (hosted on operating architectures whether third party or in-house)?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8489)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17349, 'FFAV2', 31169, 'Does the operator employ an independent penetration testing agent or team to perform penetration testing on the system, system components, and software applications (hosted on operating architectures whether third party or in-house?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8489)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17350, 'FFAV2', 31170, 'Does the operator employ red-team exercises to simulate attempts by adversaries to compromise organizational systems in accordance with applicable rules of engagement?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8490)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17351, 'FFAV2', 31171, 'Does the operator employ a penetration testing process that includes announced and/or unannounced attempts to bypass or circumvent controls associated with a PED used by a crewmember?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8491)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17352, 'FFAV2', 31172, 'Does the operator establish and maintain a cyber threat hunting capability to: 
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17353, 'FFAV2', 31173, 'Does the operator implement applicable enhanced security requirements of NIST 800-172 to protect CUI, for example, to safeguard electronic crewmember manuals that contain Sensitive Security Information (SSI)?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8515)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17354, 'FFAV2', 31174, 'When conducting a risk assessment, does the operator adequately prepare by identifying the following:
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17355, 'FFAV2', 31175, 'When conducting a risk assessment, does the operator identify the following:
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17356, 'FFAV2', 31176, 'When conducting a risk assessment, does the operator determine the likelihood, impact, and risk associated with a threat event?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8497)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17357, 'FFAV2', 31177, 'Does the operator communicate risk assessment results to organizational decision makers to support risk responses?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8497)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17358, 'FFAV2', 31178, 'Does the operator share risk-related information produced during the risk assessment with appropriate organizational personnel?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8497)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17359, 'FFAV2', 31179, 'Does the operator conduct ongoing monitoring of the risk factors that contribute to changes in risk to organizational operations, assets, and individuals?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8497)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17360, 'FFAV2', 31180, 'Does the operator update the existing risk assessment using the results from ongoing monitoring of risk factors?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8497)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17361, 'FFAV2', 31181, 'Does the operator utilize the core principles of the NIST Cybersecurity Framework to understand, manage, and express cybersecurity risk to internal and external stakeholders?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8498)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17362, 'FFAV2', 31182, 'Do you have a MDM and/or EMM that facilitates VPN functionality to allow for selective VPN activation for each app?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8504)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17363, 'FFAV2', 31130, 'Does the operator''s security architecture block unauthorized access to sensitive information by malicious or privacy-intrusive applications?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8485)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17364, 'FFAV2', 31115, 'When a crewmember retires, transfers to another airline, quits, or is terminated, is a policy in place that all company proprietary data is wiped from the PED that was being used by the individual?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8513)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17365, 'FFAV2', 31058, 'Does the aircraft operator specify a time frame in which patches must be tested and implemented?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8510)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17366, 'FFAV2', 31062, 'Does the aircraft operator maintain administrative control of the PEDs used by crewmembers?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8509)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17367, 'FFAV2', 31069, 'Does the aircraft operator ensure that all major components such as motherboards, processors, Random-Access Memory (RAM), video cards, hard drives, power supplies, and connections (modem, wireless, etc.) should be configuration controlled?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8506)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17368, 'FFAV2', 31072, 'Are CIS Benchmarks or DISA STIGs utilized to harden operating system architecture? ', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8518)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17369, 'FFAV2', 31112, 'Does the aircraft operator ensure the wireless network utilized for interfacing with crewmember''s PEDs and retrieving critical data relevant to flight operations is not be bridged or co-utilized by personnel (i.e., customers) not associated with the certificate holder, aircraft operations, or governance?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8505)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17370, 'FFAV2', 31096, 'Does the aircraft operator enforce application allowlisting or audit applications to ensure the integrity of the PED?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8488)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17371, 'FFAV2', 31073, 'If the aircraft operator uses Apple iOS or Google Android devices, are special considerations given to their respective hardware and hardening guides?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8518)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17372, 'FFAV2', 31099, 'Are company controlled removable media used for transferring information to the PED purchased from a reputable source?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8516)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17373, 'FFAV2', 31098, 'Does secure storage also provide a charging service to ensure the operational availability of the device?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8512)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17374, 'FFAV2', 31081, 'Are devices put through a hardening procedure that requires turning off unnecessary and/or nonsecure functions, ports, protocols, software, and services before being put into service of the EFB?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8518)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17375, 'FFAV2', 31123, 'Since being granted operational approval by the FAA in accordance with OpSpec/MSpec/LOA A061 as applicable to use a PED as a portable EFB have you had to recover any of the PEDs?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8520)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17376, 'FFAV2', 31109, 'If using a commercial off-the-shelf PED, how do users ensure operating system architecture and app updates/upgrades are delivered in an auditable cryptographically secure process?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8507)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17377, 'FFAV2', 31074, 'If the aircraft operator uses Microsoft Surface devices, are special considerations given to Surface hardware and OS hardening guides?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8518)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17378, 'FFAV2', 31075, 'If the aircraft operator uses Google Android devices, are special considerations given to Android hardware and OS hardening guides?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8518)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17379, 'FFAV2', 31076, 'Is the aircraft operating system architecture and associated installed software applications updated automatically?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8506)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17380, 'FFAV2', 31060, 'Does the aircraft operator maintain an inventory of PEDs authorized for use in aircraft operations?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8493)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17381, 'FFAV2', 31091, 'Does the aircraft operator give preference to file sources that distribute aviation-related information (including firmware updates) via https protocol over file sources that use http?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8508)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17382, 'FFAV2', 31056, 'Does the aircraft operator ensure that all PEDs have a reliable means for revising the EFB databases?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8510)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17383, 'FFAV2', 31061, 'Does the aircraft operator maintain an inventory of all PEDs where software applications used in operations are hosted and utilized?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8493)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17384, 'FFAV2', 31082, 'If commercial off-the-shelf- PEDs are used as portable EFBs,  has the aircraft operator successfully completed rapid decompression testing?  ', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8499)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17385, 'FFAV2', 31114, 'Does the aircraft operator have detailed processes and procedures for enforcing service termination and remote wipe capabilities (for lost and stolen devices)?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8495)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17386, 'FFAV2', 31097, 'Do operational processes ensure a means for the secure storage of PEDs when not in use by crewmembers?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8512)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17387, 'FFAV2', 31103, 'Are crewmembers trained in cybersecurity awareness to include training on social engineering and phishing attacks?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8519)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17388, 'FFAV2', 31055, 'Does the aircraft operator have the ability to remotely wipe the PED (both company-provided and BYOD) in the event the PED is lost or stolen? ', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8510)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17389, 'FFAV2', 31104, 'Are crewmembers trained from a cybersecurity awareness perspective to question irregular software application performance/activity as possibly being compromised (e.g., abnormal numbers generated from a weight and balance application on a portable EFB)?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8519)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17390, 'FFAV2', 31094, 'Does the aircraft operator have a policy requiring that firmware updates'' file hashes be verified before applying to production systems?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8511)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17391, 'FFAV2', 31110, 'Do enterprise communications with PEDs used in aircraft operations handle all transmissions via secure VPN and CAC-card or two-factor biometric encryption?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8507)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17392, 'FFAV2', 31102, 'Does the operator develop PED and/or portable EFB training for crewmembers in accordance with FAA Advisory Circular (AC) 120-76, "Authorization for Use of Electronic Flight Bags"?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8519)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17393, 'FFAV2', 31071, 'Are non-essential ports and services disabled on PEDs used in aircraft operations?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8506)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17394, 'FFAV2', 31107, 'Does the aircraft operator have a policy that requires open networks with connectivity to aircraft be encrypted (i.e., wireless networks or public or Internet traversing networks)?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8507)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17395, 'FFAV2', 31111, 'Does the aircraft operator allow crewmembers to connect mobile devices to unsecured Wi-Fi or other untrusted networks?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8505)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17396, 'FFAV2', 31095, 'Does the aircraft operator monitor the use of PEDs to ensure only authorized software applications are used during aircraft operations?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8511)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17397, 'FFAV2', 31070, 'Does the device allow the installation and/or use of non-allowlisted apps in any operational configuration?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8506)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17398, 'FFAV2', 31053, 'Does the aircraft operator have an enterprise mobility management (EMM) or mobile device management (MDM) solution for all PEDs (including company-provided devices and personally-owned BYOD devices) used for aircraft operations?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8510)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17399, 'FFAV2', 31054, 'Does the aircraft operator use enterprise mobility management (EMM) or mobile device management (MDM) to maintain an inventory of all PEDs?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8494)
INSERT INTO [dbo].[NEW_QUESTION] ([Question_Id], [Std_Ref], [Std_Ref_Number], [Simple_Question], [Universal_Sal_Level], [Weight], [Question_Group_Id], [Question_Group_Number], [Original_Set_Name], [Ranking], [Heading_Pair_Id]) VALUES (17400, 'FFAV2', 31101, 'Are personally owned removable media prohibited from use on PEDs?', 'L', NULL, NULL, NULL, 'FAA_PED_V2', NULL, 8516)
SET IDENTITY_INSERT [dbo].[NEW_QUESTION] OFF
PRINT(N'Operation applied to 365 rows out of 365')

PRINT(N'Add rows to [dbo].[REQUIREMENT_LEVELS]')
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30073, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30074, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30075, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30076, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30078, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30079, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30080, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30081, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30082, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30083, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30084, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30085, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30086, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30087, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30088, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30089, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30090, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30091, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30092, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30093, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30094, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30095, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30096, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30097, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30098, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30099, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30100, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30101, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30102, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (30103, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31183, 'H', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31183, 'L', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31183, 'M', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31183, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31184, 'H', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31184, 'L', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31184, 'M', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31184, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31185, 'H', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31185, 'L', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31185, 'M', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31185, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31186, 'H', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31186, 'L', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31186, 'M', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31186, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31187, 'H', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31187, 'L', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31187, 'M', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31187, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31188, 'H', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31188, 'L', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31188, 'M', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31188, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31189, 'H', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31189, 'L', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31189, 'M', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31189, 'VH', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31190, 'H', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31190, 'L', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31190, 'M', 'NST', NULL)
INSERT INTO [dbo].[REQUIREMENT_LEVELS] ([Requirement_Id], [Standard_Level], [Level_Type], [Id]) VALUES (31190, 'VH', 'NST', NULL)
PRINT(N'Operation applied to 62 rows out of 62')

PRINT(N'Add rows to [dbo].[REQUIREMENT_SETS]')
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (31183, 'TSA2018', 163)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (31184, 'TSA2018', 167)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (31185, 'TSA2018', 168)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (31186, 'TSA2018', 169)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (31187, 'TSA2018', 170)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (31188, 'TSA2018', 171)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (31189, 'TSA2018', 172)
INSERT INTO [dbo].[REQUIREMENT_SETS] ([Requirement_Id], [Set_Name], [Requirement_Sequence]) VALUES (31190, 'TSA2018', 173)
PRINT(N'Operation applied to 8 rows out of 8')

PRINT(N'Add rows to [dbo].[REQUIREMENT_SOURCE_FILES]')
INSERT INTO [dbo].[REQUIREMENT_SOURCE_FILES] ([Requirement_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (31183, 5065, '5.2.8', 12, '12 FitH 806')
INSERT INTO [dbo].[REQUIREMENT_SOURCE_FILES] ([Requirement_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (31184, 5065, '5.2.12', 13, '13 FitH 776')
INSERT INTO [dbo].[REQUIREMENT_SOURCE_FILES] ([Requirement_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (31185, 5065, '5.2.13', 13, '13 FitH 776')
INSERT INTO [dbo].[REQUIREMENT_SOURCE_FILES] ([Requirement_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (31186, 5065, '5.2.14', 14, '14 FitH 572')
INSERT INTO [dbo].[REQUIREMENT_SOURCE_FILES] ([Requirement_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (31187, 5065, '5.2.15', 15, '15 FitH 476')
INSERT INTO [dbo].[REQUIREMENT_SOURCE_FILES] ([Requirement_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (31188, 5065, '5.2.16', 17, '17 FitH 720')
INSERT INTO [dbo].[REQUIREMENT_SOURCE_FILES] ([Requirement_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (31189, 5065, '5.2.17', 17, '17 FitH 720')
INSERT INTO [dbo].[REQUIREMENT_SOURCE_FILES] ([Requirement_Id], [Gen_File_Id], [Section_Ref], [Page_Number], [Destination_String]) VALUES (31190, 5065, '5.2.18', 17, '17 FitH 720')
PRINT(N'Operation applied to 8 rows out of 8')

PRINT(N'Add rows to [dbo].[NEW_QUESTION_SETS]')
SET IDENTITY_INSERT [dbo].[NEW_QUESTION_SETS] ON
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51920, 'FAA_PED_V2', 11122)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51921, 'FAA_PED_V2', 11127)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51922, 'FAA_PED_V2', 11129)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51923, 'FAA_PED_V2', 11134)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51924, 'FAA_PED_V2', 11135)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51925, 'FAA_PED_V2', 11136)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51926, 'FAA_PED_V2', 11137)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51927, 'FAA_PED_V2', 11138)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51928, 'FAA_PED_V2', 11139)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51929, 'FAA_PED_V2', 11148)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51930, 'FAA_PED_V2', 11149)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51931, 'FAA_PED_V2', 11150)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51932, 'FAA_PED_V2', 11151)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51933, 'FAA_PED_V2', 11155)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51934, 'FAA_PED_V2', 11156)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51935, 'FAA_PED_V2', 11157)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51936, 'FAA_PED_V2', 11158)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51937, 'FAA_PED_V2', 11159)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51938, 'FAA_PED_V2', 11160)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51939, 'FAA_PED_V2', 11161)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51940, 'FAA_PED_V2', 11162)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51941, 'FAA_PED_V2', 11164)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51942, 'FAA_PED_V2', 11165)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51943, 'FAA_PED_V2', 11174)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51944, 'FAA_PED_V2', 11180)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51945, 'FAA_PED_V2', 11181)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51946, 'FAA_PED_V2', 11183)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51947, 'FAA_PED_V2', 11188)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51948, 'FAA_PED_V2', 11191)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51949, 'FAA_PED_V2', 11192)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51950, 'FAA_PED_V2', 11193)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51951, 'FAA_PED_V2', 11194)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51952, 'FAA_PED_V2', 11195)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51953, 'FAA_PED_V2', 11196)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51954, 'FAA_PED_V2', 11197)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51955, 'FAA_PED_V2', 11199)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51956, 'FAA_PED_V2', 11200)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51957, 'FAA_PED_V2', 11201)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51958, 'FAA_PED_V2', 11202)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51959, 'FAA_PED_V2', 11203)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51960, 'FAA_PED_V2', 11204)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51961, 'FAA_PED_V2', 17311)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51962, 'FAA_PED_V2', 17312)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51963, 'FAA_PED_V2', 17313)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51964, 'FAA_PED_V2', 17314)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51965, 'FAA_PED_V2', 17315)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51966, 'FAA_PED_V2', 17316)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51967, 'FAA_PED_V2', 17317)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51968, 'FAA_PED_V2', 17318)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51969, 'FAA_PED_V2', 17319)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51970, 'FAA_PED_V2', 17320)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51971, 'FAA_PED_V2', 17321)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51972, 'FAA_PED_V2', 17322)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51973, 'FAA_PED_V2', 17323)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51974, 'FAA_PED_V2', 17324)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51975, 'FAA_PED_V2', 17325)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51976, 'FAA_PED_V2', 17326)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51977, 'FAA_PED_V2', 17327)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51978, 'FAA_PED_V2', 17328)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51979, 'FAA_PED_V2', 17329)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51980, 'FAA_PED_V2', 17330)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51981, 'FAA_PED_V2', 17331)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51982, 'FAA_PED_V2', 17332)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51983, 'FAA_PED_V2', 17333)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51984, 'FAA_PED_V2', 17334)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51985, 'FAA_PED_V2', 17335)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51986, 'FAA_PED_V2', 17336)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51987, 'FAA_PED_V2', 17337)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51988, 'FAA_PED_V2', 17338)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51989, 'FAA_PED_V2', 17339)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51990, 'FAA_PED_V2', 17340)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51991, 'FAA_PED_V2', 17341)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51992, 'FAA_PED_V2', 17342)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51993, 'FAA_PED_V2', 17343)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51994, 'FAA_PED_V2', 17344)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51995, 'FAA_PED_V2', 17345)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51996, 'FAA_PED_V2', 17346)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51997, 'FAA_PED_V2', 17347)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51998, 'FAA_PED_V2', 17348)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (51999, 'FAA_PED_V2', 17349)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52000, 'FAA_PED_V2', 17350)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52001, 'FAA_PED_V2', 17351)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52002, 'FAA_PED_V2', 17352)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52003, 'FAA_PED_V2', 17353)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52004, 'FAA_PED_V2', 17354)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52005, 'FAA_PED_V2', 17355)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52006, 'FAA_PED_V2', 17356)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52007, 'FAA_PED_V2', 17357)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52008, 'FAA_PED_V2', 17358)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52009, 'FAA_PED_V2', 17359)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52010, 'FAA_PED_V2', 17360)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52011, 'FAA_PED_V2', 17361)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52012, 'FAA_PED_V2', 17362)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52013, 'FAA_PED_V2', 17363)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52014, 'FAA_PED_V2', 17364)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52015, 'FAA_PED_V2', 17365)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52016, 'FAA_PED_V2', 17366)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52017, 'FAA_PED_V2', 17367)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52018, 'FAA_PED_V2', 17368)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52019, 'FAA_PED_V2', 17369)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52020, 'FAA_PED_V2', 17370)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52021, 'FAA_PED_V2', 17371)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52022, 'FAA_PED_V2', 17372)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52023, 'FAA_PED_V2', 17373)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52024, 'FAA_PED_V2', 17374)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52025, 'FAA_PED_V2', 17375)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52026, 'FAA_PED_V2', 17376)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52027, 'FAA_PED_V2', 17377)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52028, 'FAA_PED_V2', 17378)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52029, 'FAA_PED_V2', 17379)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52030, 'FAA_PED_V2', 17380)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52031, 'FAA_PED_V2', 17381)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52032, 'FAA_PED_V2', 17382)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52033, 'FAA_PED_V2', 17383)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52034, 'FAA_PED_V2', 17384)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52035, 'FAA_PED_V2', 17385)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52036, 'FAA_PED_V2', 17386)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52037, 'FAA_PED_V2', 17387)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52038, 'FAA_PED_V2', 17388)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52039, 'FAA_PED_V2', 17389)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52040, 'FAA_PED_V2', 17390)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52041, 'FAA_PED_V2', 17391)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52042, 'FAA_PED_V2', 17392)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52043, 'FAA_PED_V2', 17393)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52044, 'FAA_PED_V2', 17394)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52045, 'FAA_PED_V2', 17395)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52046, 'FAA_PED_V2', 17396)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52047, 'FAA_PED_V2', 17397)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52048, 'FAA_PED_V2', 17398)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52049, 'FAA_PED_V2', 17399)
INSERT INTO [dbo].[NEW_QUESTION_SETS] ([New_Question_Set_Id], [Set_Name], [Question_Id]) VALUES (52050, 'FAA_PED_V2', 17400)
SET IDENTITY_INSERT [dbo].[NEW_QUESTION_SETS] OFF
PRINT(N'Operation applied to 131 rows out of 131')

PRINT(N'Add rows to [dbo].[REQUIREMENT_QUESTIONS]')
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17037, 29667)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17038, 29668)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17039, 29669)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17040, 29670)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17041, 29671)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17042, 29672)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17043, 29673)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17046, 31184)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17047, 31185)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17048, 31186)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17049, 31187)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17050, 31188)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17051, 31189)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17052, 31190)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17053, 29670)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17054, 29665)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17055, 29665)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17056, 31183)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17057, 30045)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17058, 30046)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17059, 30046)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17060, 30049)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17061, 30049)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17062, 30049)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17063, 30053)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17064, 30069)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17065, 30070)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17066, 30081)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17067, 30094)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17068, 30095)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17069, 30096)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17070, 30097)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17071, 30098)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17072, 30099)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17073, 30100)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17074, 30100)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17075, 30101)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17076, 30102)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17077, 30103)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17078, 30103)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17079, 30103)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17080, 30103)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17081, 30114)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17082, 30134)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17083, 30148)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17084, 30161)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17085, 30177)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17086, 30177)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17087, 30180)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17088, 30182)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17089, 30183)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17090, 30183)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17091, 30184)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17092, 30184)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17093, 30188)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17094, 30190)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17095, 30192)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17096, 30203)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17097, 30216)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17098, 30236)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17099, 30237)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17100, 30239)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17101, 30240)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17102, 30246)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17103, 30253)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17104, 30264)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17105, 30265)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17106, 30270)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17107, 30270)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17108, 30303)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17109, 30307)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17110, 30307)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17111, 30307)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17112, 30308)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17113, 30323)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17114, 30329)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17115, 30337)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17116, 30345)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17117, 30397)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17118, 30413)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17119, 30413)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17120, 30418)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17121, 30419)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17122, 30433)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17123, 30436)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17124, 30452)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17125, 30454)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17126, 30455)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17127, 30456)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17128, 30456)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17129, 30481)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17130, 30499)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17131, 30532)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17132, 30539)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17133, 30541)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17134, 30542)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17135, 30559)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17136, 30574)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17137, 30590)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17138, 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17139, 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17140, 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17141, 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17142, 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17143, 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17144, 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17146, 30604)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17147, 30605)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17148, 30605)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17149, 30605)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17150, 30607)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17151, 30607)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17152, 30607)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17153, 30607)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17154, 30608)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17155, 30609)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17156, 30609)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17157, 30611)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17158, 30612)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17159, 30612)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17160, 30612)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17161, 30612)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17162, 30613)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17163, 30613)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17164, 30616)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17165, 30617)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17166, 30788)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17167, 30828)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17168, 30828)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17169, 30834)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17170, 30841)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17171, 30841)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17172, 30841)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17173, 30842)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17174, 30850)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17175, 30852)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17176, 30874)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17177, 30887)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17178, 30894)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17179, 30914)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17180, 30917)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17181, 30917)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17182, 30918)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17183, 30919)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17184, 30920)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17185, 30921)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17186, 30922)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17187, 30940)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17188, 30959)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17189, 30978)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17190, 30988)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17191, 30993)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17192, 31001)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17193, 31001)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17194, 31001)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17195, 31002)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17196, 31002)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17197, 31006)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17198, 31006)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17199, 31007)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17200, 31008)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17201, 31010)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17202, 31012)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17203, 31012)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17204, 31021)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17205, 31022)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17206, 31023)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17207, 31023)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17208, 31024)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17209, 31024)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17210, 31025)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17211, 31025)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17212, 31025)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17213, 31027)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17214, 31031)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17215, 31034)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17216, 31036)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17217, 31037)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17218, 31051)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17219, 30543)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17220, 30618)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17221, 30635)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17222, 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17223, 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17224, 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17225, 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17226, 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17227, 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17228, 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17229, 30637)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17230, 30637)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17231, 30638)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17232, 30639)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17233, 30640)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17234, 30640)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17235, 30640)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17236, 30641)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17237, 30642)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17238, 30643)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17239, 30644)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17240, 30645)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17241, 30646)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17242, 30647)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17243, 30647)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17244, 30647)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17245, 30648)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17246, 30650)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17247, 30650)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17248, 30650)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17249, 30650)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17250, 30650)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17251, 30651)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17252, 30652)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17253, 30653)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17254, 30654)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17255, 30654)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17256, 30654)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17257, 30655)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17258, 30656)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17259, 30657)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17260, 30657)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17261, 30657)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17262, 30662)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17263, 30664)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17264, 30673)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17265, 30678)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17266, 30678)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17267, 30678)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17268, 30695)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17269, 30696)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17270, 30696)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17271, 30699)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17272, 30700)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17273, 30701)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17274, 30702)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17275, 30703)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17276, 30704)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17277, 30705)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17278, 30706)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17279, 30707)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17280, 30708)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17281, 30709)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17282, 30710)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17283, 30711)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17284, 30712)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17285, 30713)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17286, 30714)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17287, 30715)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17288, 30716)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17289, 30717)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17290, 30718)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17291, 30719)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17292, 30720)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17293, 30721)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17294, 30722)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17295, 30723)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17296, 30724)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17297, 30725)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17298, 30726)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17299, 30727)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17300, 30728)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17301, 30729)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17302, 30730)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17303, 30731)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17304, 30740)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17305, 30748)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17306, 30758)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17307, 30769)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17308, 30779)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17309, 30780)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17310, 30784)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17311, 31131)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17312, 31132)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17313, 31133)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17314, 31134)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17315, 31135)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17316, 31136)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17317, 31137)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17318, 31138)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17319, 31139)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17320, 31140)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17321, 31141)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17322, 31142)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17323, 31143)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17324, 31144)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17325, 31145)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17326, 31146)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17327, 31147)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17328, 31148)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17329, 31149)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17330, 31150)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17331, 31151)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17332, 31152)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17333, 31153)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17334, 31154)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17335, 31155)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17336, 31156)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17337, 31157)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17338, 31158)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17339, 31159)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17340, 31160)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17341, 31161)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17342, 31162)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17343, 31163)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17344, 31164)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17345, 31165)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17346, 31166)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17347, 31167)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17348, 31168)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17349, 31169)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17350, 31170)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17351, 31171)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17352, 31172)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17353, 31173)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17354, 31174)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17355, 31175)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17356, 31176)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17357, 31177)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17358, 31178)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17359, 31179)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17360, 31180)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17361, 31181)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17362, 31182)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17363, 31130)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17364, 31115)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17365, 31058)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17366, 31062)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17367, 31069)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17368, 31072)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17369, 31112)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17370, 31096)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17371, 31073)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17372, 31099)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17373, 31098)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17374, 31081)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17375, 31123)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17376, 31109)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17377, 31074)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17378, 31075)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17379, 31076)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17380, 31060)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17381, 31091)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17382, 31056)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17383, 31061)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17384, 31082)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17385, 31114)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17386, 31097)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17387, 31103)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17388, 31055)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17389, 31104)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17390, 31094)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17391, 31110)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17392, 31102)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17393, 31071)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17394, 31107)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17395, 31111)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17396, 31095)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17397, 31070)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17398, 31053)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17399, 31054)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS] ([Question_Id], [Requirement_Id]) VALUES (17400, 31101)
PRINT(N'Operation applied to 361 rows out of 361')

PRINT(N'Add rows to [dbo].[REQUIREMENT_QUESTIONS_SETS]')
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17037, 'TSA2018', 29667)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17038, 'TSA2018', 29668)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17039, 'TSA2018', 29669)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17040, 'TSA2018', 29670)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17041, 'TSA2018', 29671)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17042, 'TSA2018', 29672)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17043, 'TSA2018', 29673)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17046, 'TSA2018', 31184)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17047, 'TSA2018', 31185)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17048, 'TSA2018', 31186)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17049, 'TSA2018', 31187)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17050, 'TSA2018', 31188)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17051, 'TSA2018', 31189)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17052, 'TSA2018', 31190)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17053, 'TSA2018', 29670)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17054, 'TSA2018', 29665)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17055, 'TSA2018', 29665)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17056, 'TSA2018', 31183)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17057, 'C800_53_R5_V2', 30045)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17058, 'C800_53_R5_V2', 30046)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17059, 'C800_53_R5_V2', 30046)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17060, 'C800_53_R5_V2', 30049)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17061, 'C800_53_R5_V2', 30049)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17062, 'C800_53_R5_V2', 30049)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17063, 'C800_53_R5_V2', 30053)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17064, 'C800_53_R5_V2', 30069)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17065, 'C800_53_R5_V2', 30070)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17066, 'C800_53_R5_V2', 30081)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17067, 'C800_53_R5_V2', 30094)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17068, 'C800_53_R5_V2', 30095)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17069, 'C800_53_R5_V2', 30096)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17070, 'C800_53_R5_V2', 30097)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17071, 'C800_53_R5_V2', 30098)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17072, 'C800_53_R5_V2', 30099)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17073, 'C800_53_R5_V2', 30100)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17074, 'C800_53_R5_V2', 30100)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17075, 'C800_53_R5_V2', 30101)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17076, 'C800_53_R5_V2', 30102)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17077, 'C800_53_R5_V2', 30103)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17078, 'C800_53_R5_V2', 30103)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17079, 'C800_53_R5_V2', 30103)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17080, 'C800_53_R5_V2', 30103)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17081, 'C800_53_R5_V2', 30114)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17082, 'C800_53_R5_V2', 30134)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17083, 'C800_53_R5_V2', 30148)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17084, 'C800_53_R5_V2', 30161)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17085, 'C800_53_R5_V2', 30177)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17086, 'C800_53_R5_V2', 30177)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17087, 'C800_53_R5_V2', 30180)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17088, 'C800_53_R5_V2', 30182)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17089, 'C800_53_R5_V2', 30183)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17090, 'C800_53_R5_V2', 30183)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17091, 'C800_53_R5_V2', 30184)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17092, 'C800_53_R5_V2', 30184)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17093, 'C800_53_R5_V2', 30188)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17094, 'C800_53_R5_V2', 30190)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17095, 'C800_53_R5_V2', 30192)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17096, 'C800_53_R5_V2', 30203)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17097, 'C800_53_R5_V2', 30216)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17098, 'C800_53_R5_V2', 30236)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17099, 'C800_53_R5_V2', 30237)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17100, 'C800_53_R5_V2', 30239)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17101, 'C800_53_R5_V2', 30240)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17102, 'C800_53_R5_V2', 30246)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17103, 'C800_53_R5_V2', 30253)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17104, 'C800_53_R5_V2', 30264)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17105, 'C800_53_R5_V2', 30265)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17106, 'C800_53_R5_V2', 30270)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17107, 'C800_53_R5_V2', 30270)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17108, 'C800_53_R5_V2', 30303)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17109, 'C800_53_R5_V2', 30307)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17110, 'C800_53_R5_V2', 30307)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17111, 'C800_53_R5_V2', 30307)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17112, 'C800_53_R5_V2', 30308)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17113, 'C800_53_R5_V2', 30323)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17114, 'C800_53_R5_V2', 30329)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17115, 'C800_53_R5_V2', 30337)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17116, 'C800_53_R5_V2', 30345)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17117, 'C800_53_R5_V2', 30397)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17118, 'C800_53_R5_V2', 30413)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17119, 'C800_53_R5_V2', 30413)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17120, 'C800_53_R5_V2', 30418)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17121, 'C800_53_R5_V2', 30419)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17122, 'C800_53_R5_V2', 30433)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17123, 'C800_53_R5_V2', 30436)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17124, 'C800_53_R5_V2', 30452)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17125, 'C800_53_R5_V2', 30454)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17126, 'C800_53_R5_V2', 30455)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17127, 'C800_53_R5_V2', 30456)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17128, 'C800_53_R5_V2', 30456)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17129, 'C800_53_R5_V2', 30481)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17130, 'C800_53_R5_V2', 30499)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17131, 'C800_53_R5_V2', 30532)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17132, 'C800_53_R5_V2', 30539)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17133, 'C800_53_R5_V2', 30541)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17134, 'C800_53_R5_V2', 30542)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17135, 'C800_53_R5_V2', 30559)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17136, 'C800_53_R5_V2', 30574)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17137, 'C800_53_R5_V2', 30590)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17138, 'C800_53_R5_V2', 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17139, 'C800_53_R5_V2', 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17140, 'C800_53_R5_V2', 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17141, 'C800_53_R5_V2', 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17142, 'C800_53_R5_V2', 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17143, 'C800_53_R5_V2', 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17144, 'C800_53_R5_V2', 30602)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17146, 'C800_53_R5_V2', 30604)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17147, 'C800_53_R5_V2', 30605)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17148, 'C800_53_R5_V2', 30605)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17149, 'C800_53_R5_V2', 30605)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17150, 'C800_53_R5_V2', 30607)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17151, 'C800_53_R5_V2', 30607)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17152, 'C800_53_R5_V2', 30607)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17153, 'C800_53_R5_V2', 30607)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17154, 'C800_53_R5_V2', 30608)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17155, 'C800_53_R5_V2', 30609)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17156, 'C800_53_R5_V2', 30609)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17157, 'C800_53_R5_V2', 30611)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17158, 'C800_53_R5_V2', 30612)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17159, 'C800_53_R5_V2', 30612)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17160, 'C800_53_R5_V2', 30612)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17161, 'C800_53_R5_V2', 30612)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17162, 'C800_53_R5_V2', 30613)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17163, 'C800_53_R5_V2', 30613)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17164, 'C800_53_R5_V2', 30616)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17165, 'C800_53_R5_V2', 30617)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17166, 'C800_53_R5_V2', 30788)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17167, 'C800_53_R5_V2', 30828)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17168, 'C800_53_R5_V2', 30828)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17169, 'C800_53_R5_V2', 30834)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17170, 'C800_53_R5_V2', 30841)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17171, 'C800_53_R5_V2', 30841)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17172, 'C800_53_R5_V2', 30841)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17173, 'C800_53_R5_V2', 30842)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17174, 'C800_53_R5_V2', 30850)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17175, 'C800_53_R5_V2', 30852)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17176, 'C800_53_R5_V2', 30874)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17177, 'C800_53_R5_V2', 30887)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17178, 'C800_53_R5_V2', 30894)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17179, 'C800_53_R5_V2', 30914)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17180, 'C800_53_R5_V2', 30917)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17181, 'C800_53_R5_V2', 30917)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17182, 'C800_53_R5_V2', 30918)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17183, 'C800_53_R5_V2', 30919)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17184, 'C800_53_R5_V2', 30920)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17185, 'C800_53_R5_V2', 30921)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17186, 'C800_53_R5_V2', 30922)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17187, 'C800_53_R5_V2', 30940)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17188, 'C800_53_R5_V2', 30959)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17189, 'C800_53_R5_V2', 30978)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17190, 'C800_53_R5_V2', 30988)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17191, 'C800_53_R5_V2', 30993)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17192, 'C800_53_R5_V2', 31001)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17193, 'C800_53_R5_V2', 31001)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17194, 'C800_53_R5_V2', 31001)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17195, 'C800_53_R5_V2', 31002)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17196, 'C800_53_R5_V2', 31002)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17197, 'C800_53_R5_V2', 31006)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17198, 'C800_53_R5_V2', 31006)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17199, 'C800_53_R5_V2', 31007)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17200, 'C800_53_R5_V2', 31008)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17201, 'C800_53_R5_V2', 31010)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17202, 'C800_53_R5_V2', 31012)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17203, 'C800_53_R5_V2', 31012)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17204, 'C800_53_R5_V2', 31021)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17205, 'C800_53_R5_V2', 31022)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17206, 'C800_53_R5_V2', 31023)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17207, 'C800_53_R5_V2', 31023)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17208, 'C800_53_R5_V2', 31024)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17209, 'C800_53_R5_V2', 31024)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17210, 'C800_53_R5_V2', 31025)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17211, 'C800_53_R5_V2', 31025)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17212, 'C800_53_R5_V2', 31025)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17213, 'C800_53_R5_V2', 31027)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17214, 'C800_53_R5_V2', 31031)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17215, 'C800_53_R5_V2', 31034)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17216, 'C800_53_R5_V2', 31036)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17217, 'C800_53_R5_V2', 31037)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17218, 'C800_53_R5_V2', 31051)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17219, 'C800_53_R5_V2', 30543)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17220, 'C800_53_R5_V2', 30618)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17221, 'C800_53_R5_V2', 30635)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17222, 'C800_53_R5_V2', 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17223, 'C800_53_R5_V2', 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17224, 'C800_53_R5_V2', 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17225, 'C800_53_R5_V2', 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17226, 'C800_53_R5_V2', 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17227, 'C800_53_R5_V2', 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17228, 'C800_53_R5_V2', 30636)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17229, 'C800_53_R5_V2', 30637)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17230, 'C800_53_R5_V2', 30637)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17231, 'C800_53_R5_V2', 30638)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17232, 'C800_53_R5_V2', 30639)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17233, 'C800_53_R5_V2', 30640)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17234, 'C800_53_R5_V2', 30640)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17235, 'C800_53_R5_V2', 30640)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17236, 'C800_53_R5_V2', 30641)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17237, 'C800_53_R5_V2', 30642)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17238, 'C800_53_R5_V2', 30643)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17239, 'C800_53_R5_V2', 30644)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17240, 'C800_53_R5_V2', 30645)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17241, 'C800_53_R5_V2', 30646)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17242, 'C800_53_R5_V2', 30647)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17243, 'C800_53_R5_V2', 30647)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17244, 'C800_53_R5_V2', 30647)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17245, 'C800_53_R5_V2', 30648)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17246, 'C800_53_R5_V2', 30650)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17247, 'C800_53_R5_V2', 30650)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17248, 'C800_53_R5_V2', 30650)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17249, 'C800_53_R5_V2', 30650)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17250, 'C800_53_R5_V2', 30650)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17251, 'C800_53_R5_V2', 30651)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17252, 'C800_53_R5_V2', 30652)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17253, 'C800_53_R5_V2', 30653)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17254, 'C800_53_R5_V2', 30654)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17255, 'C800_53_R5_V2', 30654)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17256, 'C800_53_R5_V2', 30654)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17257, 'C800_53_R5_V2', 30655)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17258, 'C800_53_R5_V2', 30656)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17259, 'C800_53_R5_V2', 30657)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17260, 'C800_53_R5_V2', 30657)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17261, 'C800_53_R5_V2', 30657)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17262, 'C800_53_R5_V2', 30662)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17263, 'C800_53_R5_V2', 30664)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17264, 'C800_53_R5_V2', 30673)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17265, 'C800_53_R5_V2', 30678)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17266, 'C800_53_R5_V2', 30678)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17267, 'C800_53_R5_V2', 30678)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17268, 'C800_53_R5_V2', 30695)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17269, 'C800_53_R5_V2', 30696)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17270, 'C800_53_R5_V2', 30696)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17271, 'C800_53_R5_V2', 30699)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17272, 'C800_53_R5_V2', 30700)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17273, 'C800_53_R5_V2', 30701)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17274, 'C800_53_R5_V2', 30702)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17275, 'C800_53_R5_V2', 30703)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17276, 'C800_53_R5_V2', 30704)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17277, 'C800_53_R5_V2', 30705)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17278, 'C800_53_R5_V2', 30706)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17279, 'C800_53_R5_V2', 30707)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17280, 'C800_53_R5_V2', 30708)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17281, 'C800_53_R5_V2', 30709)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17282, 'C800_53_R5_V2', 30710)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17283, 'C800_53_R5_V2', 30711)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17284, 'C800_53_R5_V2', 30712)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17285, 'C800_53_R5_V2', 30713)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17286, 'C800_53_R5_V2', 30714)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17287, 'C800_53_R5_V2', 30715)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17288, 'C800_53_R5_V2', 30716)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17289, 'C800_53_R5_V2', 30717)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17290, 'C800_53_R5_V2', 30718)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17291, 'C800_53_R5_V2', 30719)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17292, 'C800_53_R5_V2', 30720)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17293, 'C800_53_R5_V2', 30721)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17294, 'C800_53_R5_V2', 30722)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17295, 'C800_53_R5_V2', 30723)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17296, 'C800_53_R5_V2', 30724)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17297, 'C800_53_R5_V2', 30725)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17298, 'C800_53_R5_V2', 30726)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17299, 'C800_53_R5_V2', 30727)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17300, 'C800_53_R5_V2', 30728)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17301, 'C800_53_R5_V2', 30729)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17302, 'C800_53_R5_V2', 30730)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17303, 'C800_53_R5_V2', 30731)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17304, 'C800_53_R5_V2', 30740)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17305, 'C800_53_R5_V2', 30748)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17306, 'C800_53_R5_V2', 30758)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17307, 'C800_53_R5_V2', 30769)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17308, 'C800_53_R5_V2', 30779)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17309, 'C800_53_R5_V2', 30780)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17310, 'C800_53_R5_V2', 30784)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17311, 'FAA_PED_V2', 31131)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17312, 'FAA_PED_V2', 31132)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17313, 'FAA_PED_V2', 31133)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17314, 'FAA_PED_V2', 31134)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17315, 'FAA_PED_V2', 31135)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17316, 'FAA_PED_V2', 31136)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17317, 'FAA_PED_V2', 31137)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17318, 'FAA_PED_V2', 31138)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17319, 'FAA_PED_V2', 31139)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17320, 'FAA_PED_V2', 31140)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17321, 'FAA_PED_V2', 31141)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17322, 'FAA_PED_V2', 31142)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17323, 'FAA_PED_V2', 31143)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17324, 'FAA_PED_V2', 31144)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17325, 'FAA_PED_V2', 31145)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17326, 'FAA_PED_V2', 31146)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17327, 'FAA_PED_V2', 31147)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17328, 'FAA_PED_V2', 31148)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17329, 'FAA_PED_V2', 31149)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17330, 'FAA_PED_V2', 31150)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17331, 'FAA_PED_V2', 31151)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17332, 'FAA_PED_V2', 31152)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17333, 'FAA_PED_V2', 31153)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17334, 'FAA_PED_V2', 31154)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17335, 'FAA_PED_V2', 31155)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17336, 'FAA_PED_V2', 31156)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17337, 'FAA_PED_V2', 31157)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17338, 'FAA_PED_V2', 31158)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17339, 'FAA_PED_V2', 31159)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17340, 'FAA_PED_V2', 31160)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17341, 'FAA_PED_V2', 31161)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17342, 'FAA_PED_V2', 31162)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17343, 'FAA_PED_V2', 31163)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17344, 'FAA_PED_V2', 31164)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17345, 'FAA_PED_V2', 31165)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17346, 'FAA_PED_V2', 31166)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17347, 'FAA_PED_V2', 31167)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17348, 'FAA_PED_V2', 31168)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17349, 'FAA_PED_V2', 31169)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17350, 'FAA_PED_V2', 31170)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17351, 'FAA_PED_V2', 31171)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17352, 'FAA_PED_V2', 31172)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17353, 'FAA_PED_V2', 31173)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17354, 'FAA_PED_V2', 31174)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17355, 'FAA_PED_V2', 31175)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17356, 'FAA_PED_V2', 31176)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17357, 'FAA_PED_V2', 31177)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17358, 'FAA_PED_V2', 31178)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17359, 'FAA_PED_V2', 31179)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17360, 'FAA_PED_V2', 31180)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17361, 'FAA_PED_V2', 31181)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17362, 'FAA_PED_V2', 31182)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17363, 'FAA_PED_V2', 31130)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17364, 'FAA_PED_V2', 31115)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17365, 'FAA_PED_V2', 31058)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17366, 'FAA_PED_V2', 31062)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17367, 'FAA_PED_V2', 31069)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17368, 'FAA_PED_V2', 31072)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17369, 'FAA_PED_V2', 31112)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17370, 'FAA_PED_V2', 31096)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17371, 'FAA_PED_V2', 31073)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17372, 'FAA_PED_V2', 31099)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17373, 'FAA_PED_V2', 31098)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17374, 'FAA_PED_V2', 31081)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17375, 'FAA_PED_V2', 31123)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17376, 'FAA_PED_V2', 31109)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17377, 'FAA_PED_V2', 31074)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17378, 'FAA_PED_V2', 31075)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17379, 'FAA_PED_V2', 31076)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17380, 'FAA_PED_V2', 31060)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17381, 'FAA_PED_V2', 31091)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17382, 'FAA_PED_V2', 31056)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17383, 'FAA_PED_V2', 31061)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17384, 'FAA_PED_V2', 31082)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17385, 'FAA_PED_V2', 31114)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17386, 'FAA_PED_V2', 31097)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17387, 'FAA_PED_V2', 31103)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17388, 'FAA_PED_V2', 31055)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17389, 'FAA_PED_V2', 31104)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17390, 'FAA_PED_V2', 31094)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17391, 'FAA_PED_V2', 31110)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17392, 'FAA_PED_V2', 31102)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17393, 'FAA_PED_V2', 31071)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17394, 'FAA_PED_V2', 31107)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17395, 'FAA_PED_V2', 31111)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17396, 'FAA_PED_V2', 31095)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17397, 'FAA_PED_V2', 31070)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17398, 'FAA_PED_V2', 31053)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17399, 'FAA_PED_V2', 31054)
INSERT INTO [dbo].[REQUIREMENT_QUESTIONS_SETS] ([Question_Id], [Set_Name], [Requirement_Id]) VALUES (17400, 'FAA_PED_V2', 31101)
PRINT(N'Operation applied to 361 rows out of 361')

PRINT(N'Add rows to [dbo].[NEW_QUESTION_LEVELS]')
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51920, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51921, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51922, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51923, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51924, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51925, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51926, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51927, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51928, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51929, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51930, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51931, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51932, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51933, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51934, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51935, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51936, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51937, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51938, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51939, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51940, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51941, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51942, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51943, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51944, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51945, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51946, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51947, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51948, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51949, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51950, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51951, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51952, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51953, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51954, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51955, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51956, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51957, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51958, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51959, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51960, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51961, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51962, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51963, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51964, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51965, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51966, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51967, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51968, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51969, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51970, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51971, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51972, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51973, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51974, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51975, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51976, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51977, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51978, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51979, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51980, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51981, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51982, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51983, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51984, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51985, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51986, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51987, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51988, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51989, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51990, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51991, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51992, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51993, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51994, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51995, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51996, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51997, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51998, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 51999, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52000, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52001, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52002, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52003, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52004, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52005, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52006, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52007, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52008, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52009, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52010, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52011, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52012, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52013, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52014, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52015, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52016, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52017, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52018, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52019, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52020, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52021, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52022, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52023, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52024, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52025, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52026, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52027, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52028, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52029, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52030, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52031, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52032, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52033, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52034, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52035, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52036, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52037, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52038, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52039, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52040, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52041, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52042, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52043, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52044, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52045, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52046, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52047, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52048, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52049, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52050, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52345, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52346, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52347, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52348, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52349, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52350, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52351, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52352, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52353, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52354, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52355, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52356, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52357, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52358, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52359, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52360, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52361, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52362, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52363, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52364, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52365, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52366, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52367, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52368, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52369, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52370, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52371, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52372, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52373, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52374, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52375, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52376, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52377, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52378, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52379, NULL)
INSERT INTO [dbo].[NEW_QUESTION_LEVELS] ([Universal_Sal_Level], [New_Question_Set_Id], [IgnoreMe]) VALUES ('H', 52380, NULL)




