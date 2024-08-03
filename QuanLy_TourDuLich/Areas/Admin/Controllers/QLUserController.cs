using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLy_TourDuLich.Models;
namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    public class QLUserController : Controller
    {
        CSDL_QLTourDataContext data = new CSDL_QLTourDataContext();
        public ActionResult Index()
        {
            var users = data.KhachHangs.ToList();
            return View(users);
        }

        public ActionResult Create()
        {
            return View(new KhachHang());
        }


        [HttpPost]
        public ActionResult Create(KhachHang kh)
        {
            data.KhachHangs.InsertOnSubmit(kh);
            data.SubmitChanges();
            return RedirectToAction("Index");
        }


        public ActionResult Edit(int id)
        {
            return View(data.KhachHangs.FirstOrDefault(t => t.id == id));
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(KhachHang user)
        {
            var kh = data.KhachHangs.FirstOrDefault(t => t.id == user.id);
            if (ModelState.IsValid)
            {
                kh.Role_id = user.Role_id;
                kh.Name = user.Name;
                kh.Email = user.Email;
                kh.Password = user.Password;
                kh.DienThoai = user.DienThoai;
                kh.DiaChi = user.DiaChi;
                kh.GioiTinh = user.GioiTinh;


                data.SubmitChanges();
                return RedirectToAction("Index");
            }
            return View(user);
        }

        public ActionResult Delete(int id)
        {
            var currentUser = Session["ql"] as KhachHang;
            if (currentUser.id == id)
            {
                // Show an error message indicating that the user cannot delete their own account
                TempData["ErrorMessage"] = "You cannot delete your own account.";
                return RedirectToAction("Index");
            }
            data.KhachHangs.DeleteOnSubmit(data.KhachHangs.FirstOrDefault(t => t.id == id));
            data.SubmitChanges();
            return RedirectToAction("Index");
        }
    }
}
    