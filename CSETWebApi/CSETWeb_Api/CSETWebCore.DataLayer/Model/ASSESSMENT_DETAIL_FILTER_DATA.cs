﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class ASSESSMENT_DETAIL_FILTER_DATA
    {
        [Key]
        public int Detail_Id { get; set; }
        public string Name { get; set; }
        public string CityOrSite { get; set; }
        [StringLength(100)]
        public string State { get; set; }
        [StringLength(100)]
        public string Charter { get; set; }
        [StringLength(100)]
        public string Model { get; set; }
    }
}