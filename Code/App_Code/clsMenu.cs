using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsMenu
/// </summary>
public class clsMenu
{
    ConnectionDB myConn = new ConnectionDB();
	public clsMenu()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable select_menu_ngang()
    {
        DataTable dts = new DataTable();
        dts = myConn.Stored_ExecuteQuery_Datatable_noPara("select_menu_ngang");
        return dts;
    }
}