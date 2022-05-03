﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class CYOTE_QUESTIONS
    {
        [Key]
        public int Question_Id { get; set; }
        [Required]
        [Unicode(false)]
        public string Question_Text { get; set; }
        [StringLength(100)]
        [Unicode(false)]
        public string Intro { get; set; }
        [StringLength(200)]
        [Unicode(false)]
        public string Symptom { get; set; }
        [Unicode(false)]
        public string Techniques { get; set; }
        [StringLength(500)]
        [Unicode(false)]
        public string Recommendation { get; set; }
    }
}