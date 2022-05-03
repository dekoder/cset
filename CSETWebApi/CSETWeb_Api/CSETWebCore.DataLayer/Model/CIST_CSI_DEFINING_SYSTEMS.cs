﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    [Index("Defining_System", Name = "IX_CIST_CSI_DEFINING_SYSTEMS", IsUnique = true)]
    public partial class CIST_CSI_DEFINING_SYSTEMS
    {
        public CIST_CSI_DEFINING_SYSTEMS()
        {
            CIST_CSI_SERVICE_COMPOSITION = new HashSet<CIST_CSI_SERVICE_COMPOSITION>();
            Assessment = new HashSet<CIST_CSI_SERVICE_COMPOSITION>();
        }

        [Key]
        public int Defining_System_Id { get; set; }
        [Required]
        [StringLength(400)]
        [Unicode(false)]
        public string Defining_System { get; set; }

        [InverseProperty("Primary_Defining_SystemNavigation")]
        public virtual ICollection<CIST_CSI_SERVICE_COMPOSITION> CIST_CSI_SERVICE_COMPOSITION { get; set; }

        [ForeignKey("Defining_System_Id")]
        [InverseProperty("Defining_System")]
        public virtual ICollection<CIST_CSI_SERVICE_COMPOSITION> Assessment { get; set; }
    }
}