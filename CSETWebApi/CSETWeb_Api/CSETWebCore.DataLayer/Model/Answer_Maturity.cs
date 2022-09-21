﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    [Keyless]
    public partial class Answer_Maturity
    {
        public int Answer_Id { get; set; }
        public int Assessment_Id { get; set; }
        public bool? Mark_For_Review { get; set; }
        public string Comment { get; set; }
        [StringLength(2048)]
        public string Alternate_Justification { get; set; }
        public bool? Is_Requirement { get; set; }
        public int Question_Or_Requirement_Id { get; set; }
        public int? Question_Number { get; set; }
        [Required]
        [StringLength(50)]
        public string Answer_Text { get; set; }
        public Guid Component_Guid { get; set; }
        public bool? Is_Component { get; set; }
        public bool? Is_Framework { get; set; }
        public bool? Is_Maturity { get; set; }
        [StringLength(50)]
        public string Custom_Question_Guid { get; set; }
        public int? Old_Answer_Id { get; set; }
        public bool Reviewed { get; set; }
        [StringLength(2048)]
        public string FeedBack { get; set; }
        public int? Maturity_Level_Id { get; set; }
        public string Question_Text { get; set; }
    }
}