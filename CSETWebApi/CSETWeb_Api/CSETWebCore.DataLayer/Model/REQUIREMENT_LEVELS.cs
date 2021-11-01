﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace CSETWebCore.DataLayer.Model
{
    /// <summary>
    /// A collection of REQUIREMENT_LEVELS records
    /// </summary>
    public partial class REQUIREMENT_LEVELS
    {
        /// <summary>
        /// The Requirement Id is used to
        /// </summary>
        [Key]
        public int Requirement_Id { get; set; }
        /// <summary>
        /// The Standard Level is used to
        /// </summary>
        [Key]
        [StringLength(50)]
        public string Standard_Level { get; set; }
        /// <summary>
        /// The Level Type is used to
        /// </summary>
        [Key]
        [StringLength(5)]
        public string Level_Type { get; set; }
        /// <summary>
        /// The Id is used to
        /// </summary>
        public int? Id { get; set; }

        [ForeignKey(nameof(Level_Type))]
        [InverseProperty(nameof(REQUIREMENT_LEVEL_TYPE.REQUIREMENT_LEVELS))]
        public virtual REQUIREMENT_LEVEL_TYPE Level_TypeNavigation { get; set; }
        [ForeignKey(nameof(Requirement_Id))]
        [InverseProperty(nameof(NEW_REQUIREMENT.REQUIREMENT_LEVELS))]
        public virtual NEW_REQUIREMENT Requirement { get; set; }
        [ForeignKey(nameof(Standard_Level))]
        [InverseProperty(nameof(STANDARD_SPECIFIC_LEVEL.REQUIREMENT_LEVELS))]
        public virtual STANDARD_SPECIFIC_LEVEL Standard_LevelNavigation { get; set; }
    }
}