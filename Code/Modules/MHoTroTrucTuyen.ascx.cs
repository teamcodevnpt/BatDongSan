using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modules_MHoTroTrucTuyen : System.Web.UI.UserControl
{
    clsTaiKhoan myTaiKhoan = new clsTaiKhoan();
    protected void Page_Load(object sender, EventArgs e)
    {
        loadHoTroTrucTuyen();
    }

    private void loadHoTroTrucTuyen()
    {
        DataTable dtHoTroTrucTuyen = myTaiKhoan.select_hotro_tructuyen();
        if(dtHoTroTrucTuyen.Rows.Count > 0)
        {
            for(int i = 0; i< dtHoTroTrucTuyen.Rows.Count; i++)
            {
                ltrHoTroTrucTuyen.Text += "<a href='skype:" + dtHoTroTrucTuyen.Rows[i]["SKYPE"].ToString() + "?chat'><i class='fa fa-skype fa-2x' aria-hidden='true'></i> " + dtHoTroTrucTuyen.Rows[i]["HOTEN"].ToString() + "(" + dtHoTroTrucTuyen.Rows[i]["DIENTHOAI"].ToString() + ")</a>";
                ltrHoTroTrucTuyen.Text += "<br/>";
            }
        }
    }
}