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
    /// A collection of FINANCIAL_ATTRIBUTES records
    /// </summary>
    public partial class FINANCIAL_ATTRIBUTES
    {
        public FINANCIAL_ATTRIBUTES()
        {
            FINANCIAL_ASSESSMENT_VALUES = new HashSet<FINANCIAL_ASSESSMENT_VALUES>();
        }

        [Key]
        [StringLength(250)]
        [Unicode(false)]
        public string AttributeName { get; set; }

        [InverseProperty("AttributeNameNavigation")]
        public virtual ICollection<FINANCIAL_ASSESSMENT_VALUES> FINANCIAL_ASSESSMENT_VALUES { get; set; }
    }
}