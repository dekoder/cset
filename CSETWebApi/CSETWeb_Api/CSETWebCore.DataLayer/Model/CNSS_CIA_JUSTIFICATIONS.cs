﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class CNSS_CIA_JUSTIFICATIONS
    {
        [Key]
        public int Assessment_Id { get; set; }
        [Key]
        [StringLength(50)]
        public string CIA_Type { get; set; }
        [Required]
        [StringLength(50)]
        public string DropDownValueLevel { get; set; }
        [Required]
        [StringLength(1500)]
        public string Justification { get; set; }

        [ForeignKey(nameof(Assessment_Id))]
        [InverseProperty(nameof(ASSESSMENTS.CNSS_CIA_JUSTIFICATIONS))]
        public virtual ASSESSMENTS Assessment { get; set; }
        [ForeignKey(nameof(CIA_Type))]
        [InverseProperty(nameof(CNSS_CIA_TYPES.CNSS_CIA_JUSTIFICATIONS))]
        public virtual CNSS_CIA_TYPES CIA_TypeNavigation { get; set; }
    }
}