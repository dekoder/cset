﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model2
{
    public partial class CUSTOM_BASE_STANDARDS
    {
        [Key]
        [StringLength(50)]
        public string Custom_Questionaire_Name { get; set; }
        [Key]
        [StringLength(50)]
        public string Base_Standard { get; set; }

        [ForeignKey(nameof(Custom_Questionaire_Name))]
        [InverseProperty(nameof(CUSTOM_QUESTIONAIRES.CUSTOM_BASE_STANDARDS))]
        public virtual CUSTOM_QUESTIONAIRES Custom_Questionaire_NameNavigation { get; set; }
    }
}