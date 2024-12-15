using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace WebApplication1.Models;

[Table("CTHOADON")]
public partial class Cthoadon
{
    [Key]
    [Column("MaCTHD")]
    public int MaCthd { get; set; }

    [Column("MaHD")]
    public int MaHd { get; set; }

    [Column("MaSach")]
    public int MaSach { get; set; }

    public int DonGia { get; set; }

    public short? SoLuong { get; set; }

    public int? ThanhTien { get; set; }

    [ForeignKey("MaHd")]
    [InverseProperty("Cthoadons")]
    public virtual Hoadon MaHdNavigation { get; set; } = null!;

    [ForeignKey("MaSach")]
    [InverseProperty("Cthoadons")]
    public virtual Mathang MaSachNavigation { get; set; } = null!;
}
