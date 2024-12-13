using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace WebApplication1.Models;

[Table("DANHMUC")]
public partial class Danhmuc
{
    [DisplayName("Mã danh mục")]
    [Key]
    [Column("MaDM")]
    public int MaDm { get; set; }
    
    [DisplayName("Tên danh mục")]
    [Required(ErrorMessage = "Tên danh mục không được bỏ trống.")]
    [StringLength(255)]
    public required string Ten { get; set; }

    [DisplayName("Tên danh mục không dấu")]
    [StringLength(255)]
    public string? TenKhongDau { get; set; }

    [InverseProperty("MaDmNavigation")]
    public virtual ICollection<Mathang> Mathangs { get; set; } = new List<Mathang>();
}
