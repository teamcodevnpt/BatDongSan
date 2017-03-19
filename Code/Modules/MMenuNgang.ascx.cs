using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modules_MMenuNgang : System.Web.UI.UserControl
{
    clsMenu myMenu = new clsMenu();
    protected void Page_Load(object sender, EventArgs e)
    {
        loadMenu();
    }
    void loadMenu()
    {
        DataTable dtMenu = myMenu.select_menu_ngang();
        if (dtMenu.Rows.Count > 0)
        {
            String strMenu = "";
            for (int i = 0; i < dtMenu.Rows.Count; i++)
            {
                strMenu += "<li><a href='" + ResolveUrl(dtMenu.Rows[i]["URL"].ToString()) + "'>" + dtMenu.Rows[i]["TEN_MENU"] + "</a></li>";
            }
            ltrMenu.Text = strMenu;
        } 
    }
}