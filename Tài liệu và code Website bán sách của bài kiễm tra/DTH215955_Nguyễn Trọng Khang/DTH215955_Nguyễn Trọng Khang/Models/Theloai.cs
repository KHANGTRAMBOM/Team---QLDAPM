using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace DTH215955_Nguyễn_Trọng_Khang.Models;

[Table("THELOAI")]
public partial class Theloai
{
    [Key]
    [Column("ID")]
    public int Id { get; set; }

    [StringLength(255)]
    [DisplayName("Tên Thể Loại")]
    public string Ten { get; set; } = null!;

    [InverseProperty("TheLoai")]
    public virtual ICollection<Sach> Saches { get; set; } = new List<Sach>();
}
