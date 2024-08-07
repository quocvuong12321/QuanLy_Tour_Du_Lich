using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;

namespace QuanLy_TourDuLich.Controllers
{
    public class HomeController : Controller
    {
        CSDL_QLTourDataContext data = new CSDL_QLTourDataContext();
        // GET: Home
        public ActionResult Index()
        {

            return View(data.Tours.Where(t=>t.SoLuongCon!=0).ToList());
        }
        //Lấy 1 ảnh ra để hiện thị lên indexx
        public ActionResult AnhChoCard(int id) {
            var imgs_tour = data.Image_Tours.OrderBy(a=>a.Name).Where(t => t.Tour_id == id).Take(1).ToList();
            
            return PartialView(imgs_tour);
        }

        public ActionResult ChiTietTour(int id)
        {
            ViewBag.HienThiAnh = data.Image_Tours.Where(t => t.Tour_id == id).ToList();
            return View(data.Tours.FirstOrDefault(t => t.id == id));
        }

        public ActionResult GioiThieu()
        {
            return View();
        }

        //Chức năng tìm kiếm thường
        public ActionResult TimKiem(string search)
        {
            var result = data.Tours.Where(t => t.Name.Contains(search) || t.MoTa.Contains(search)).ToList();
            if (result == null)
            {
                ViewBag.kq = "Không tìm thấy: " + search;
            }
            return View("Index", result);
        }
        
        //Đặt hàng
        public ActionResult DatHang(int id)
        {
            Tour to = data.Tours.Where(t => t.id == id).First();
            return View(to);
        }
        //Chuyển hướng sang dặt sản phẩm hoặc sang giỏ hàng
        [HttpPost]
        public ActionResult ChuyenHuong(int XacNhan, string DiemXuatPhat, int SoNguoiDat, int id)
        {
            if (Session["kh"] == null)
                return RedirectToAction("DangNhapKhachHang", "Account");
            if (XacNhan == 1)
                return RedirectToAction("ThemGioHang", new { DiemXuatPhat, SoNguoiDat, id });
            return RedirectToAction("Dat1SanPham", new { DiemXuatPhat, SoNguoiDat, id });
        }


        public ActionResult Dat1SanPham(string DiemXuatPhat, int SoNguoiDat, int id)
        {
            ChiTiet_DatTour ct = new ChiTiet_DatTour();
            DatTour dt = new DatTour();
            
            data.ChiTiet_DatTours.InsertOnSubmit(ct);
            data.DatTours.InsertOnSubmit(dt);
            data.SubmitChanges();

            ChiTiet_DatTour ct2 = data.ChiTiet_DatTours.Where(t=>t.id==ct.id).First();
            DatTour dt2 = data.DatTours.Where(t => t.id == dt.id).First();
            ct2.Tour_id = id;
            ct2.SoNguoiDat = SoNguoiDat;
            ct2.DiemXuatPhat = DiemXuatPhat;
            ct2.DatTour_id = dt.id;

            KhachHang kh = (KhachHang)Session["kh"];
            dt2.User_id = kh.id;
            dt2.id_TrangThai = 1;

            data.SubmitChanges();

            ViewBag.ct = ct2;

            ViewBag.snd = SoNguoiDat;
            return RedirectToAction("ChiTietDonHang", new { id=dt2.id });
        }
       

        public ActionResult ChiTietDonHang(int id)
        {
            DatTour dt = data.DatTours.Where(t => t.id == id).First();
            List<ChiTiet_DatTour> ct = data.ChiTiet_DatTours.Where(t => t.DatTour_id == id).ToList();
            ViewBag.ct = ct;
            return View(dt);
        }
        [HttpPost]
        public ActionResult ChiTietDonHang(int id, FormCollection f)
        {
            DatTour dt = data.DatTours.Where(t => t.id == id).First();
            dt.id_TrangThai = 1;
            List<ChiTiet_DatTour> ct = data.ChiTiet_DatTours.Where(t => t.DatTour_id == dt.id).ToList();
            foreach(var item in ct)
            {
                Tour to = data.Tours.First(t => t.id == item.Tour_id);
                to.SoLuongCon = to.SoLuongCon - item.SoNguoiDat;
                
            }    
            data.SubmitChanges();
            dt.GhiChu = f["GhiChu"];
       
            data.SubmitChanges();
            return RedirectToAction("Index"); /////////////////////////////// Thay Index bằng thanh toán để đi tới trang thanh toán
        }

        public ActionResult ThemGioHang(string DiemXuatPhat, int SoNguoiDat, int id)
        {
            List<ChiTiet_DatTour> lct = data.ChiTiet_DatTours.Where(t => t.Tour_id == id).ToList();
            
            KhachHang kh = Session["kh"] as KhachHang;
            DatTour dt = data.DatTours.Where(t => t.User_id == kh.id && t.id_TrangThai==3).FirstOrDefault();
            if(dt==null)
            {
                dt = new DatTour();
                dt.id_TrangThai = 3;
                dt.User_id = kh.id;
                data.DatTours.InsertOnSubmit(dt);
                data.SubmitChanges();
            }
            ChiTiet_DatTour ct = lct.Find(t => t.Tour_id == id && t.DatTour_id==dt.id);
            if (ct ==null)
            {
                ChiTiet_DatTour ct2 = new ChiTiet_DatTour();
                data.ChiTiet_DatTours.InsertOnSubmit(ct2);
                data.SubmitChanges();
                ChiTiet_DatTour cto = data.ChiTiet_DatTours.Where(t => t.id == ct2.id).First();
                cto.SoNguoiDat = SoNguoiDat;
                cto.DiemXuatPhat = DiemXuatPhat;
                cto.DatTour_id = dt.id;
                cto.Tour_id = id;
                data.SubmitChanges();
            }    
            else
            {
                ct.SoNguoiDat = SoNguoiDat;
                ct.DiemXuatPhat = DiemXuatPhat;
                data.SubmitChanges();
                return RedirectToAction("Index");
            }
            return RedirectToAction("Index");
        }

