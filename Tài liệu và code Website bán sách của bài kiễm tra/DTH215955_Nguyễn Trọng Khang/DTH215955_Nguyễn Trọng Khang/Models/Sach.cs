using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DTH215955_Nguyễn_Trọng_Khang.Models;

[Table("SACH")]
public partial class Sach
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [StringLength(255)]
    [DisplayName("Tên Sách")]
    public string TenSach { get; set; } = null!;

    [DisplayName("Giá bán")]
    public int GiaBan { get; set; }

    [DisplayName("Mô tả")]
    public string? MoTa { get; set; }

    [StringLength(255)]
    [DisplayName("Nhà Xuất Bản")]
    public string? NhaXuatBan { get; set; }

    [Column("TheLoaiID")]
    [DisplayName("Tên Thể Loại")]
    public int? TheLoaiId { get; set; }

    [StringLength(255)]
    [DisplayName("Hình Ảnh")]
    public string? Hinh { get; set; }

    [ForeignKey("TheLoaiId")]
    [InverseProperty("Saches")]
    public virtual Theloai? TheLoai { get; set; }
}
