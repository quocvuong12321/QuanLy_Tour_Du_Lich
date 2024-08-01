using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
namespace QuanLy_TourDuLich.Controllers
{
    public class AccountController : Controller
    {
        // GET: Home
        CSDL_QLTourDataContext data = new CSDL_QLTourDataContext();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult DangKy()
        {
            return View(new KhachHang());
        }

        [HttpPost]
        public ActionResult DangKy(KhachHang model)
        {
            if (ModelState.IsValid)
            {
                data.KhachHangs.InsertOnSubmit(model);
                ViewBag.TB = "Đăng ký thành công";
                data.SubmitChanges();
                return RedirectToAction("Index");
            }
            ViewBag.TB = "Đăng ký thất bại";
            return View(model);
        }

        public ActionResult ChonTaiKhoan()
        {
            return View();
        }


        //Form đăng nhập cho khách hàng
        public ActionResult DangNhapKhachHang()
        {
            return View();
        }
        //Fomr đăng nhập cho quản lý
        public ActionResult DangNhapQuanLy()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DangNhapQuanLy(string TenDangNhap, string MatKhau)
        {
            if (ModelState.IsValid)
            {
                var KH = data.KhachHangs.FirstOrDefault(t => t.Role_id == 1 && (t.Email == TenDangNhap || t.DienThoai == TenDangNhap));
                if (KH != null)
                {
                    if (MatKhau == KH.Password)
                    {
                        Session["ql"] = KH;
                        return Redirect("~/Admin/HomeAdmin/Index");
                    }
                    else
                    {
                        ViewBag.LoginQL = "Mật khẩu không đúng";

                    }
                }
                else
                {
                    ViewBag.LoginQL = "Tài khoản không tồn tại";

                }
            }
            return View();

        }

        [HttpPost]
        public ActionResult DangNhapKhachHang(string TenDangNhap, string MatKhau)
        {
            if (ModelState.IsValid)
            {
                var KH = data.KhachHangs.FirstOrDefault(t => t.Role_id == 2 && (t.Email == TenDangNhap || t.DienThoai == TenDangNhap));
                if (KH != null)
                {
                    if (MatKhau == KH.Password)
                    {
                        Session["kh"] = KH;
                        return RedirectToAction("Index");
                    }
                    else
                    {
                        ViewBag.Login = "Mật khẩu không đúng";
                    }
                }
            }
            else
            {
                ViewBag.Login = "Tài khoản không tồn tại";
            }
            return View(TenDangNhap);
        }

        [HttpGet]
        public ActionResult DangXuat()
        {
            Session["kh"] = null;
            return RedirectToAction("Index");
        }
    }
}
