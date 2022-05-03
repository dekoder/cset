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
    /// A collection of REQUIREMENT_SETS records
    /// </summary>
    public partial class REQUIREMENT_SETS
    {
        /// <summary>
        /// The Requirement Id is used to
        /// </summary>
        [Key]
        public int Requirement_Id { get; set; }
        /// <summary>
        /// The Set Name is used to
        /// </summary>
        [Key]
        [StringLength(50)]
        [Unicode(false)]
        public string Set_Name { get; set; }
        public int Requirement_Sequence { get; set; }

        [ForeignKey("Requirement_Id")]
        [InverseProperty("REQUIREMENT_SETS")]
        public virtual NEW_REQUIREMENT Requirement { get; set; }
        [ForeignKey("Set_Name")]
        [InverseProperty("REQUIREMENT_SETS")]
        public virtual SETS Set_NameNavigation { get; set; }
    }
}