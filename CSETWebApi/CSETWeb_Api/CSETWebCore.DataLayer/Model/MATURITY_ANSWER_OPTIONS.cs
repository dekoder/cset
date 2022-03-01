﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class MATURITY_ANSWER_OPTIONS
    {
        public MATURITY_ANSWER_OPTIONS()
        {
            ANSWER = new HashSet<ANSWER>();
        }

        [Key]
        public int Mat_Option_Id { get; set; }
        [Required]
        [StringLength(200)]
        public string Answer_Text { get; set; }
        public int Mat_Question_Id { get; set; }
        public int Answer_Sequence { get; set; }

        [ForeignKey(nameof(Mat_Question_Id))]
        [InverseProperty(nameof(MATURITY_QUESTIONS.MATURITY_ANSWER_OPTIONS))]
        public virtual MATURITY_QUESTIONS Mat_Question { get; set; }
        [InverseProperty("Mat_Option")]
        public virtual ICollection<ANSWER> ANSWER { get; set; }
    }
}