using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modules_MThongKeTruyCap : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        loadLuotTruyCap();
    }

    private void loadLuotTruyCap()
    {
        ltrLuotTruyCap.Text += "<ul class='list-group'>";
        ltrLuotTruyCap.Text += "<li class='list-group-item' style='font-sltrize: 40px; text-align: center; color:#337ab7'> " + Application["tatca"].ToString() + "</li>";
        ltrLuotTruyCap.Text += "<li class='list-group-item'> Đang Online <span class='badge' style='background-color:#337ab7'>" + Application["online"].ToString() + "</span></li>";
        ltrLuotTruyCap.Text += "<li class='list-group-item'> Hôm nay <span class='badge' style='background-color:#337ab7'>" + Application["homnay"].ToString() + "</span></li>";
        ltrLuotTruyCap.Text += "<li class='list-group-item'> Tháng này <span class='badge' style='background-color:#337ab7'>" + Application["thangnay"].ToString() + "</span></li>";
        ltrLuotTruyCap.Text += "</ul>";
    }
}