﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace CSETWebCore.DataLayer.Model
{
    public partial class GetComparisonFileOverallsResult
    {
        public int? Assessment_Id { get; set; }
        public string StatType { get; set; }
        public int Total { get; set; }
        public int? Y { get; set; }
        public int? N { get; set; }
        public int? NA { get; set; }
        public int? A { get; set; }
        public int? U { get; set; }
        public double? Value { get; set; }
        public int? TotalNoNA { get; set; }
    }
}
