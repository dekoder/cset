﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class FINDING
    {
        public FINDING()
        {
            FINDING_CONTACT = new HashSet<FINDING_CONTACT>();
        }

        public int Answer_Id { get; set; }
        [Key]
        public int Finding_Id { get; set; }
        public string Summary { get; set; }
        public string Issue { get; set; }
        public string Impact { get; set; }
        public string Recommendations { get; set; }
        public string Vulnerabilities { get; set; }
        public DateTime? Resolution_Date { get; set; }
        public int? Importance_Id { get; set; }
        [StringLength(250)]
        public string Title { get; set; }
        [StringLength(50)]
        public string Type { get; set; }
        public string Description { get; set; }
        public int? Auto_Generated { get; set; }
        public string Citations { get; set; }
        [StringLength(50)]
        public string Risk_Area { get; set; }
        [StringLength(50)]
        public string Sub_Risk { get; set; }

        [ForeignKey("Answer_Id")]
        [InverseProperty("FINDING")]
        public virtual ANSWER Answer { get; set; }
        [ForeignKey("Importance_Id")]
        [InverseProperty("FINDING")]
        public virtual IMPORTANCE Importance { get; set; }
        [InverseProperty("Finding")]
        public virtual ICollection<FINDING_CONTACT> FINDING_CONTACT { get; set; }
    }
}