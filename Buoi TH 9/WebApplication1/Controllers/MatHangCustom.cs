using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;
using WebApplication1.Data;
using WebApplication1.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.VisualStudio.Web.CodeGenerators.Mvc.Templates.BlazorIdentity.Pages;

namespace WebApplication1.Controllers
{
    public class MatHangCustom : Controller
    {
        private readonly ApplicationDbContext _context;

		private readonly IPasswordHasher<Khachhang> _passwordHasher;

		
        public MatHangCustom(ApplicationDbContext context, IPasswordHasher<Khachhang> passwordHasher)
        {
            _context = context;
			_passwordHasher = passwordHasher;
		}

        // GET: MatHangCustom
        public async Task<IActionResult> Index()
        {
			getData();
			var applicationDbContext = _context.Mathangs.Include(m => m.MaDmNavigation);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: MatHangCustom/Details/5
        public async Task<IActionResult> Details(int? id)
        {
			
            if (id == null)
            {
                return NotFound();
            }

            var mathang = await _context.Mathangs
                .Include(m => m.MaDmNavigation)
                .FirstOrDefaultAsync(m => m.MaMh == id);
            if (mathang == null)
            {
                return NotFound();
            }
			getData();
			return View(mathang);
        }

        // GET: MatHangCustom/Create
        public IActionResult Create()
        {
			
			ViewData["MaDm"] = new SelectList(_context.Danhmucs, "MaDm", "MaDm");
			getData();
			return View();
        }

        // POST: MatHangCustom/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("MaMh,Ten,GiaGoc,GiaBan,SoLuong,MoTa,HinhAnh,MaDm,LuotXem,LuotMua")] Mathang mathang)
        {
			
			if (ModelState.IsValid)
            {
                _context.Add(mathang);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["MaDm"] = new SelectList(_context.Danhmucs, "MaDm", "MaDm", mathang.MaDm);
			getData();
			return View(mathang);
        }

        // GET: MatHangCustom/Edit/5
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
            ViewData["MaDm"] = new SelectList(_context.Danhmucs, "MaDm", "MaDm", mathang.MaDm);
			getData();
			return View(mathang);
        }

        // POST: MatHangCustom/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("MaMh,Ten,GiaGoc,GiaBan,SoLuong,MoTa,HinhAnh,MaDm,LuotXem,LuotMua")] Mathang mathang)
        {
			if (id != mathang.MaMh)
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
                    if (!MathangExists(mathang.MaMh))
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
            ViewData["MaDm"] = new SelectList(_context.Danhmucs, "MaDm", "MaDm", mathang.MaDm);
			getData();
			return View(mathang);
        }

        // GET: MatHangCustom/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
			
			if (id == null)
            {
                return NotFound();
            }

            var mathang = await _context.Mathangs
                .Include(m => m.MaDmNavigation)
                .FirstOrDefaultAsync(m => m.MaMh == id);
            if (mathang == null)
            {
                return NotFound();
            }
			getData();
			return View(mathang);
        }

        // POST: MatHangCustom/Delete/5
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
            return _context.Mathangs.Any(e => e.MaMh == id);
        }

		//Code Thêm
		// Đọc danh sách CartItem từ session
		List<CartItem> GetCartItems()
		{
			var session = HttpContext.Session;
			string? jsoncart = session.GetString("shopcart");
			if (jsoncart != null)
			{
				var cartItems = JsonConvert.DeserializeObject<List<CartItem>>(jsoncart);
				return cartItems ?? new List<CartItem>();
			}
			return new List<CartItem>();
		}
		// Lưu danh sách CartItem trong giỏ hàng vào session
		void SaveCartSession(List<CartItem> list)
		{
			var session = HttpContext.Session;
			string jsoncart = JsonConvert.SerializeObject(list);
			session.SetString("shopcart", jsoncart);
		}
		// Xóa session giỏ hàng
		void ClearCart()
		{
			var session = HttpContext.Session;
			session.Remove("shopcart");
			getData();
		}

		// Cho hàng vào giỏ
		public async Task<IActionResult> AddToCart(int id)
		{
			var mathang = await _context.Mathangs
			.FirstOrDefaultAsync(m => m.MaMh == id);
			if (mathang == null)
			{
				return NotFound("Sản phẩm không tồn tại");
			}
			var cart = GetCartItems();
			var item = cart.Find(p => p.MatHang.MaMh == id);
			if (item != null)
			{
				item.SoLuong++;
			}
			else
			{
				cart.Add(new CartItem()
				{
					MatHang = mathang,
					SoLuong = 1
				});
			}
			SaveCartSession(cart);
			return RedirectToAction(nameof(ViewCart));
		}
		// Chuyển đến view xem giỏ hàng
		public IActionResult ViewCart()
		{
			getData();
			return View(GetCartItems());
		}
		public IActionResult checkOut()
		{
			getData();
			return View(GetCartItems());
		}
		
