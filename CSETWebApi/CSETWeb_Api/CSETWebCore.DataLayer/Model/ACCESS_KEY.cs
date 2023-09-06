﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class ACCESS_KEY
    {
        public ACCESS_KEY()
        {
            ACCESS_KEY_ASSESSMENT = new HashSet<ACCESS_KEY_ASSESSMENT>();
        }

        [Key]
        [StringLength(20)]
        public string AccessKey { get; set; }
        public DateTime GeneratedDate { get; set; }
        [Required]
        public bool? PreventEncrypt { get; set; }
        public bool? CisaAssessorWorkflow { get; set; }

        [InverseProperty("AccessKeyNavigation")]
        public virtual ICollection<ACCESS_KEY_ASSESSMENT> ACCESS_KEY_ASSESSMENT { get; set; }
    }
}