using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace WebApplication1.Models;

[Table("MATHANG")]
public partial class Mathang
{
    [Key]
    [Column("MaSach")]
    public int MaSach { get; set; }

    [StringLength(100)]
    public string Ten { get; set; } = null!;

    public int? GiaGoc { get; set; }

    public int? GiaBan { get; set; }

    public short? SoLuong { get; set; }

    [StringLength(1000)]
    public string? MoTa { get; set; }

    [StringLength(255)]
    [Unicode(false)]
    public string? HinhAnh { get; set; }

    [Column("MaDM")]
    public int? MaDm { get; set; }

    public int? LuotXem { get; set; }

    public int? LuotMua { get; set; }

    [InverseProperty("MaSachNavigation")]
    public virtual ICollection<Cthoadon> Cthoadons { get; set; } = new List<Cthoadon>();

    [ForeignKey("MaDm")]
    [InverseProperty("Mathangs")]
    public virtual Danhmuc? MaDmNavigation { get; set; }
}
