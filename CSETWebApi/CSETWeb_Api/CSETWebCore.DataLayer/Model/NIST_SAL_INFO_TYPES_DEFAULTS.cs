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
    /// A collection of NIST_SAL_INFO_TYPES_DEFAULTS records
    /// </summary>
    public partial class NIST_SAL_INFO_TYPES_DEFAULTS
    {
        [Key]
        [StringLength(50)]
        [Unicode(false)]
        public string Type_Value { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string Confidentiality_Value { get; set; }
        [StringLength(1500)]
        [Unicode(false)]
        public string Confidentiality_Special_Factor { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string Integrity_Value { get; set; }
        [StringLength(1500)]
        [Unicode(false)]
        public string Integrity_Special_Factor { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string Availability_Value { get; set; }
        [StringLength(1500)]
        [Unicode(false)]
        public string Availability_Special_Factor { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string Area { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string NIST_Number { get; set; }
    }
}