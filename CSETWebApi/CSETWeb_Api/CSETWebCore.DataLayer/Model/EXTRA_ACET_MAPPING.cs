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
    /// A collection of EXTRA_ACET_MAPPING records
    /// </summary>
    public partial class EXTRA_ACET_MAPPING
    {
        [Key]
        [StringLength(50)]
        public string Set_Name { get; set; }
        [Key]
        public int Question_Id { get; set; }
        public int New_Question_Set_Id { get; set; }
    }
}