﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace CSETWebCore.DataLayer.Model;

[PrimaryKey("CSF_Code", "Question_Type", "Question_Id")]
public partial class CSF_MAPPING
{
    [Key]
    [StringLength(10)]
    public string CSF_Code { get; set; }

    [Key]
    [StringLength(10)]
    public string Question_Type { get; set; }

    [Key]
    public int Question_Id { get; set; }
}