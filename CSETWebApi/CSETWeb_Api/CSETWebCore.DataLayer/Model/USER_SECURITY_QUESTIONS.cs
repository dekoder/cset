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
    /// A collection of USER_SECURITY_QUESTIONS records
    /// </summary>
    public partial class USER_SECURITY_QUESTIONS
    {
        [Key]
        public int UserId { get; set; }
        [StringLength(250)]
        [Unicode(false)]
        public string SecurityQuestion1 { get; set; }
        [StringLength(250)]
        [Unicode(false)]
        public string SecurityAnswer1 { get; set; }
        [StringLength(250)]
        [Unicode(false)]
        public string SecurityQuestion2 { get; set; }
        [StringLength(250)]
        [Unicode(false)]
        public string SecurityAnswer2 { get; set; }

        [ForeignKey("UserId")]
        [InverseProperty("USER_SECURITY_QUESTIONS")]
        public virtual USERS User { get; set; }
    }
}