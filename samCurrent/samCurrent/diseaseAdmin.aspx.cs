using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class diseaseAdmin : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    static string connection = @"Data Source=DESKTOP-0H8DPB2\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=True; ";
    SqlConnection con = new SqlConnection(connection);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Disease";
        if (!IsPostBack)
        {
            lblmsg.Visible = false;
            btnSubmit.Visible = true;
            Button1.Visible = false;
            btnCancel.Visible = false;
            BindGrid();
            
        }

    }
    public void BindGrid()
    {
        DataTable dt = new DataTable();
        string query = "select * from disease;";
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
        if (e.CommandName == "Delete")
        {

            int ID = Convert.ToInt32(e.CommandArgument);
            string query = "delete from  disease where disease_id= " + ID + "";
            try
            {
                con.Open();
                SqlCommand SQLCmd = new SqlCommand();
                SQLCmd.CommandText = query;
                SQLCmd.Connection = con;
                SQLCmd.ExecuteNonQuery();
                con.Close();
                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "Successfully Deleted";
                txtName.Text = null;
                // txtemail.Text = null;

                lblmsg.Visible = true;
                BindGrid();

            }

            catch
            {


                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "Failure";
                txtName.Text = null;
                //txtemail.Text = null;
                // txtId.Text = null;
                lblmsg.Visible = true;
            }
        }

        if (e.CommandName == "Edit")
        {
            int ID = Convert.ToInt32(e.CommandArgument);
            btnSubmit.Visible = false;
            Button1.Visible = true;
            btnCancel.Visible = true;

            lblmsg.Visible = false;

            DataTable dtEdit = new DataTable();


            string query = "select * from disease where disease_id = " + ID + ";";
            DataTable dt = new DataTable();

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(ds);
            dt = ds.Tables[0];
            con.Close();
            dtEdit = dt;

            // txtId.Text = dtEdit.Rows[0]["town_id"].ToString();
            txtName.Text = dtEdit.Rows[0]["disease_name"].ToString();
            // txtemail.Text = dtEdit.Rows[0]["email"].ToString();
            ViewState["disease_id"] = ID;

        }
    }


    protected void gridTown_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
    }
    protected void gridTown_RowEditing(object sender, GridViewEditEventArgs e)
    {
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        int id = Convert.ToInt32(ViewState["disease_id"]);
        string name = txtName.Text;
        //   string email = txtemail.Text;
        string query = "update disease set  disease_name= '" + name + "' where disease_id=" + id + "";


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
            txtName.Text = null;
            //  txtemail.Text = null;
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
            txtName.Text = null;
            //  txtemail.Text = null;
            // txtId.Text = null;

            lblmsg.Visible = true;
        }





    }
    protected void btnInsert_Click(object sender, EventArgs e)
    { btnSubmit.Visible = true;
            Button1.Visible = false;
        
            btnCancel.Visible = false;
            lblmsg.Visible = false;

          
               if (txtName.Text!= null) 
            {
            string query = "insert into disease(disease_name) values (@name)";
            SqlCommand cmd = new SqlCommand(query, con);
            
            cmd.Parameters.AddWithValue("@name",txtName.Text);
          
             
                con.Open();
                cmd.ExecuteNonQuery();
              
                con.Close();
                BindGrid();
                ViewState["disease_id"] = ID;      
                lblmsg.ForeColor = System.Drawing.Color.Green;
                lblmsg.Text = "Successfully done";
                txtName.Text = null;
             
                lblmsg.Visible = true;
                

            }
          
           else
            {
                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "Failure";
               
                txtName.Text = null;
                // txtId.Text = null;
                lblmsg.Visible = true;
            
            }
        }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
       
        txtName.Text = null;
        lblmsg.Visible = false;
        btnSubmit.Visible = true;
        Button1.Visible = false;
        btnCancel.Visible = false;
        BindGrid();

    }
}
