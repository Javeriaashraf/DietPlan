using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class PersonalProfilePatient : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    static string connection = @"Data Source=DESKTOP-0H8DPB2\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=True; ";
    SqlConnection con = new SqlConnection(connection);
    protected void Page_Load(object sender, EventArgs e)
    {  Label1.Text = "Personal Profile";
    BindGrid();
        if (!IsPostBack)
        {

            txtus.Text = Session["user_name"].ToString();
            Binddis();
          

            Button1.Visible = false;
            btnSubmit.Visible = true;
            btnCancel.Visible = false;

        }
    }
    public void Binddis()
    {
        string query = "select * from disease;";
        DataTable dt = new DataTable();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        dt = ds.Tables[0];
        con.Close();
        disease.DataValueField = "disease_id";
        disease.DataTextField = "disease_name";
        disease.DataSource = dt;
        disease.DataBind();
    }


    public void BindGrid()
    {
        DataTable dt = new DataTable();
        string query = "SELECT  Patient.Pa_id ,login.user_name, disease.disease_name, Patient.BMI FROM Patient INNER JOIN login ON Patient.user_id = login.user_id INNER JOIN disease ON Patient.disease_id1 = disease.disease_id where Patient.user_id=" + Session["user_id"] +"";
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        
        da.Fill(ds);
        dt = ds.Tables[0];
        con.Close();
        gridContact.DataSource = dt;
        gridContact.DataBind();



    }

    protected void gridTown_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        //if (e.CommandName == "Delete")
        //{

        //    int ID = Convert.ToInt32(e.CommandArgument);
        //    string query = "delete from patient where Pa_id= " + ID + "";
        //    try
        //    {
        //        con.Open();
        //        SqlCommand SQLCmd = new SqlCommand();
        //        SQLCmd.CommandText = query;
        //        SQLCmd.Connection = con;
        //        SQLCmd.ExecuteNonQuery();
        //        con.Close();
        //        lblmsg.ForeColor = System.Drawing.Color.Red;
        //        lblmsg.Text = "Successfully Deleted";
        //        txtus.Text = null;
        //        disease.Text = null;
        //        txtBMI.Text=null;

        //        lblmsg.Visible = true;
        //        BindGrid();

        //    }

        //    catch
        //    {


        //        lblmsg.ForeColor = System.Drawing.Color.Red;
        //        lblmsg.Text = "Failure";
        //        txtus.Text = null;
        //        disease.Text = null;
        //        txtBMI.Text=null;
        //        lblmsg.Visible = true;
        //    }
        //}

        if (e.CommandName == "Edit")
        {
            int ID = Convert.ToInt32(e.CommandArgument);
            btnSubmit.Visible = false;
            Button1.Visible = true;
            btnCancel.Visible = true;

            lblmsg.Visible = false;

            DataTable dtEdit = new DataTable();


            string query = "select * from patient where Pa_id = " + ID + ";";
            DataTable dt = new DataTable();

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(ds);
            dt = ds.Tables[0];
            con.Close();
            dtEdit = dt;

          
         

            txtus.Text = dtEdit.Rows[0]["user_id"].ToString();
            disease.Text = dtEdit.Rows[0]["disease_name"].ToString();
            txtBMI.Text = dtEdit.Rows[0]["BMI"].ToString();
         
            ViewState["Pa_id"] = ID;


            txtus.Text = null;
             txtBMI.Text=null;
            ViewState["Pa_id"] = ID;

        }
    }


 
    protected void gridTown_RowEditing(object sender, GridViewEditEventArgs e)
    {
    }



    protected void btnInsert_Click(object sender, EventArgs e)
    {
       
        int ID= Convert.ToInt32(ViewState["Pa_id"]);
        txtus.Text = Session["user_name"].ToString();
        string dis  = disease.SelectedIndex.ToString();
        int a= Convert.ToInt32(dis);
        int BodyMassIndex=int.Parse(txtBMI.Text);
        int id1 = Convert.ToInt32(Session["user_id"].ToString());

        disease.Items.Insert(0, new ListItem("Please Select One", "0")); 

        string query = "insert into Patient(user_id,disease_id,BMI) values(" + id1 + "," + a + "," + BodyMassIndex + ");";

       
        try
        {
            con.Open();
            SqlCommand SQLCmd = new SqlCommand();
            SQLCmd.CommandText = query;
            SQLCmd.Connection = con;
            SQLCmd.ExecuteNonQuery();
            con.Close();
            lblmsg.ForeColor = System.Drawing.Color.Green;
            lblmsg.Text = "Successfully done";
            lblmsg.Visible = true;
            
            txtus.Text = null;
              
                txtBMI.Text=null;
            
            Button1.Visible = false;
            btnSubmit.Visible = true;
            btnCancel.Visible = false;
            BindGrid();
          
        }
        catch
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "Failure";
            
             txtus.Text = null;
              
                txtBMI.Text=null;
            
            // txtId.Text = null;

            lblmsg.Visible = true;
        }

    
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(ViewState["Pa_id"]);
        string name = Session["user_name"].ToString();
        int id1 = Convert.ToInt32(Session["user_id"].ToString());
        string BMI = txtBMI.Text;

        string dis = disease.SelectedIndex.ToString();
        int a = Convert.ToInt32(dis);
        string query = "update patient set  user_id= '" + id1 + "' , disease_id= '" + a + "' , BMI= '" + BMI + "'   where Pa_id=" + id + "";



        try
        {
            con.Open();
            SqlCommand SQLCmd = new SqlCommand();
            SQLCmd.CommandText = query;
            SQLCmd.Connection = con;
            SQLCmd.ExecuteNonQuery();
            con.Close();
            lblmsg.ForeColor = System.Drawing.Color.Green;
            lblmsg.Text = "Successfully done";
            lblmsg.Visible = true;

            txtus.Text = null;

            txtBMI.Text = null;
            //   txtId.Text = null;

            Button1.Visible = false;
            btnSubmit.Visible = true;
            btnCancel.Visible = false;
            BindGrid();

        }
        catch
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "Failure";
            txtus.Text = null;

            txtBMI.Text = null;
            // txtId.Text = null;

            lblmsg.Visible = true;
        }

    }
    
    
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtus.Text = null;

        txtBMI.Text = null;
        ListItem litown = new ListItem("-Select Disease-", "0");
        disease.Items.Insert(0, litown);
        Binddis();
        // txtId.Text = null;
    }
}
