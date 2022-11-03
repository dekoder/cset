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
    /// A collection of AVAILABLE_STANDARDS records
    /// </summary>
    public partial class AVAILABLE_STANDARDS
    {
        [Key]
        public int Assessment_Id { get; set; }
        /// <summary>
        /// The Old Entity Name is used to
        /// </summary>
        [Key]
        [StringLength(50)]
        public string Set_Name { get; set; }
        /// <summary>
        /// The Selected is used to
        /// </summary>
        public bool Selected { get; set; }
        [StringLength(5)]
        [Unicode(false)]
        public string Suppress_Mode { get; set; }

        [ForeignKey("Assessment_Id")]
        [InverseProperty("AVAILABLE_STANDARDS")]
        public virtual ASSESSMENTS Assessment { get; set; }
        [ForeignKey("Set_Name")]
        [InverseProperty("AVAILABLE_STANDARDS")]
        public virtual SETS Set_NameNavigation { get; set; }
    }
}