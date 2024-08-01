using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using System.Web.Routing;

using QuanLy_TourDuLich.Models;

namespace QuanLy_TourDuLich.Areas.Admin.Controllers
{
    public class HomeAdminController : Controller
    {
        // GET: Admin/HomeAdmin
        CSDL_QLTourDataContext data = new CSDL_QLTourDataContext();
        public ActionResult Index()
        {
            List<Tour> dsTour = data.Tours.ToList();

            return View(dsTour);

        }



        public ActionResult ThemMoiTour()
        {
            ViewBag.LoaiTour = new SelectList(data.Loai_Tours.ToList().OrderBy(t => t.id), "id", "Name");
            return View(new Tour());
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoiTour(Tour model)
        {
            if (ModelState.IsValid)
            {
                data.Tours.InsertOnSubmit(model);
                data.SubmitChanges();
                return RedirectToAction("Index");
            }
            return View(model) ;
        }
        public ActionResult ThemHinhAnhTour(int id)
        {
            return View(id);
        }
        [HttpPost]
        public ActionResult ThemHinhAnhTour(int id, IEnumerable<HttpPostedFileBase> fileUpLoad) 
            //Thêm hình ảnh cho tour có tour_id == id
        {
            var t = data.Tours.FirstOrDefault(a => a.id == id);
            if (fileUpLoad == null || !fileUpLoad.Any() || fileUpLoad.All(f => f == null))
            {
                ViewBag.Thongbao = "Vui lòng chọn ít nhất 1 ảnh";
                return View(t);
            }
            else
            {
                if (ModelState.IsValid)
                {
                    // Duyệt qua các tệp ảnh được tải lên và lưu trữ chúng
                    foreach (var file in fileUpLoad)
                    {
                        if (file != null && file.ContentLength > 0)
                        {
                            var fileName = Path.GetFileName(file.FileName);
                            var path = Path.Combine(Server.MapPath("~/img"), fileName);

                            // Kiểm tra xem tệp đã tồn tại chưa, nếu chưa thì lưu trữ tệp
                            if (!System.IO.File.Exists(path))
                            {
                                file.SaveAs(path);
                                data.Image_Tours.InsertOnSubmit(new Image_Tour
                                {
                                    Tour_id = t.id,
                                    Name = fileName
                                });
                            }
                            else
                            {
                                ViewBag.Thongbao = "Một hoặc nhiều hình ảnh đã tồn tại";
                                return View(t);
                            }
                        }
                    }
                    data.SubmitChanges();
                    return RedirectToAction("Index");
                }
            }
            return View(t);
        }

        public ActionResult ChiTietTour(int id) // Hiển thị chi tiết tour
        {
            return View(data.Tours.FirstOrDefault(t => t.id == id));
        }

        public ActionResult dsAnh(int id) //Lấy ra List hình ảnh của tour có Tour_id == id
        {
            return PartialView(data.Image_Tours.Where(t => t.Tour_id == id).ToList());
        }

        
        public ActionResult DeleteTour(int id) // Xóa 1 tour 
        {
            Tour t = data.Tours.SingleOrDefault(n => n.id == id);
            return View(t);
        }
        [HttpPost, ActionName("DeleteTour")]

        public ActionResult AcceptDeleteTour(int id)
        {
            Tour t = data.Tours.SingleOrDefault(n => n.id == id);
            if (t == null)
            {
                return HttpNotFound();
            }

            // Xóa hình ảnh liên quan trước khi xóa tour
            var images = data.Image_Tours.Where(img => img.Tour_id == t.id).ToList();
            foreach (var image in images)
            {
                var imagePath = Path.Combine(Server.MapPath("~/img"), image.Name);
                if (System.IO.File.Exists(imagePath))
                {
                    System.IO.File.Delete(imagePath);
                }
                data.Image_Tours.DeleteOnSubmit(image);
            }

            data.Tours.DeleteOnSubmit(t);
            data.SubmitChanges();
            return RedirectToAction("Index");
        }
    }
}