﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace CSETWebCore.DataLayer.Model
{
    /// <summary>
    /// A collection of ASSESSMENT_CONTACTS records
    /// </summary>
    public partial class ASSESSMENT_CONTACTS
    {
        public ASSESSMENT_CONTACTS()
        {
            DEMOGRAPHICSFacilitatorNavigation = new HashSet<DEMOGRAPHICS>();
            DEMOGRAPHICSPointOfContactNavigation = new HashSet<DEMOGRAPHICS>();
            FINDING_CONTACT = new HashSet<FINDING_CONTACT>();
        }

        public int Assessment_Id { get; set; }
        [StringLength(150)]
        public string PrimaryEmail { get; set; }
        [StringLength(150)]
        public string FirstName { get; set; }
        [StringLength(150)]
        public string LastName { get; set; }
        public bool Invited { get; set; }
        public int AssessmentRoleId { get; set; }
        public int? UserId { get; set; }
        [Key]
        public int Assessment_Contact_Id { get; set; }
        [StringLength(150)]
        public string Title { get; set; }
        [StringLength(150)]
        public string Phone { get; set; }

        [ForeignKey(nameof(Assessment_Id))]
        [InverseProperty(nameof(ASSESSMENTS.ASSESSMENT_CONTACTS))]
        public virtual ASSESSMENTS Assessment { get; set; }
        [ForeignKey(nameof(AssessmentRoleId))]
        [InverseProperty(nameof(ASSESSMENT_ROLES.ASSESSMENT_CONTACTS))]
        public virtual ASSESSMENT_ROLES AssessmentRole { get; set; }
        [ForeignKey(nameof(UserId))]
        [InverseProperty(nameof(USERS.ASSESSMENT_CONTACTS))]
        public virtual USERS User { get; set; }
        [InverseProperty(nameof(DEMOGRAPHICS.FacilitatorNavigation))]
        public virtual ICollection<DEMOGRAPHICS> DEMOGRAPHICSFacilitatorNavigation { get; set; }
        [InverseProperty(nameof(DEMOGRAPHICS.PointOfContactNavigation))]
        public virtual ICollection<DEMOGRAPHICS> DEMOGRAPHICSPointOfContactNavigation { get; set; }
        [InverseProperty("Assessment_Contact")]
        public virtual ICollection<FINDING_CONTACT> FINDING_CONTACT { get; set; }
    }
}