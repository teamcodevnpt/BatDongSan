<%@ Application Language="C#" %>
<%@ Import Namespace="BatDongSan" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        RouteConfig.RegisterRoutes(RouteTable.Routes);
    }
    protected void Session_Start(object sender, EventArgs e)
    {
        Application.Lock();
        Application["online"] = (Convert.ToInt32(Application["online"])) + 1;
        Application.UnLock();
        try
        {
            clsLuotTruyCap myLuotTruyCap = new clsLuotTruyCap();
            System.Data.DataTable dts = myLuotTruyCap.select_luottruycap();
            if (dts.Rows.Count > 0)
            {
                Application["homqua"] = dts.Rows[0]["homqua"].ToString();
                Application["homnay"] = dts.Rows[0]["homnay"].ToString();
                Application["thangnay"] = dts.Rows[0]["thangnay"].ToString();
                Application["tatca"] = dts.Rows[0]["TatCa"].ToString();
            }
        }
        catch
        {

        }
    }
    protected void Session_End(object sender, EventArgs e)
    {
        Application.Lock();
        Application["online"] = (Convert.ToInt32(Application["online"])) - 1;
        Application.UnLock();
    }
    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }
</script>