		// Xóa một mặt hàng khỏi giỏ
		public IActionResult RemoveItem(int id)
		{
			var cart = GetCartItems();
			var item = cart.Find(p => p.MatHang.MaMh == id);
			if (item != null)
			{
				cart.Remove(item);
			}
			SaveCartSession(cart);
			return RedirectToAction(nameof(ViewCart));
		}
		// Cập nhật số lượng một mặt hàng trong giỏ
		public IActionResult UpdateItem(int id, int quantity)
		{
			var cart = GetCartItems();
			var item = cart.Find(p => p.MatHang.MaMh == id);
			if (item != null)
			{
				item.SoLuong = quantity;
			}
			SaveCartSession(cart);
			return RedirectToAction(nameof(ViewCart));
		}
		// Lập hóa đơn: lưu hóa đơn, lưu chi tiết hóa đơn
		[HttpPost, ActionName("CreateBill")]
		public async Task<IActionResult> CreateBill(string email, string hoten,
		string dienthoai, string diachi)
		{
			// Xử lý thông tin khách hàng (trường hợp khách mới)
			var kh = new Khachhang();
			kh.Email = email;
			kh.Ten = hoten;
			kh.DienThoai = dienthoai;
			_context.Add(kh);
			await _context.SaveChangesAsync();
			var hd = new Hoadon();
			hd.Ngay = DateTime.Now;
			hd.MaKh = kh.MaKh;
			_context.Add(hd);
			await _context.SaveChangesAsync();
			// thêm chi tiết hóa đơn
			var cart = GetCartItems();
			int thanhtien = 0;
			int tongtien = 0;
			foreach (var i in cart)
			{
				var ct = new Cthoadon();
				ct.MaHd = hd.MaHd;
				ct.MaMh = i.MatHang.MaMh;
				thanhtien = i.MatHang.GiaBan * i.SoLuong ?? 1;
				tongtien += thanhtien;
				ct.DonGia = i.MatHang.GiaBan;
				ct.SoLuong = (short)i.SoLuong;
				ct.ThanhTien = thanhtien;
				_context.Add(ct);
			}
			await _context.SaveChangesAsync();
			// cập nhật tổng tiền hóa đơn
			hd.TongTien = tongtien;
			_context.Update(hd);
			await _context.SaveChangesAsync();
            // xóa giỏ hàng
            getData();
			ClearCart();
			return View(hd);
		}

        void getData()
        {
            ViewData["sl"] = GetCartItems().Count;
			ViewBag.danhmuc = _context.Danhmucs.ToList();

			//Lay thong tin khach hang da dang nhap
			if(HttpContext.Session.GetString("khachhang") != "")
			{
				ViewBag.khachhang = _context.Khachhangs.FirstOrDefault(k => k.Email == HttpContext.Session.GetString("khachhang"));
			}
        }
		public async Task<IActionResult> List(int id)
		{
			var applicationDBcontext = _context.Mathangs.Where(m => m.MaDm == id).Include(m => m.MaDmNavigation);
			ViewData["tendanhmuc"] = _context.Danhmucs.FirstOrDefault(d=>d.MaDm==id).Ten;
			getData();
			return View(await applicationDBcontext.ToListAsync());
		}

        //Dang ky
        public IActionResult Register()
        {
			getData();
            return View();
        }
        [
        HttpPost]
        public async Task<IActionResult> Register(string hoten, string dienthoai,
        string email, string matkhau)
        {
            Khachhang kh = new Khachhang();
            kh.Ten = hoten;
            kh.DienThoai = dienthoai;
            kh.Email = email;
            kh.MatKhau = _passwordHasher.HashPassword(kh, matkhau); // mã hóa mk
            if (ModelState.IsValid)
            {
                _context.Add(kh);
                await _context.SaveChangesAsync();
            }
            return RedirectToAction(nameof(Login));
        }

		//Dang nhap
		public IActionResult Login()
		{
			getData();
			return View();
		}
		[
		HttpPost]
		public async Task<IActionResult> Login(string email, string matkhau)
		{
			var kh = await _context.Khachhangs
			.FirstOrDefaultAsync(m => m.Email == email);
			if (kh != null && _passwordHasher.VerifyHashedPassword(kh,
			kh.MatKhau, matkhau) == PasswordVerificationResult.Success)
			{
				// Đăng nhập thành công, thực hiện các hành động cần thiết
				// Ví dụ: Ghi thông tin người dùng vào Session
				HttpContext.Session.SetString("khachhang", kh.Email);
				return RedirectToAction(nameof(CustomerInfo));
			}
			return RedirectToAction(nameof(Login));
		}
		public IActionResult CustomerInfo()
		{
			getData();
			return View();
		}

		//Dang xuat
		public IActionResult Signout()
		{
			HttpContext.Session.SetString("khachhang", "");
			getData();
			return RedirectToAction("Index");
		}
	}
}
