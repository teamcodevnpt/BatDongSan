using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuanTri_QuanTri : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["HoTen"] == null || Session["HoTen"].ToString() == "")
        //{
        //    Response.Redirect("../QuanTri/DangNhap.aspx");
        //}
        //else
        //{
            // đang hardcode
            //ltrTenNguoiDung.Text = Session["HoTen"].ToString();
            ltrTenNguoiDung.Text = "<span class='block m-t-xs'> "+
                                        "<strong class='font-bold'>Thư</strong>"+
                                    "</span>";
            ltrAvatar.Text = "<img alt='image' class='img-circle'style='width: 70px;height:70px' src='img/a6.jpg'/>";
        //}
    }

}
