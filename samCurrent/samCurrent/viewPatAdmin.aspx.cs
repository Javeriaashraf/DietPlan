using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class viewPatAdmin : System.Web.UI.Page
{
    static string connection = @"Data Source=DESKTOP-0H8DPB2\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=True; ";
    SqlConnection con = new SqlConnection(connection);
    protected void Page_Load(object sender, EventArgs e)
    {
 //   BindGrid();

    if (!IsPostBack)
    {



        BindGrid();

    }
    }


    public void BindGrid()
    {
        DataTable dt = new DataTable();
        string query = "SELECT        Patient.Pa_id, login.user_name, login.email, login.gender, Patient.disease_id1, Patient.disease_id2, Patient.disease_id3, Patient.BMI, Patient.status, Patient.idealweight, Patient.cal_to_maintain, Patient.Hieght, Patient.Weight, Patient.Age FROM Patient INNER JOIN login ON Patient.user_id = login.user_id";
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
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