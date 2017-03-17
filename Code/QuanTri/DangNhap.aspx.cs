using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class QuanTri_DangNhap : System.Web.UI.Page
{
    clsTaiKhoan myTaiKhoan = new clsTaiKhoan();
    int gioiHanSoLanSai = 5;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt32(txtSolanSai.Text.ToString()) < gioiHanSoLanSai)
        {
            divCaptcha.Attributes.Add("style", "display:none");
        }
        else
        {
            divCaptcha.Attributes.Add("style", "display:''");
        }
    }

    protected void btnDangNhap_Click(object sender, EventArgs e)
    {

    }
}