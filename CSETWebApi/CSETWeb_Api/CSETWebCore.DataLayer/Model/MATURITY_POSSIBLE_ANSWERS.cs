﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class MATURITY_POSSIBLE_ANSWERS
    {
        [Key]
        public int Maturity_Model_Id { get; set; }
        [Key]
        [StringLength(5)]
        public string Maturity_Answer { get; set; }
    }
}