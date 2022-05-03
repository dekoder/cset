﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class SUB_CATEGORY_ANSWERS
    {
        [Key]
        public int Assessement_Id { get; set; }
        [Key]
        public int Heading_Pair_Id { get; set; }
        /// <summary>
        /// The Is Component is used to
        /// </summary>
        [Key]
        public bool Is_Component { get; set; }
        public bool Is_Override { get; set; }
        /// <summary>
        /// The Answer Text is used to
        /// </summary>
        [Required]
        [StringLength(50)]
        [Unicode(false)]
        public string Answer_Text { get; set; }
        /// <summary>
        /// The Component Id is used to
        /// </summary>
        [Key]
        [StringLength(36)]
        [Unicode(false)]
        public string Component_Guid { get; set; }

        [ForeignKey("Answer_Text")]
        [InverseProperty("SUB_CATEGORY_ANSWERS")]
        public virtual ANSWER_LOOKUP Answer_TextNavigation { get; set; }
        [ForeignKey("Assessement_Id")]
        [InverseProperty("SUB_CATEGORY_ANSWERS")]
        public virtual ASSESSMENTS Assessement { get; set; }
        public virtual UNIVERSAL_SUB_CATEGORY_HEADINGS Heading_Pair { get; set; }
    }
}