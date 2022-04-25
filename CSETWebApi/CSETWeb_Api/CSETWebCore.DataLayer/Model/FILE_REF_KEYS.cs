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
    /// A collection of FILE_REF_KEYS records
    /// </summary>
    public partial class FILE_REF_KEYS
    {
        public FILE_REF_KEYS()
        {
            GEN_FILE = new HashSet<GEN_FILE>();
            STANDARD_SOURCE_FILE = new HashSet<STANDARD_SOURCE_FILE>();
        }

        /// <summary>
        /// The Doc Num is used to
        /// </summary>
        [Key]
        [StringLength(40)]
        public string Doc_Num { get; set; }

        [InverseProperty("Doc_NumNavigation")]
        public virtual ICollection<GEN_FILE> GEN_FILE { get; set; }
        [InverseProperty("Doc_NumNavigation")]
        public virtual ICollection<STANDARD_SOURCE_FILE> STANDARD_SOURCE_FILE { get; set; }
    }
}