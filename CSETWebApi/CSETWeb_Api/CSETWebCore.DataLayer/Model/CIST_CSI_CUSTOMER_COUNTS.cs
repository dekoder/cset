﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class CIST_CSI_CUSTOMER_COUNTS
    {
        public CIST_CSI_CUSTOMER_COUNTS()
        {
            CIST_CSI_SERVICE_DEMOGRAPHICS = new HashSet<CIST_CSI_SERVICE_DEMOGRAPHICS>();
        }

        [Key]
        [StringLength(25)]
        public string Customer_Count { get; set; }
        public int Sequence { get; set; }

        [InverseProperty("Customers_CountNavigation")]
        public virtual ICollection<CIST_CSI_SERVICE_DEMOGRAPHICS> CIST_CSI_SERVICE_DEMOGRAPHICS { get; set; }
    }
}