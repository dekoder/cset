﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class ASSESSMENT_ICONS
    {
        [Key]
        public int Icon_Id { get; set; }
        [StringLength(100)]
        public string Icon_Path { get; set; }
    }
}