using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data.OleDb;
using System.Text;
using System.Globalization;
using System.Configuration;
using System.IO;


public partial class login : System.Web.UI.Page
{
    public string com = "";

    int max = 0;
    public int temp = 0;


    protected void Page_Load(object sender, EventArgs e)
    {

        if (HttpContext.Current.Session["user_name"] != null)
        {
            Response.Redirect("PatientProfile.aspx");

        }
        CheckBox1.Checked = false;
        if (!IsPostBack)
        {

            if (Request.Cookies["user_name"] != null && Request.Cookies["password"] != null)
            {
                username.Text = Request.Cookies["user_name"].Value;
                password.Attributes["value"] = Request.Cookies["password"].Value;
                CheckBox1.Checked = true;

            }
        }

    }

    protected void Checkk()
    {
        string[] patientsId = new string[50];
        string strConnString = ConfigurationManager.ConnectionStrings["OLEDBCONSTRING"].ConnectionString; //initilizes connection string

        OleDbConnection con = new OleDbConnection("Provider=SQLOLEDB; Data Source=DESKTOP-0H8DPB2\\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=SSPI");


        con = new OleDbConnection(strConnString);
        com = "SELECT user_id FROM Patient";
        DataSet ds = new DataSet();
        OleDbDataAdapter da = new OleDbDataAdapter(com, con);
        if (con.State == ConnectionState.Closed)
            con.Open();
        da.Fill(ds, "Patient");

        max = ds.Tables["Patient"].Rows.Count;
        for (int i = 0; i < max; i++)
        {
            DataRow dRow = ds.Tables["Patient"].Rows[i];
            patientsId[i] = dRow.ItemArray.GetValue(0).ToString();
        }

        string userId = HttpContext.Current.Session["user_id"].ToString();

        for (int i = 0; i < max; i++)
        {
            if (patientsId[i] == userId)
                temp++;

        }

    }
  
    protected void Button1_Click(object sender, EventArgs e)
    {


        string cs = ConfigurationManager.ConnectionStrings["CONSTRING"].ConnectionString;
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("select * from login where user_name='" + username.Text + "'and password='" + password.Text + "' ", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {

                if (CheckBox1.Checked)
                {
                    Response.Cookies["user_name"].Value = username.Text;
                    Response.Cookies["password"].Value = password.Text;


                    //    Response.Cookies["user_name"].Expires = DateTime.Now.AddDays(15);
                    //    Response.Cookies["password"].Expires = DateTime.Now.AddDays(15);//cookies disable after 15days
                    //
                }
                else
                {
                    Response.Cookies["user_name"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["password"].Expires = DateTime.Now.AddDays(-1);

                }

                string status;
                status = dt.Rows[0][5].ToString().Trim();
              Session["user_id"]= dt.Rows[0][0].ToString().Trim();
              Checkk();
                if (status == "PATIENT")
                {
                    Session["user_name"] = username.Text;

                    if (temp == 1)
                        Response.Redirect("PatientProfile.aspx");
                    if (temp == 0)
                        Response.Redirect("Defaulttry.aspx");
                }

                else if (status == "DOCTOR")
                {
                    Session["user_name"] = username.Text;
                    Response.Redirect("doctor.aspx");
                  
                }

                else if (status == "A")
                {

                    Session["user_name"] = username.Text;
                    Response.Redirect("DashboardAdmin.aspx");
               
                }

               
                
            
            }
            else
            {
                lblerror.Text = "Incorrect username or password";


            }


        }

    }


}