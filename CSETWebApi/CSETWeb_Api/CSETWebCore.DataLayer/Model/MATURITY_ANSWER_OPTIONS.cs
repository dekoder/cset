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
            MATURITY_QUESTIONS = new HashSet<MATURITY_QUESTIONS>();
        }

        [Key]
        public int Mat_Option_Id { get; set; }
        [Required]
        [StringLength(1000)]
        [Unicode(false)]
        public string Option_Text { get; set; }
        public int Mat_Question_Id { get; set; }
        public int Answer_Sequence { get; set; }
        public int? ElementId { get; set; }
        [Column(TypeName = "decimal(18, 2)")]
        public decimal? Weight { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string Mat_Option_Type { get; set; }
        public int? Parent_Option_Id { get; set; }
        public bool Has_Answer_Text { get; set; }
        [StringLength(500)]
        [Unicode(false)]
        public string Formula { get; set; }
        [Column(TypeName = "decimal(18, 2)")]
        public decimal? Threshold { get; set; }
        [StringLength(500)]
        [Unicode(false)]
        public string RiFormula { get; set; }
        public int? ThreatType { get; set; }
        public bool? Is_None { get; set; }

        [ForeignKey("Mat_Question_Id")]
        [InverseProperty("MATURITY_ANSWER_OPTIONS")]
        public virtual MATURITY_QUESTIONS Mat_Question { get; set; }
        [InverseProperty("Mat_Option")]
        public virtual ICollection<ANSWER> ANSWER { get; set; }
        [InverseProperty("Parent_Option")]
        public virtual ICollection<MATURITY_QUESTIONS> MATURITY_QUESTIONS { get; set; }
    }
}