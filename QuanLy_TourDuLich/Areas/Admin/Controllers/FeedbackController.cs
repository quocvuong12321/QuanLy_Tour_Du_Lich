using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    public class FeedbackController : Controller
    {
        CSDL_QLTourDataContext data = new CSDL_QLTourDataContext();
        public ActionResult Index()
        {
            var users = data.Feedbacks.ToList();
            return View(users);
        }
        public ActionResult Details(int id) 
        {
            var fb = data.Feedbacks.FirstOrDefault(t => t.id == id);
            return View(fb); 
        }

        public ActionResult Delete(int id)
        {
            data.Feedbacks.DeleteOnSubmit(data.Feedbacks.FirstOrDefault(t => t.id == id));
            data.SubmitChanges();
            return RedirectToAction("Index");
        }
    }
}
    