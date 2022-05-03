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
    /// A collection of PROCUREMENT_LANGUAGE_DATA records
    /// </summary>
    public partial class PROCUREMENT_LANGUAGE_DATA
    {
        public PROCUREMENT_LANGUAGE_DATA()
        {
            Dependencies = new HashSet<PROCUREMENT_LANGUAGE_DATA>();
            Procurement = new HashSet<PROCUREMENT_LANGUAGE_DATA>();
            Reference = new HashSet<REFERENCES_DATA>();
        }

        /// <summary>
        /// The Procurement Id is used to
        /// </summary>
        [Key]
        public int Procurement_Id { get; set; }
        /// <summary>
        /// The Parent Heading Id is used to
        /// </summary>
        public int? Parent_Heading_Id { get; set; }
        /// <summary>
        /// The Section Number is used to
        /// </summary>
        [StringLength(50)]
        [Unicode(false)]
        public string Section_Number { get; set; }
        /// <summary>
        /// The Topic Name is used to
        /// </summary>
        public string Topic_Name { get; set; }
        /// <summary>
        /// The Heading is used to
        /// </summary>
        public string Heading { get; set; }
        /// <summary>
        /// The Basis is used to
        /// </summary>
        public string Basis { get; set; }
        /// <summary>
        /// The Language Guidance is used to
        /// </summary>
        public string Language_Guidance { get; set; }
        /// <summary>
        /// The Procurement Language is used to
        /// </summary>
        public string Procurement_Language { get; set; }
        /// <summary>
        /// The Fatmeasures is used to
        /// </summary>
        public string Fatmeasures { get; set; }
        /// <summary>
        /// The Satmeasures is used to
        /// </summary>
        public string Satmeasures { get; set; }
        /// <summary>
        /// The Maintenance Guidance is used to
        /// </summary>
        public string Maintenance_Guidance { get; set; }
        /// <summary>
        /// The References Doc is used to
        /// </summary>
        public string References_Doc { get; set; }
        /// <summary>
        /// The Flow Document is used to
        /// </summary>
        public string Flow_Document { get; set; }

        [ForeignKey("Parent_Heading_Id")]
        [InverseProperty("PROCUREMENT_LANGUAGE_DATA")]
        public virtual PROCUREMENT_LANGUAGE_HEADINGS Parent_Heading { get; set; }

        [ForeignKey("Procurement_Id")]
        [InverseProperty("Procurement")]
        public virtual ICollection<PROCUREMENT_LANGUAGE_DATA> Dependencies { get; set; }
        [ForeignKey("Dependencies_Id")]
        [InverseProperty("Dependencies")]
        public virtual ICollection<PROCUREMENT_LANGUAGE_DATA> Procurement { get; set; }
        [ForeignKey("Procurement_Id")]
        [InverseProperty("Procurement")]
        public virtual ICollection<REFERENCES_DATA> Reference { get; set; }
    }
}