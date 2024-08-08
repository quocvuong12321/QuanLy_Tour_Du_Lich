using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QuanLy_TourDuLich.Models
{
    public class KhuyenMai
    {
        public int id { get; set; }
        public string Name { get; set; }
        public string Tour_id { get; set; }
        public int GiaTriKhuyenMai { get; set; }
        public int GiaTriKhuyenMaiTu { get; set; }
    }
}