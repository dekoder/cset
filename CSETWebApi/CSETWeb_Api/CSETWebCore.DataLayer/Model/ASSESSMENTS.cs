﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model;

/// <summary>
/// A collection of ASSESSMENTS records
/// </summary>
public partial class ASSESSMENTS
{
    [Key]
    public int Assessment_Id { get; set; }

    public DateTime AssessmentCreatedDate { get; set; }

    public int? AssessmentCreatorId { get; set; }

    public DateTime? LastModifiedDate { get; set; }

    [StringLength(50)]
    public string Alias { get; set; }

    public Guid Assessment_GUID { get; set; }

    public DateTime Assessment_Date { get; set; }

    [StringLength(100)]
    public string CreditUnionName { get; set; }

    [StringLength(100)]
    public string Charter { get; set; }

    [StringLength(100)]
    public string Assets { get; set; }

    public int? IRPTotalOverride { get; set; }

    [StringLength(150)]
    public string IRPTotalOverrideReason { get; set; }

    public bool MatDetail_targetBandOnly { get; set; }

    [Column(TypeName = "xml")]
    public string Diagram_Markup { get; set; }

    public int LastUsedComponentNumber { get; set; }

    public string Diagram_Image { get; set; }

    public bool AnalyzeDiagram { get; set; }

    public bool UseDiagram { get; set; }

    public bool UseStandard { get; set; }

    public bool UseMaturity { get; set; }

    public DateTime? AssessmentEffectiveDate { get; set; }

    public Guid? GalleryItemGuid { get; set; }

    public bool? ISE_StateLed { get; set; }

    public bool Is_PCII { get; set; }

    [StringLength(50)]
    public string PCII_Number { get; set; }

    [InverseProperty("Assessment")]
    public virtual ICollection<ACCESS_KEY_ASSESSMENT> ACCESS_KEY_ASSESSMENT { get; set; } = new List<ACCESS_KEY_ASSESSMENT>();

    [InverseProperty("Assessment")]
    public virtual ICollection<AGGREGATION_ASSESSMENT> AGGREGATION_ASSESSMENT { get; set; } = new List<AGGREGATION_ASSESSMENT>();

    [InverseProperty("Assessment")]
    public virtual ICollection<ANSWER> ANSWER { get; set; } = new List<ANSWER>();

    [InverseProperty("Asessment")]
    public virtual ICollection<ANSWER_PROFILE> ANSWER_PROFILE { get; set; } = new List<ANSWER_PROFILE>();

    [InverseProperty("Assessment")]
    public virtual ICollection<ASSESSMENTS_REQUIRED_DOCUMENTATION> ASSESSMENTS_REQUIRED_DOCUMENTATION { get; set; } = new List<ASSESSMENTS_REQUIRED_DOCUMENTATION>();

    [InverseProperty("Assessment")]
    public virtual ICollection<ASSESSMENT_CONTACTS> ASSESSMENT_CONTACTS { get; set; } = new List<ASSESSMENT_CONTACTS>();

    [InverseProperty("Assessment")]
    public virtual ICollection<ASSESSMENT_DIAGRAM_COMPONENTS> ASSESSMENT_DIAGRAM_COMPONENTS { get; set; } = new List<ASSESSMENT_DIAGRAM_COMPONENTS>();

    [InverseProperty("Assessment")]
    public virtual ICollection<ASSESSMENT_IRP> ASSESSMENT_IRP { get; set; } = new List<ASSESSMENT_IRP>();

    [InverseProperty("ASSESSMENT")]
    public virtual ICollection<ASSESSMENT_IRP_HEADER> ASSESSMENT_IRP_HEADER { get; set; } = new List<ASSESSMENT_IRP_HEADER>();

    [InverseProperty("Assessment")]
    public virtual ICollection<AVAILABLE_MATURITY_MODELS> AVAILABLE_MATURITY_MODELS { get; set; } = new List<AVAILABLE_MATURITY_MODELS>();

    [InverseProperty("Assessment")]
    public virtual ICollection<AVAILABLE_STANDARDS> AVAILABLE_STANDARDS { get; set; } = new List<AVAILABLE_STANDARDS>();

    [ForeignKey("AssessmentCreatorId")]
    [InverseProperty("ASSESSMENTS")]
    public virtual USERS AssessmentCreator { get; set; }

    [InverseProperty("Assessment")]
    public virtual CIS_CSI_ORGANIZATION_DEMOGRAPHICS CIS_CSI_ORGANIZATION_DEMOGRAPHICS { get; set; }

    [InverseProperty("Assessment")]
    public virtual CIS_CSI_SERVICE_COMPOSITION CIS_CSI_SERVICE_COMPOSITION { get; set; }

    [InverseProperty("Assessment")]
    public virtual CIS_CSI_SERVICE_DEMOGRAPHICS CIS_CSI_SERVICE_DEMOGRAPHICS { get; set; }

