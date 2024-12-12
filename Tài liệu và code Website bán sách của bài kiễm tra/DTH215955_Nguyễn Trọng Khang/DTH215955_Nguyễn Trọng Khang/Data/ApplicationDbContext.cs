using System;
using System.Collections.Generic;
using DTH215955_Nguyễn_Trọng_Khang.Models;
using Microsoft.EntityFrameworkCore;

namespace DTH215955_Nguyễn_Trọng_Khang.Data;

public partial class ApplicationDbContext : DbContext
{
    public ApplicationDbContext()
    {
    }

    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Sach> Saches { get; set; }

    public virtual DbSet<Theloai> Theloais { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=KHANG-TRAMBOM\\SQL;Initial Catalog=KIEMTRA;Integrated Security=True;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Sach>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__SACH__3214EC27CFFD544F");

            entity.HasOne(d => d.TheLoai).WithMany(p => p.Saches).HasConstraintName("FK__SACH__TheLoaiID__38996AB5");
        });

        modelBuilder.Entity<Theloai>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__THELOAI__3214EC27C48F43B9");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
