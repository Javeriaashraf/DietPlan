using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class ruitsPatient : System.Web.UI.Page
{
    string constring = ConfigurationManager.ConnectionStrings["CONSTRING"].ConnectionString;
    static string connection = @"Data Source=DESKTOP-0H8DPB2\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=True; ";
    SqlConnection con = new SqlConnection(connection);
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {



            BindGrid();

        }
    }

    public void BindGrid()
    {
        DataTable dt = new DataTable();
        //String query = "SELECT      DISTINCT  fruit.fruit_id, fruit.fruit_name, CAST([fruit.Image] AS VARBINARY(8000)) AS [fruit.Image], fruit.fruit_name, fruit.Image, Patient.Pa_id, login.user_id, login.user_name FROM login INNER JOIN Patient ON login.user_id = Patient.user_id CROSS JOIN fruit where Patient.user_id=" + Session["user_id"] + "";
        string query = "select distinct (f.fruit_name),f.fruit_id,CAST(f.Image as varbinary(5000)) as Picture from Patient p join fruit f on p.disease_id = f.disease_id where p.user_id=" + Session["user_id"] + "";
       
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, con);

        da.Fill(ds);
        dt = ds.Tables[0];
        con.Close();
        GridView1.DataSource = dt;
        GridView1.DataBind();



    }
    protected void gvImage_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        BindGrid();

    }


}