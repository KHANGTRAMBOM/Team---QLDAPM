using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using DTH215955_Nguyễn_Trọng_Khang.Data;
using DTH215955_Nguyễn_Trọng_Khang.Models;
using Microsoft.Extensions.Hosting;

namespace DTH215955_Nguyễn_Trọng_Khang.Controllers
{
    public class SachesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public SachesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Saches
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Saches.Include(s => s.TheLoai);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: Saches/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sach = await _context.Saches
                .Include(s => s.TheLoai)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (sach == null)
            {
                return NotFound();
            }

            return View(sach);
        }

        // GET: Saches/Create
        public IActionResult Create()
        {
            ViewData["TheLoaiId"] = new SelectList(_context.Theloais, "Id", "Ten");
            return View();
        }

        // POST: Saches/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,TenSach,GiaBan,MoTa,NhaXuatBan,TheLoaiId,Hinh")] Sach sach, [Bind]IFormFile Image)
        {
            ViewData["TheLoaiId"] = new SelectList(_context.Theloais, "Id", "Ten", sach.TheLoaiId);

            if (Image != null && Image.Length > 0)
            {
                // Lấy tên file
                var imageFileName = Path.GetFileName(Image.FileName);
                // Đường dẫn lưu file
                var imagePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\images", imageFileName);

                // Sao chép file
                using (var stream = new FileStream(imagePath, FileMode.Create))
                {
                    await Image.CopyToAsync(stream);
                }

                // Lưu tên file vào model
                sach.Hinh = imageFileName;
            }
            else
            {
                ModelState.AddModelError("Hinh", "Vui lòng tải lên ảnh bìa !!!");
                return View(sach);
            }



            if (ModelState.IsValid)
            {
                _context.Add(sach);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
 
            return View(sach);
        }

        // GET: Saches/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sach = await _context.Saches.FindAsync(id);
            if (sach == null)
            {
                return NotFound();
            }
            ViewData["TheLoaiId"] = new SelectList(_context.Theloais, "Id", "Ten", sach.TheLoaiId);
            return View(sach);
        }

        // POST: Saches/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,TenSach,GiaBan,MoTa,NhaXuatBan,TheLoaiId,Hinh")] Sach sach, [Bind] IFormFile Image)
        {

            if (Image != null && Image.Length > 0)
            {
                // Lấy tên file
                var imageFileName = Path.GetFileName(Image.FileName);
                // Đường dẫn lưu file
                var imagePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\images", imageFileName);

                // Sao chép file
                using (var stream = new FileStream(imagePath, FileMode.Create))
                {
                    await Image.CopyToAsync(stream);
                }

                // Lưu tên file vào model
                sach.Hinh = imageFileName;
            }

            ModelState.Remove("Image");

            if (id != sach.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(sach);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SachExists(sach.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["TheLoaiId"] = new SelectList(_context.Theloais, "Id", "Ten", sach.TheLoaiId);
            return View(sach);
        }

        // GET: Saches/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var sach = await _context.Saches
                .Include(s => s.TheLoai)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (sach == null)
            {
                return NotFound();
            }

            return View(sach);
        }

        // POST: Saches/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var sach = await _context.Saches.FindAsync(id);
            if (sach != null)
            {
                _context.Saches.Remove(sach);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool SachExists(int id)
        {
            return _context.Saches.Any(e => e.Id == id);
        }
    }
}
