﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class NIST_SAL_QUESTION_ANSWERS
    {
        [Key]
        public int Assessment_Id { get; set; }
        [Key]
        public int Question_Id { get; set; }
        [Required]
        [StringLength(50)]
        public string Question_Answer { get; set; }

        [ForeignKey(nameof(Assessment_Id))]
        [InverseProperty(nameof(STANDARD_SELECTION.NIST_SAL_QUESTION_ANSWERS))]
        public virtual STANDARD_SELECTION Assessment { get; set; }
        [ForeignKey(nameof(Question_Id))]
        [InverseProperty(nameof(NIST_SAL_QUESTIONS.NIST_SAL_QUESTION_ANSWERS))]
        public virtual NIST_SAL_QUESTIONS Question { get; set; }
    }
}