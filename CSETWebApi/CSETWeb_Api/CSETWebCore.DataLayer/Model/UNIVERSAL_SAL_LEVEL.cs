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
    /// A collection of UNIVERSAL_SAL_LEVEL records
    /// </summary>
    [Index(nameof(Full_Name_Sal), Name = "IX_UNIVERSAL_SAL_LEVEL", IsUnique = true)]
    public partial class UNIVERSAL_SAL_LEVEL
    {
        public UNIVERSAL_SAL_LEVEL()
        {
            NEW_QUESTION = new HashSet<NEW_QUESTION>();
            NEW_QUESTION_LEVELS = new HashSet<NEW_QUESTION_LEVELS>();
            STANDARD_SELECTION = new HashSet<STANDARD_SELECTION>();
            STANDARD_TO_UNIVERSAL_MAP = new HashSet<STANDARD_TO_UNIVERSAL_MAP>();
        }

        /// <summary>
        /// The Universal Sal Level is used to
        /// </summary>
        [Key]
        [Column("Universal_Sal_Level")]
        [StringLength(10)]
        public string Universal_Sal_Level1 { get; set; }
        /// <summary>
        /// The Sal Level Order is used to
        /// </summary>
        public int Sal_Level_Order { get; set; }
        /// <summary>
        /// The Full Name Sal is used to
        /// </summary>
        [Required]
        [StringLength(10)]
        public string Full_Name_Sal { get; set; }

        [InverseProperty("Universal_Sal_LevelNavigation")]
        public virtual ICollection<NEW_QUESTION> NEW_QUESTION { get; set; }
        [InverseProperty("Universal_Sal_LevelNavigation")]
        public virtual ICollection<NEW_QUESTION_LEVELS> NEW_QUESTION_LEVELS { get; set; }
        public virtual ICollection<STANDARD_SELECTION> STANDARD_SELECTION { get; set; }
        [InverseProperty("Universal_Sal_LevelNavigation")]
        public virtual ICollection<STANDARD_TO_UNIVERSAL_MAP> STANDARD_TO_UNIVERSAL_MAP { get; set; }
    }
}