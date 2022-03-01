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
    /// A collection of SETS_CATEGORY records
    /// </summary>
    public partial class SETS_CATEGORY
    {
        public SETS_CATEGORY()
        {
            SETS = new HashSet<SETS>();
        }

        [Key]
        public int Set_Category_Id { get; set; }
        [StringLength(250)]
        public string Set_Category_Name { get; set; }

        [InverseProperty("Set_Category")]
        public virtual ICollection<SETS> SETS { get; set; }
    }
}