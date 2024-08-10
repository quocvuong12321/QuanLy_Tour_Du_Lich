using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;

namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    public class ThongKeController : Controller
    {
        //
        // GET: /Admin/ThongKe/
        CSDL_QLTourDataContext data = new CSDL_QLTourDataContext();
        public ActionResult Index()
        {
            List<ChiTiet_DatTour> ds = data.ChiTiet_DatTours.ToList();
            return View(ds);
        }
    }
}