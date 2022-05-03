﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class CUSTOM_STANDARD_BASE_STANDARD
    {
        [Required]
        [StringLength(50)]
        [Unicode(false)]
        public string Custom_Questionaire_Name { get; set; }
        [Required]
        [StringLength(50)]
        [Unicode(false)]
        public string Base_Standard { get; set; }
        [Key]
        public int Custom_Standard_Base_Standard_Id { get; set; }

        [ForeignKey("Base_Standard")]
        [InverseProperty("CUSTOM_STANDARD_BASE_STANDARDBase_StandardNavigation")]
        public virtual SETS Base_StandardNavigation { get; set; }
        [ForeignKey("Custom_Questionaire_Name")]
        [InverseProperty("CUSTOM_STANDARD_BASE_STANDARDCustom_Questionaire_NameNavigation")]
        public virtual SETS Custom_Questionaire_NameNavigation { get; set; }
    }
}