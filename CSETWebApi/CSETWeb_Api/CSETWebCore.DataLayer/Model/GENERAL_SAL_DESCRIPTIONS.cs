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
    /// A collection of GENERAL_SAL_DESCRIPTIONS records
    /// </summary>
    public partial class GENERAL_SAL_DESCRIPTIONS
    {
        public GENERAL_SAL_DESCRIPTIONS()
        {
            GEN_SAL_WEIGHTS = new HashSet<GEN_SAL_WEIGHTS>();
        }

        [Key]
        [StringLength(50)]
        public string Sal_Name { get; set; }
        [Required]
        [StringLength(1024)]
        public string Sal_Description { get; set; }
        public int Sal_Order { get; set; }
        public int? min { get; set; }
        public int? max { get; set; }
        public int? step { get; set; }
        [StringLength(50)]
        public string prefix { get; set; }
        [StringLength(50)]
        public string postfix { get; set; }

        [InverseProperty("Sal_NameNavigation")]
        public virtual ICollection<GEN_SAL_WEIGHTS> GEN_SAL_WEIGHTS { get; set; }
    }
}