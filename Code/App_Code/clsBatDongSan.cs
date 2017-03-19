using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsSanPham
/// </summary>
public class clsBatDongSan
{
    ConnectionDB conn = new ConnectionDB();
    public clsBatDongSan()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public DataTable select_sanpham_from_masp()
    {
        return conn.Stored_ExecuteQuery_Datatable_noPara("select_slideshow_chinh");
    }
}