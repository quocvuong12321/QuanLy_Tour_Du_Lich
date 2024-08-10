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

        //Xóa 1 tour
       public ActionResult XoaTour(int id)
        {
            var t = data.Tours.FirstOrDefault(a => a.id == id);
            var image = t.Image_Tours.ToList();
            //xóa ảnh trước khi xóa tour
            if (image != null)
            {
                foreach(var item in image)
                {
                    var imagePath = Path.Combine(Server.MapPath("~/img"), item.Name);

                    // Delete the file from the file system
                    if (System.IO.File.Exists(imagePath))
                    {
                        System.IO.File.Delete(imagePath);
                    }

                    // Delete the record from the database
                    data.Image_Tours.DeleteOnSubmit(item);
                }
                
            }
            data.Tours.DeleteOnSubmit(t);
            data.SubmitChanges();
            return RedirectToAction("Index");

        }

        //Edit tour
        public ActionResult Edit(int id)
        {
            ViewBag.LoaiTour = new SelectList(data.Loai_Tours.ToList().OrderBy(t => t.id), "id", "Name");
            return View(data.Tours.FirstOrDefault(t=>t.id==id));
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(Tour model)
        {
            if (ModelState.IsValid)
            {
                var tour = data.Tours.FirstOrDefault(t => t.id == model.id);
                if (tour != null)
                {
                    tour.Name = model.Name;
                    tour.Gia = model.Gia;
                    tour.MoTa = model.MoTa;
                    tour.LichTrinh = model.LichTrinh;
                    tour.DiemKhoiHanh = model.DiemKhoiHanh;
                    tour.NgayKetThuc = model.NgayKetThuc;
                    tour.SoLuongCon = model.SoLuongCon;
                    tour.Loai_Tour_id = model.Loai_Tour_id;
                    tour.NgayKhoiHanh = model.NgayKhoiHanh;
                    tour.DiemDen = model.DiemDen;
                    tour.Loai_Tour_id = model.Loai_Tour_id;
                    data.SubmitChanges();
                    return RedirectToAction("Index");
                }
            }
            ViewBag.LoaiTour = new SelectList(data.Loai_Tours.ToList().OrderBy(t => t.id), "id", "Name");

            return View("model");
        }

        
        public ActionResult XoaHinhAnh(int id)
        {
            return View(data.Image_Tours.Where(t => t.Tour_id == id).ToList());
        }
        [HttpPost]
        public ActionResult XoaHinhAnh(int imageId, int tourId)
        {
            var image = data.Image_Tours.FirstOrDefault(i => i.id == imageId);
            if (image != null)
            {
                var imagePath = Path.Combine(Server.MapPath("~/img"), image.Name);

                // Delete the file from the file system
                if (System.IO.File.Exists(imagePath))
                {
                    System.IO.File.Delete(imagePath);
                }

                // Delete the record from the database
                data.Image_Tours.DeleteOnSubmit(image);
                data.SubmitChanges();
            }

            return RedirectToAction("XoaHinhAnh",new { id = tourId });
        }

        public ActionResult danhSachDatTour()
        {
            var lst = data.DatTours.ToList();
            return View(lst);
        }

        public ActionResult XacNhanDDH(int id)
        {
            DatTour ddh = data.DatTours.FirstOrDefault(t => t.id == id);
            ddh.id_TrangThai = 2;
            data.SubmitChanges();
            return RedirectToAction("danhSachDatTour");
        }

        public ActionResult HuyDDH(int id)
        {
            DatTour ddh = data.DatTours.FirstOrDefault(t => t.id == id);
            ddh.id_TrangThai = 5;
            data.SubmitChanges();
            return RedirectToAction("danhSachDatTour");
        }

        public ActionResult ChiTietDatTour(int id)
        {
            List<ChiTiet_DatTour> ctdt = data.ChiTiet_DatTours.Where(t => t.DatTour_id == id).ToList();
            ViewBag.MaDT = id;
            return View(ctdt);
        }


       
    }
}