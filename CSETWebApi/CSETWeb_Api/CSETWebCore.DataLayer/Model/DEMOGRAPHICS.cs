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
    /// A collection of DEMOGRAPHICS records
    /// </summary>
    public partial class DEMOGRAPHICS
    {
        public DEMOGRAPHICS()
        {
            DOCUMENT_FILE = new HashSet<DOCUMENT_FILE>();
        }

        [Key]
        public int Assessment_Id { get; set; }
        public int? SectorId { get; set; }
        public int? IndustryId { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string Size { get; set; }
        [StringLength(50)]
        [Unicode(false)]
        public string AssetValue { get; set; }
        public bool NeedsPrivacy { get; set; }
        public bool NeedsSupplyChain { get; set; }
        public bool NeedsICS { get; set; }
        [StringLength(150)]
        [Unicode(false)]
        public string OrganizationName { get; set; }
        [StringLength(150)]
        [Unicode(false)]
        public string Agency { get; set; }
        public int? OrganizationType { get; set; }
        public int? Facilitator { get; set; }
        public int? PointOfContact { get; set; }
        public bool? IsScoped { get; set; }
        [StringLength(100)]
        [Unicode(false)]
        public string CriticalService { get; set; }

        [ForeignKey("Assessment_Id")]
        [InverseProperty("DEMOGRAPHICS")]
        public virtual ASSESSMENTS Assessment { get; set; }
        [ForeignKey("AssetValue")]
        [InverseProperty("DEMOGRAPHICS")]
        public virtual DEMOGRAPHICS_ASSET_VALUES AssetValueNavigation { get; set; }
        [ForeignKey("Facilitator")]
        [InverseProperty("DEMOGRAPHICSFacilitatorNavigation")]
        public virtual ASSESSMENT_CONTACTS FacilitatorNavigation { get; set; }
        public virtual SECTOR_INDUSTRY Industry { get; set; }
        [ForeignKey("OrganizationType")]
        [InverseProperty("DEMOGRAPHICS")]
        public virtual DEMOGRAPHICS_ORGANIZATION_TYPE OrganizationTypeNavigation { get; set; }
        [ForeignKey("PointOfContact")]
        [InverseProperty("DEMOGRAPHICSPointOfContactNavigation")]
        public virtual ASSESSMENT_CONTACTS PointOfContactNavigation { get; set; }
        [ForeignKey("SectorId")]
        [InverseProperty("DEMOGRAPHICS")]
        public virtual SECTOR Sector { get; set; }
        [ForeignKey("Size")]
        [InverseProperty("DEMOGRAPHICS")]
        public virtual DEMOGRAPHICS_SIZE SizeNavigation { get; set; }
        [InverseProperty("AssessmentNavigation")]
        public virtual ICollection<DOCUMENT_FILE> DOCUMENT_FILE { get; set; }
    }
}