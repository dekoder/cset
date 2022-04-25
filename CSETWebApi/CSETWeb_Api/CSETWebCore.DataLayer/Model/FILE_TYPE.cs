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
    /// A collection of FILE_TYPE records
    /// </summary>
    public partial class FILE_TYPE
    {
        public FILE_TYPE()
        {
            GEN_FILE = new HashSet<GEN_FILE>();
        }

        /// <summary>
        /// The File Type Id is used to
        /// </summary>
        [Key]
        [Column(TypeName = "numeric(38, 0)")]
        public decimal File_Type_Id { get; set; }
        /// <summary>
        /// The File Type is used to
        /// </summary>
        [Required]
        [Column("File_Type")]
        [StringLength(60)]
        public string File_Type1 { get; set; }
        /// <summary>
        /// The Mime Type is used to
        /// </summary>
        [StringLength(80)]
        public string Mime_Type { get; set; }
        /// <summary>
        /// The Description is used to
        /// </summary>
        [StringLength(250)]
        public string Description { get; set; }

        [InverseProperty("File_Type")]
        public virtual ICollection<GEN_FILE> GEN_FILE { get; set; }
    }
}