﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CSETWebCore.DataLayer
{
    /// <summary>
    /// A collection of ANSWER_LOOKUP records
    /// </summary>
    public partial class ANSWER_LOOKUP
    {
        public ANSWER_LOOKUP()
        {
            ANSWER = new HashSet<ANSWER>();
            SUB_CATEGORY_ANSWERS = new HashSet<SUB_CATEGORY_ANSWERS>();
        }

        /// <summary>
        /// The Answer Text is used to
        /// </summary>
        [Key]
        [StringLength(50)]
        public string Answer_Text { get; set; }
        /// <summary>
        /// The Answer Full Name is used to
        /// </summary>
        [Required]
        [StringLength(50)]
        public string Answer_Full_Name { get; set; }

        [InverseProperty("Answer_TextNavigation")]
        public virtual ICollection<ANSWER> ANSWER { get; set; }
        [InverseProperty("Answer_TextNavigation")]
        public virtual ICollection<SUB_CATEGORY_ANSWERS> SUB_CATEGORY_ANSWERS { get; set; }
    }
}