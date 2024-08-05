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

            return View(data.Tours.ToList());
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
    }
}