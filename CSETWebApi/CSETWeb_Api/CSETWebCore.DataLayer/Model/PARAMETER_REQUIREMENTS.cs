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
    /// A collection of PARAMETER_REQUIREMENTS records
    /// </summary>
    public partial class PARAMETER_REQUIREMENTS
    {
        [Key]
        public int Requirement_Id { get; set; }
        [Key]
        public int Parameter_Id { get; set; }
        public int? ID { get; set; }

        [ForeignKey(nameof(Parameter_Id))]
        [InverseProperty(nameof(PARAMETERS.PARAMETER_REQUIREMENTS))]
        public virtual PARAMETERS Parameter { get; set; }
        [ForeignKey(nameof(Requirement_Id))]
        [InverseProperty(nameof(NEW_REQUIREMENT.PARAMETER_REQUIREMENTS))]
        public virtual NEW_REQUIREMENT Requirement { get; set; }
    }
}