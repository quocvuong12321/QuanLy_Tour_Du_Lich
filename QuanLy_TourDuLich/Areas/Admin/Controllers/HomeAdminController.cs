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
            List<Tour> dsTour = data.Tours. ToList();
            List<Image_Tour> dsImageTour = data.Image_Tours.ToList();

            var tourWithImages = dsTour.Select(t => new TourWithImagesViewModel
            {
                Tour = t,
                Images = dsImageTour.Where(i => i.Tour_id == t.id).ToList()
            }).ToList();

            return View(tourWithImages);

        }

        public ActionResult ThemmoiTour()
        {
            ViewBag.LoaiTour = new SelectList(data.Loai_Tours.ToList().OrderBy(n => n.Name), "id", "Name");
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemmoiTour(Tour t, IEnumerable<HttpPostedFileBase> fileUpLoad)
        {
            ViewBag.LoaiTour = new SelectList(data.Loai_Tours.ToList().OrderBy(n => n.Name), "id", "Name");
            if (fileUpLoad  == null || !fileUpLoad.Any() || fileUpLoad.All(f => f == null))
            {
                ViewBag.Thongbao = "Vui lòng chọn ít nhất 1 ảnh";
                return View(t);
            }    
            else
            {
                if(ModelState.IsValid)
                {
                    // Thêm tour mới vào cơ sở dữ liệu
                    data.Tours.InsertOnSubmit(t);
                    data.SubmitChanges();
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
           
    
        public ActionResult EditTour(int id)
        {
            Tour t = data.Tours.SingleOrDefault(n => n.id == id);
            if (t == null)
            {
                return HttpNotFound();
            }
            ViewBag.LoaiTour = new SelectList(data.Loai_Tours.ToList().OrderBy(n => n.Name), "id", "Name", t.Loai_Tour_id);
            return View(t);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult EditTour(Tour t)
        {
            if (ModelState.IsValid)
            {
                // Find the existing tour in the database
                Tour existingTour = data.Tours.SingleOrDefault(n => n.id == t.id);
                if (existingTour != null)
                {
                    // Update the existing tour with the new values
                    existingTour.Name = t.Name;
                    existingTour.Gia = t.Gia;
                    existingTour.TieuDe = t.TieuDe;
                    existingTour.MoTa = t.MoTa;
                    existingTour.LichTrinh = t.LichTrinh;
                    existingTour.DiemKhoiHanh = t.DiemKhoiHanh;
                    existingTour.DiemDen = t.DiemDen;
                    existingTour.NgayKhoiHanh = t.NgayKhoiHanh;
                    existingTour.NgayKetThuc = t.NgayKetThuc;
                    existingTour.SoLuongCon = t.SoLuongCon;
                    existingTour.Loai_Tour_id = t.Loai_Tour_id;

                    data.SubmitChanges();
                    return RedirectToAction("Index");
                }
            }
            ViewBag.LoaiTour = new SelectList(data.Loai_Tours.ToList().OrderBy(n => n.Name), "id", "Name", t.Loai_Tour_id);
            return View(t);
        }
        public ActionResult DetailTour(int id)
        {
            Tour t = data.Tours.SingleOrDefault(n => n.id == id);
            return View(t);
        }
        public ActionResult DeleteTour(int id)
        {
            Tour t = data.Tours.SingleOrDefault(n => n.id == id);
            return View(t);
        }
        [HttpPost, ActionName("DeleteTour")]
       
        public ActionResult AcceptDeleteTour(int id)
        {
            Tour t = data.Tours.SingleOrDefault(n => n.id == id);
            data.Tours.DeleteOnSubmit(t);
            data.SubmitChanges();
            return RedirectToAction("Index");
        }
    }
}