    [InverseProperty("Assessment")]
    public virtual ICollection<CNSS_CIA_JUSTIFICATIONS> CNSS_CIA_JUSTIFICATIONS { get; set; } = new List<CNSS_CIA_JUSTIFICATIONS>();

    [InverseProperty("Assessment")]
    public virtual ICollection<COUNTY_ANSWERS> COUNTY_ANSWERS { get; set; } = new List<COUNTY_ANSWERS>();

    [InverseProperty("Assessment")]
    public virtual DEMOGRAPHICS DEMOGRAPHICS { get; set; }

    [InverseProperty("Assessment")]
    public virtual DEMOGRAPHIC_ANSWERS DEMOGRAPHIC_ANSWERS { get; set; }

    [InverseProperty("Assessment")]
    public virtual ICollection<DETAILS_DEMOGRAPHICS> DETAILS_DEMOGRAPHICS { get; set; } = new List<DETAILS_DEMOGRAPHICS>();

    [InverseProperty("Assessment")]
    public virtual ICollection<DOCUMENT_FILE> DOCUMENT_FILE { get; set; } = new List<DOCUMENT_FILE>();

    [InverseProperty("Assessment")]
    public virtual ICollection<FINANCIAL_ASSESSMENT_VALUES> FINANCIAL_ASSESSMENT_VALUES { get; set; } = new List<FINANCIAL_ASSESSMENT_VALUES>();

    [InverseProperty("Assessment")]
    public virtual ICollection<FINANCIAL_DOMAIN_FILTERS> FINANCIAL_DOMAIN_FILTERS { get; set; } = new List<FINANCIAL_DOMAIN_FILTERS>();

    [InverseProperty("Assessment")]
    public virtual ICollection<FINANCIAL_HOURS> FINANCIAL_HOURS { get; set; } = new List<FINANCIAL_HOURS>();

    [InverseProperty("Assessment")]
    public virtual ICollection<FRAMEWORK_TIER_TYPE_ANSWER> FRAMEWORK_TIER_TYPE_ANSWER { get; set; } = new List<FRAMEWORK_TIER_TYPE_ANSWER>();

    [InverseProperty("Assessment")]
    public virtual ICollection<GENERAL_SAL> GENERAL_SAL { get; set; } = new List<GENERAL_SAL>();

    [ForeignKey("GalleryItemGuid")]
    [InverseProperty("ASSESSMENTS")]
    public virtual GALLERY_ITEM GalleryItem { get; set; }

    [InverseProperty("IdNavigation")]
    public virtual INFORMATION INFORMATION { get; set; }

    [InverseProperty("Assessment")]
    public virtual ICollection<MALCOLM_ANSWERS> MALCOLM_ANSWERS { get; set; } = new List<MALCOLM_ANSWERS>();

    [InverseProperty("Assessment")]
    public virtual ICollection<MATURITY_DOMAIN_REMARKS> MATURITY_DOMAIN_REMARKS { get; set; } = new List<MATURITY_DOMAIN_REMARKS>();

    [InverseProperty("Assessment")]
    public virtual ICollection<METRO_ANSWERS> METRO_ANSWERS { get; set; } = new List<METRO_ANSWERS>();

    [InverseProperty("Assessment")]
    public virtual ICollection<NETWORK_WARNINGS> NETWORK_WARNINGS { get; set; } = new List<NETWORK_WARNINGS>();

    [InverseProperty("Assessment")]
    public virtual ICollection<PARAMETER_ASSESSMENT> PARAMETER_ASSESSMENT { get; set; } = new List<PARAMETER_ASSESSMENT>();

    [InverseProperty("Assessment")]
    public virtual ICollection<REGION_ANSWERS> REGION_ANSWERS { get; set; } = new List<REGION_ANSWERS>();

    [InverseProperty("Assessment")]
    public virtual ICollection<REPORT_DETAIL_SECTION_SELECTION> REPORT_DETAIL_SECTION_SELECTION { get; set; } = new List<REPORT_DETAIL_SECTION_SELECTION>();

    [InverseProperty("Assessment")]
    public virtual ICollection<REPORT_OPTIONS_SELECTION> REPORT_OPTIONS_SELECTION { get; set; } = new List<REPORT_OPTIONS_SELECTION>();

    [InverseProperty("Assesment")]
    public virtual ICollection<REPORT_STANDARDS_SELECTION> REPORT_STANDARDS_SELECTION { get; set; } = new List<REPORT_STANDARDS_SELECTION>();

    [InverseProperty("Assessment")]
    public virtual STANDARD_SELECTION STANDARD_SELECTION { get; set; }

    [InverseProperty("Assessement")]
    public virtual ICollection<SUB_CATEGORY_ANSWERS> SUB_CATEGORY_ANSWERS { get; set; } = new List<SUB_CATEGORY_ANSWERS>();
}