﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace CSETWebCore.DataLayer.Model
{
    public partial class GetComparisonFilePercentageResult
    {
        public int? Assessment_Id { get; set; }
        public string Name { get; set; }
        public string StatType { get; set; }
        public int Total { get; set; }
        public int YesCount { get; set; }
        public int NoCount { get; set; }
        public int NaCount { get; set; }
        public int AlternateCount { get; set; }
        public int UnansweredCount { get; set; }
        public int? TotalCount { get; set; }
    }
}