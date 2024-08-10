using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
namespace QuanLy_TourDuLich.Controllers
{
    public class ThanhToanController : Controller
    {
        // GET: ThanhToan
        CSDL_QLTourDataContext data = new CSDL_QLTourDataContext();

        
        public ActionResult XacNhanThanhToan(int id,int tongtien)
        {
            ViewBag.id = id;
            ViewBag.tongtien = tongtien;
            return View();
        }
        [HttpPost]
        public ActionResult XacNhanThanhToan(FormCollection c)
        {
            if (ModelState.IsValid)
            {
                DatTour dt = data.DatTours.FirstOrDefault(t => t.id == int.Parse(c["id"]));
                List<ChiTiet_DatTour> ct = data.ChiTiet_DatTours.Where(t => t.Tour_id == int.Parse(c["id"])).ToList();
                ThanhToan tt = new ThanhToan
                {
                    DatTour_id = dt.id,
                    NgayThanhToan = DateTime.Now,
                    TongTien = int.Parse(c["tongtien"])
                };
                data.ThanhToans.InsertOnSubmit(tt);
                data.SubmitChanges();
                return RedirectToAction("TTThanhCong");
            }
            return View();
        }
        public ActionResult TTThanhCong()
        {
            return View();
        }
    }
}