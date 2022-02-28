﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model2
{
    /// <summary>
    /// A collection of COUNTRIES records
    /// </summary>
    [Index(nameof(ISO_code), Name = "IX_COUNTRIES", IsUnique = true)]
    public partial class COUNTRIES
    {
        public COUNTRIES()
        {
            STATES_AND_PROVINCES = new HashSet<STATES_AND_PROVINCES>();
        }

        [Required]
        [StringLength(5)]
        public string ISO_code { get; set; }
        [Required]
        [StringLength(58)]
        public string Display_Name { get; set; }
        [Key]
        public int COUNTRIES_ID { get; set; }

        public virtual ICollection<STATES_AND_PROVINCES> STATES_AND_PROVINCES { get; set; }
    }
}