        public ActionResult XemGioHang()
        {
            KhachHang kh = (KhachHang)Session["kh"];
            if (kh == null)
                return RedirectToAction("DangNhapKhachHang", "Account");
            DatTour dt = data.DatTours.Where(t => t.id_TrangThai == 3 && t.User_id == kh.id).FirstOrDefault();
            if(dt==null)
            {
                List<ChiTiet_DatTour> c =new List<ChiTiet_DatTour>();
                c = null;
                return View(c);
            }    
            List<ChiTiet_DatTour> ct = data.ChiTiet_DatTours.Where(t=>t.DatTour_id==dt.id).ToList();
            foreach(var item in ct)
            {
                if(item.Tour.SoLuongCon==0)
                {
                    data.ChiTiet_DatTours.DeleteOnSubmit(item);
                }    
            }
            data.SubmitChanges();
            List<ChiTiet_DatTour> ct2 = data.ChiTiet_DatTours.Where(t => t.DatTour_id == dt.id).ToList();
            ViewBag.to = dt.id;
            return View(ct2);
        }

        [HttpPost]
        public ActionResult SuaChiTietDH(int id, FormCollection f)
        {
            ChiTiet_DatTour ct = data.ChiTiet_DatTours.Where(t => t.id == id).FirstOrDefault();
            if (ct != null)
            {
                ct.SoNguoiDat = int.Parse(f["SoLuong"].ToString());
                ct.DiemXuatPhat = f["DiemXuatPhat"];
                data.SubmitChanges();
            }
            return RedirectToAction("XemGioHang");
        }

        public ActionResult DeleteChiTietDH(int id)
        {
            ChiTiet_DatTour ct = data.ChiTiet_DatTours.Where(t => t.id == id).FirstOrDefault();
            data.ChiTiet_DatTours.DeleteOnSubmit(ct);
            data.SubmitChanges();
            return RedirectToAction("XemGioHang");
        }
        public ActionResult SoLuongGioHang()
        {
            KhachHang kh = (KhachHang)Session["kh"];
            List<ChiTiet_DatTour> c;
            if (kh != null)
            {
                DatTour dt = data.DatTours.Where(t => t.id_TrangThai == 3 && t.User_id == kh.id).FirstOrDefault();
                if(dt==null)
                {
                    c = null;
                    return PartialView(c);
                }    
                c = data.ChiTiet_DatTours.Where(t => t.DatTour_id == dt.id).ToList();
                return PartialView(c);
            }
            c = null;
            return PartialView(c);
        }
        public ActionResult LichSuDonHang()
        {
            KhachHang kh = (KhachHang)Session["kh"];
            if (kh == null)
                return RedirectToAction("DangNhapKhachHang", "Account");
            List<DatTour> ds = data.DatTours.Where(t => t.User_id == kh.id && t.id_TrangThai != 3).ToList();
            List<ChiTiet_DatTour> ct = data.ChiTiet_DatTours.ToList();
            ViewBag.ct = ct;
            return View(ds);
        }
        public ActionResult HuyDonHang(int id)
        {
            DatTour ds = data.DatTours.Where(t => t.id == id).First();
            ds.id_TrangThai = 5;
            UpdateModel(ds);
            List<ChiTiet_DatTour> ct = data.ChiTiet_DatTours.Where(t => t.DatTour_id == ds.id).ToList();
            foreach (var item in ct)
            {
                Tour to = data.Tours.First(t => t.id == item.Tour_id);
                to.SoLuongCon = to.SoLuongCon + item.SoNguoiDat;
            }
            data.SubmitChanges();
            return RedirectToAction("LichSuDonHang");
        }
        public ActionResult ChiTietDonDatHang(int id)
        {
            List<ChiTiet_DatTour> ds = data.ChiTiet_DatTours.Where(t => t.DatTour_id == id).ToList();
            return View(ds);
        }
        public ActionResult DanhGiaTour(int id)
        {
            KhachHang kh = (KhachHang)Session["kh"];
            Tour to = data.Tours.First(t => t.id == id);
            return View(to);
        }
        [HttpPost]
        public ActionResult DanhGiaTour(FormCollection f, int id)
        {
            KhachHang kh = (KhachHang)Session["kh"];
            Tour to = data.Tours.First(t => t.id == id);
            DanhGia d = new DanhGia();
            d.User_id = kh.id;
            d.Tour_id = to.id;
            d.NoiDung = f["NoiDung"];
            d.Vote = int.Parse(f["Vote"]);
            data.DanhGias.InsertOnSubmit(d);
            data.SubmitChanges();
            return RedirectToAction("Index", "Home");
        }
    }
}