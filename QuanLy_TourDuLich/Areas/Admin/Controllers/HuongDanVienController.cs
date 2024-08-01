using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    
    public class HuongDanVienController : Controller
    {
        CSDL_QLTourDataContext data = new CSDL_QLTourDataContext();
        // GET: Admin/HuongDanVien
        public ActionResult Index()
        {

            return View(data.HuongDanViens.ToList());
        }
        public ActionResult ThemHuongDanVien()
        {
            return View(new HuongDanVien());
        }
        [HttpPost]
        public ActionResult ThemHuongDanVien(HuongDanVien model)
        {
            data.HuongDanViens.InsertOnSubmit(model);
            data.SubmitChanges();
            return RedirectToAction("Index");
        }

        public ActionResult XoaHDV(int id)
        {
            data.HuongDanViens.DeleteOnSubmit(data.HuongDanViens.FirstOrDefault(t => t.id == id));
            data.SubmitChanges();
            return RedirectToAction("Index");
        }
        public ActionResult Sua(int id)
        {
            return View(data.HuongDanViens.FirstOrDefault(t=>t.id==id));
        }
        [HttpPost]
        public ActionResult Sua(HuongDanVien model)
        {
            var hdv = data.HuongDanViens.FirstOrDefault(t => t.id == model.id);
            if (ModelState.IsValid)
            {
                hdv.Fullname = model.Fullname;
                hdv.DienThoai = model.DienThoai;
                hdv.DiaChi = model.DiaChi;
                hdv.GioiTinh = model.GioiTinh;
                hdv.Email = model.Email;
                data.SubmitChanges();
                return RedirectToAction("Index");
            }
            return View();
        }

        public ActionResult PhanCongHDV()
        {
            return View();
        }
        //[HttpPost]
        //public ActionResult PhanCongHDV(int id_tour,int id_hdv)
        //{
        //    var tour = data.Tours.FirstOrDefault(t => t.id == id_tour);
        //    PhanCong_HuongDanVien pc = new PhanCong_HuongDanVien();
        //    pc.HuongDanVien_id = id_hdv;
        //    pc.HuongDanVien_id = id_tour;
        //    tour.PhanCong_HuongDanViens.Add(pc);
        //}
    }
}