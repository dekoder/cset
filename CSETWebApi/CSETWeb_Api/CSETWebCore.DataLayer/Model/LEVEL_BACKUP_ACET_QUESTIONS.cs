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
    /// A collection of LEVEL_BACKUP_ACET_QUESTIONS records
    /// </summary>
    public partial class LEVEL_BACKUP_ACET_QUESTIONS
    {
        public int question_id { get; set; }
        [Key]
        public int New_Question_Set_Id { get; set; }
        [Key]
        [StringLength(50)]
        public string universal_sal_level { get; set; }
    }
}