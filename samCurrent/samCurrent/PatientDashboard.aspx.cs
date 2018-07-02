using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class PatientDashboard : System.Web.UI.Page
{
    static string connection = @"Data Source=DESKTOP-0H8DPB2\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=True; ";
    SqlConnection con = new SqlConnection(connection);
    protected void Page_Load(object sender, EventArgs e)
    {
        check();
        if (!IsPostBack)
        {
            check();
        }
    }

    public void check()
    
    {
DataSet ds = new DataSet();
           
            string query = "select * from Patient where user_id="+Session["user_id"]+"";
            DataTable dt = new DataTable();
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);

      
            con.Close();

            if (!(dt.Rows.Count > 0))
       
            {
       
              Response.Redirect("PersonalProfilePatient.aspx");
            }

          
       
        }
        
}