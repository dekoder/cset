﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model
{
    public partial class CIST_CSI_ORGANIZATION_DEMOGRAPHICS
    {
        [Key]
        public int Assessment_Id { get; set; }
        public bool Motivation_CRR { get; set; }
        [StringLength(50)]
        public string Motivation_CRR_Description { get; set; }
        public bool Motivation_RRAP { get; set; }
        [StringLength(50)]
        public string Motivation_RRAP_Description { get; set; }
        public bool Motivation_Organization_Request { get; set; }
        [StringLength(50)]
        public string Motivation_Organization_Request_Description { get; set; }
        public bool Motivation_Law_Enforcement_Request { get; set; }
        [StringLength(50)]
        public string Motivation_Law_Enforcement_Description { get; set; }
        public bool Motivation_Direct_Threats { get; set; }
        [StringLength(50)]
        public string Motivation_Direct_Threats_Description { get; set; }
        public bool Motivation_Special_Event { get; set; }
        [StringLength(50)]
        public string Motivation_Special_Event_Description { get; set; }
        public bool Motivation_Other { get; set; }
        [StringLength(50)]
        public string Motivation_Other_Description { get; set; }
        [StringLength(50)]
        public string Parent_Organization { get; set; }
        [StringLength(50)]
        public string Organization_Name { get; set; }
        [StringLength(50)]
        public string Site_Name { get; set; }
        [StringLength(75)]
        public string Street_Address { get; set; }
        [Column(TypeName = "date")]
        public DateTime? Visit_Date { get; set; }
        public bool Completed_For_SLTT { get; set; }
        public bool Completed_For_Federal { get; set; }
        public bool Completed_For_National_Special_Event { get; set; }
        [StringLength(50)]
        public string CIKR_Sector { get; set; }
        [StringLength(50)]
        public string Sub_Sector { get; set; }
        [StringLength(25)]
        public string IT_ICS_Staff_Count { get; set; }
        [StringLength(25)]
        public string Cybersecurity_IT_ICS_Staff_Count { get; set; }

        [ForeignKey(nameof(Assessment_Id))]
        [InverseProperty(nameof(ASSESSMENTS.CIST_CSI_ORGANIZATION_DEMOGRAPHICS))]
        public virtual ASSESSMENTS Assessment { get; set; }
        [ForeignKey(nameof(Cybersecurity_IT_ICS_Staff_Count))]
        [InverseProperty(nameof(CIST_CSI_STAFF_COUNTS.CIST_CSI_ORGANIZATION_DEMOGRAPHICS))]
        public virtual CIST_CSI_STAFF_COUNTS Cybersecurity_IT_ICS_Staff_CountNavigation { get; set; }
    }
}