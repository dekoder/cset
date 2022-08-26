﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class PARAMETER_VALUES
    {
        [Key]
        public int Answer_Id { get; set; }
        [Key]
        public int Parameter_Id { get; set; }
        [StringLength(2000)]
        public string Parameter_Value { get; set; }
        public bool Parameter_Is_Default { get; set; }

        [ForeignKey("Answer_Id")]
        [InverseProperty("PARAMETER_VALUES")]
        public virtual ANSWER Answer { get; set; }
        [ForeignKey("Parameter_Id")]
        [InverseProperty("PARAMETER_VALUES")]
        public virtual PARAMETERS Parameter { get; set; }
    }
}