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
            List<Tour> ds = data.Tours.ToList();
            List<PhanCong_HuongDanVien> pc = data.PhanCong_HuongDanViens.ToList();
            ViewBag.pc = pc;
            return View(ds);
        }
        
        public ActionResult PhanCong(int id)
        {
            List<HuongDanVien> hdv = data.HuongDanViens.ToList();
            List<PhanCong_HuongDanVien> pc = data.PhanCong_HuongDanViens.Where(t => t.Tour_id == id).ToList();
            ViewBag.pc = pc;
            List<PhanCong_HuongDanVien> pc2 = data.PhanCong_HuongDanViens.Where(t => t.Tour_id != id).ToList();
            ViewBag.pc2 = pc2;
            Tour to = data.Tours.Where(t => t.id == id).First();
            ViewBag.tour = to;
            return View(hdv);
        }

        public ActionResult XoaPhanCong(int tid, int hdvid)
        {
            PhanCong_HuongDanVien pc = data.PhanCong_HuongDanViens.Where(t => t.Tour_id == tid && t.HuongDanVien_id==hdvid).First();
            data.PhanCong_HuongDanViens.DeleteOnSubmit(pc);
            data.SubmitChanges();
            return RedirectToAction("PhanCong", new { id = tid });
        }

        public ActionResult ThemPhanCong(int tid, int hdvid)
        {
            PhanCong_HuongDanVien pc = new PhanCong_HuongDanVien();
            pc.Tour_id = tid;
            pc.HuongDanVien_id = hdvid;
            data.PhanCong_HuongDanViens.InsertOnSubmit(pc);
            data.SubmitChanges();
            return RedirectToAction("PhanCong", new { id = tid });
        }
    }
}