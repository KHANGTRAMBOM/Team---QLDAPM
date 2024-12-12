using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using DTH215955_Nguyễn_Trọng_Khang.Data;
using DTH215955_Nguyễn_Trọng_Khang.Models;

namespace DTH215955_Nguyễn_Trọng_Khang.Controllers
{
    public class TheloaisController : Controller
    {
        private readonly ApplicationDbContext _context;

        public TheloaisController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Theloais
        public async Task<IActionResult> Index()
        {
            return View(await _context.Theloais.ToListAsync());
        }

        // GET: Theloais/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var theloai = await _context.Theloais
                .Include(t => t.Saches) // Gắn liền danh sách sách vào thể loại
                .FirstOrDefaultAsync(m => m.Id == id);

            if (theloai == null)
            {
                return NotFound();
            }

            return View(theloai);
        }


        // GET: Theloais/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Theloais/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,Ten")] Theloai theloai)
        {
            if (ModelState.IsValid)
            {
                _context.Add(theloai);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(theloai);
        }

        // GET: Theloais/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var theloai = await _context.Theloais.FindAsync(id);
            if (theloai == null)
            {
                return NotFound();
            }
            return View(theloai);
        }

        // POST: Theloais/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,Ten")] Theloai theloai)
        {
            if (id != theloai.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(theloai);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!TheloaiExists(theloai.Id))
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
            return View(theloai);
        }

        // GET: Theloais/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var theloai = await _context.Theloais
                .FirstOrDefaultAsync(m => m.Id == id);
            if (theloai == null)
            {
                return NotFound();
            }

            return View(theloai);
        }

        // POST: Theloais/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var theloai = await _context.Theloais.FindAsync(id);
            if (theloai != null)
            {
                _context.Theloais.Remove(theloai);
            }

            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool TheloaiExists(int id)
        {
            return _context.Theloais.Any(e => e.Id == id);
        }
    }
}
