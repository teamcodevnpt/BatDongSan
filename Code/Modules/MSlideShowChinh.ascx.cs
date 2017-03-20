using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modules_MSlideShowChinh : System.Web.UI.UserControl
{
    clsBatDongSan myBatDongSan = new clsBatDongSan();
    protected void Page_Load(object sender, EventArgs e)
    {
        loadSlideShow();
    }

    private void loadSlideShow()
    {
        DataTable dt_BDS = myBatDongSan.select_sanpham_from_masp();
        if(dt_BDS.Rows.Count > 0)
        {
            for(int i = 0; i < dt_BDS.Rows.Count; i++)
            {
                ltrSlideShowChinh.Text += "<div>";
                ltrSlideShowChinh.Text += "<a href='../Pages/TimKiemChiTiet'><img data-u='image' src=" + dt_BDS.Rows[i]["AVATAR"].ToString() + " /></a>";
                ltrSlideShowChinh.Text += "<div data-u='thumb'>";
                ltrSlideShowChinh.Text += "<img class='i' src='" + dt_BDS.Rows[i]["AVATAR"].ToString() + "' />";
                ltrSlideShowChinh.Text += "<div class='t'>" + dt_BDS.Rows[i]["TIEU_DE"].ToString() + "</div>";
                ltrSlideShowChinh.Text += "<div class='c'>" + dt_BDS.Rows[i]["GIA"].ToString() + "</div>";
                ltrSlideShowChinh.Text += "</div>";
                ltrSlideShowChinh.Text += "</div>";
            }
        }
    }
}