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
    /// A collection of DIAGRAM_OBJECT_TYPES records
    /// </summary>
    public partial class DIAGRAM_OBJECT_TYPES
    {
        public DIAGRAM_OBJECT_TYPES()
        {
            DIAGRAM_TYPES = new HashSet<DIAGRAM_TYPES>();
        }

        [Key]
        [StringLength(100)]
        [Unicode(false)]
        public string Object_Type { get; set; }
        public int? Object_Type_Order { get; set; }

        [InverseProperty("Object_TypeNavigation")]
        public virtual ICollection<DIAGRAM_TYPES> DIAGRAM_TYPES { get; set; }
    }
}