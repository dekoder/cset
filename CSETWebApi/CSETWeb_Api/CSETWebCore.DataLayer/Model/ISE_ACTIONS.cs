﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    /// <summary>
    /// ISE specific fields for issues
    /// </summary>
    public partial class ISE_ACTIONS
    {
        [Key]
        public int Question_Id { get; set; }
        public string Description { get; set; }
        [StringLength(1000)]
        public string Action_Items { get; set; }
        [StringLength(100)]
        public string Regulatory_Citation { get; set; }

        [ForeignKey("Question_Id")]
        [InverseProperty("ISE_ACTIONS")]
        public virtual MATURITY_QUESTIONS Question { get; set; }
    }
}