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
    /// A collection of REFERENCES_DATA records
    /// </summary>
    public partial class REFERENCES_DATA
    {
        public REFERENCES_DATA()
        {
            Data = new HashSet<CATALOG_RECOMMENDATIONS_DATA>();
            Procurement = new HashSet<PROCUREMENT_LANGUAGE_DATA>();
        }

        /// <summary>
        /// The Reference Id is used to
        /// </summary>
        [Key]
        public int Reference_Id { get; set; }
        /// <summary>
        /// The Reference Doc Id is used to
        /// </summary>
        public int? Reference_Doc_Id { get; set; }
        /// <summary>
        /// The Reference Sections is used to
        /// </summary>
        public string Reference_Sections { get; set; }

        [ForeignKey("Reference_Doc_Id")]
        [InverseProperty("REFERENCES_DATA")]
        public virtual REFERENCE_DOCS Reference_Doc { get; set; }

        [ForeignKey("Reference_Id")]
        [InverseProperty("Reference")]
        public virtual ICollection<CATALOG_RECOMMENDATIONS_DATA> Data { get; set; }
        [ForeignKey("Reference_Id")]
        [InverseProperty("Reference")]
        public virtual ICollection<PROCUREMENT_LANGUAGE_DATA> Procurement { get; set; }
    }
}