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

public partial class viewAdminFruit : System.Web.UI.Page
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
        string query = "SELECT fruit.fruit_id, fruit.fruit_name, fruit.Image,fruit.nutritional_facts, disease.disease_id, disease.disease_name FROM disease INNER JOIN fruit ON disease.disease_id = fruit.disease_id";
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, con);

        da.Fill(ds);
        dt = ds.Tables[0];
        con.Close();
        gvImage.DataSource = dt;
        gvImage.DataBind();



    }
    protected void gvImage_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvImage.PageIndex = e.NewPageIndex;
        BindGrid();

    }

}