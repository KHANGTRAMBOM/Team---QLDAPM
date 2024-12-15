using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WebApplication1.Data;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class MathangsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public MathangsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Mathangs
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.Mathangs.Include(m => m.MaDmNavigation);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: Mathangs/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var mathang = await _context.Mathangs
                .Include(m => m.MaDmNavigation)
                .FirstOrDefaultAsync(m => m.MaSach == id);
            if (mathang == null)
            {
                return NotFound();
            }

            return View(mathang);
        }

        // GET: Mathangs/Create
        [HttpGet]
        public IActionResult Create()
        {
            ViewData["MaDm"] = new SelectList(_context.Danhmucs, "MaDm", "Ten");
            return View();
        }

        // POST: Mathangs/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create2([Bind("MaSach,Ten,GiaGoc,GiaBan,SoLuong,MoTa,HinhAnh,MaDm,LuotXem,LuotMua")] Mathang mathang, [Bind]IFormFile Image)
        {
            ViewData["MaDm"] = new SelectList(_context.Danhmucs, "MaDm", "Ten", mathang.MaDm);

            ModelState.Remove("Cthoadons");
            ModelState.Remove("MaDmNavigation");

            if (Image != null && Image.Length > 0)
            {
                // Lấy tên file
                var imageFileName = Path.GetFileName(Image.FileName);
                // Đường dẫn lưu file
                var imagePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\images\\products", imageFileName);

                // Sao chép file
                using (var stream = new FileStream(imagePath, FileMode.Create))
                {
                    await Image.CopyToAsync(stream);
                }

                // Lưu tên file vào model
                mathang.HinhAnh = imageFileName;
            }
            else
            {
                ModelState.AddModelError("HinhAnh", "Vui lòng tải lên ảnh bìa !!!");
                return View(mathang);
            }

            if (ModelState.IsValid)
            {
                _context.Add(mathang);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }

            return RedirectToAction(nameof(Index));
        }

        // GET: Mathangs/Edit/5
        [HttpGet]
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var mathang = await _context.Mathangs.FindAsync(id);
            if (mathang == null)
            {
                return NotFound();
            }
            ViewData["MaDm"] = new SelectList(_context.Danhmucs, "MaDm", "Ten");

            return View(mathang);
        }

        // POST: Mathangs/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit2(int id, [Bind("MaSach,Ten,GiaGoc,GiaBan,SoLuong,MoTa,HinhAnh,MaDm,LuotXem,LuotMua")] Mathang mathang, [Bind]IFormFile Image)
        {

            ViewData["MaDm"] = new SelectList(_context.Danhmucs, "MaDm", "Ten", mathang.MaDm);

            ModelState.Remove("Cthoadons");
            ModelState.Remove("MaDmNavigation");

            if (Image != null && Image.Length > 0)
            {
                // Lấy tên file
                var imageFileName = Path.GetFileName(Image.FileName);
                // Đường dẫn lưu file
                var imagePath = Path.Combine(Directory.GetCurrentDirectory(), "wwwroot\\images\\products", imageFileName);

                // Sao chép file
                using (var stream = new FileStream(imagePath, FileMode.Create))
                {
                    await Image.CopyToAsync(stream);
                }

                // Lưu tên file vào model
                mathang.HinhAnh = imageFileName;
            }


            if (id != mathang.MaSach)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(mathang);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MathangExists(mathang.MaSach))
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

            return RedirectToAction(nameof(Index));
        }

        // GET: Mathangs/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var mathang = await _context.Mathangs
                .Include(m => m.MaDmNavigation)
                .FirstOrDefaultAsync(m => m.MaSach == id);
            if (mathang == null)
            {
                return NotFound();
            }

            return View(mathang);
        }

        // POST: Mathangs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var mathang = await _context.Mathangs.FindAsync(id);
            if (mathang != null)
            {
                _context.Mathangs.Remove(mathang);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MathangExists(int id)
        {
            return _context.Mathangs.Any(e => e.MaSach == id);
        }
    }
}
