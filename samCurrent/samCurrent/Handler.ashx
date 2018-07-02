<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Data;


public class Handler : IHttpHandler 
{
   
    string strcon = ConfigurationManager.ConnectionStrings["CONSTRING"].ConnectionString;
      
public void ProcessRequest(HttpContext context)
{
    string imageid = context.Request.QueryString["ImID"];
SqlConnection connection = new SqlConnection(strcon);


connection.Open();
SqlCommand cmd = new SqlCommand("select Image from fruit where fruit_id=" + imageid, connection);

SqlDataReader dr = cmd.ExecuteReader();
dr.Read();
context.Response.BinaryWrite((Byte[])dr[0]);
connection.Close();
context.Response.End();
}
    
        
    public bool IsReusable 
    {
        get {
            return false;
        }
    }

}