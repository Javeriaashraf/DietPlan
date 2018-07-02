<%@ WebHandler Language="C#" Class="Handlervegetable" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Data.OleDb;

public class Handlervegetable : IHttpHandler 
{

    string strConnString = ConfigurationManager.ConnectionStrings["OLEDBCONSTRING"].ConnectionString;
    OleDbDataAdapter da;
    OleDbConnection con;
    
    public void ProcessRequest (HttpContext context) {
        con = new OleDbConnection(strConnString);
        //int imageid = Convert.ToInt32(context.Request.QueryString["ImID"]);
        string imagename = context.Request.QueryString["ImID"];
        string com = "SELECT TOP 1 Image FROM vegetable where vegetable_name='" + imagename + "'";
        OleDbCommand command = new OleDbCommand(com, con);
        DataSet ds = new DataSet();
        da = new OleDbDataAdapter(com, con);
        con.Open();
        OleDbDataReader reader = command.ExecuteReader();
        reader.Read();
        context.Response.BinaryWrite((Byte[])reader[0]);
        con.Close();
        context.Response.End();
    }


    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}