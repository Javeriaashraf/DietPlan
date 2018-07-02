using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    static string connection = @"Data Source=DESKTOP-0H8DPB2\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=True;";

    SqlConnection con = new SqlConnection(connection);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Contact";
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
        string query = "select * from contact;";
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
            string query = "delete from contact where contact_id= " + ID + "";
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
                txtemail.Text = null;

                lblmsg.Visible = true;
                BindGrid();

            }

            catch
            {


                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "Failure";
                txtName.Text = null;
                txtemail.Text = null;
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


            string query = "select * from contact where contact_id = " + ID + ";";
            DataTable dt = new DataTable();
           
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(ds);
            dt = ds.Tables[0];
            con.Close();
            dtEdit = dt;

            // txtId.Text = dtEdit.Rows[0]["town_id"].ToString();
            txtName.Text = dtEdit.Rows[0]["Name"].ToString();
            txtemail.Text = dtEdit.Rows[0]["email"].ToString();
            TextBox1.Text = dtEdit.Rows[0]["Subject"].ToString();
            TextBox2.Text = dtEdit.Rows[0]["Message"].ToString();
            TextBox3.Text = dtEdit.Rows[0]["Replied_by"].ToString();
            TextBox4.Text = dtEdit.Rows[0]["Status"].ToString();

            ViewState["contact_id"] = ID;

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

        int id= Convert.ToInt32(ViewState["contact_id"]);
        string name = txtName.Text;
        string email = txtemail.Text;
        string subject=TextBox1.Text;
        string message=TextBox2.Text;
        string replied_by=TextBox3.Text;
        string status=TextBox4.Text;

        string query = "update contact set  Name= '" + name + "' , email= '" + email + "' , Subject= '"+ subject +"', Message='"+message+"', Replied_by='"+replied_by+"' , status='"+status+"'   where contact_id=" + id + "";

       
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
            txtemail.Text = null;
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
            TextBox4.Text = null;
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
            txtemail.Text = null;
            TextBox1.Text = null;
            TextBox2.Text = null;
            TextBox3.Text = null;
            TextBox4.Text = null;
            
            // txtId.Text = null;

            lblmsg.Visible = true;
        }

        
       
    }
   

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtemail.Text = null;
        txtName.Text = null;
        TextBox1.Text = null;
        TextBox2.Text = null;
        TextBox3.Text = null;
        TextBox4.Text = null;
            
        lblmsg.Visible = false;
        btnSubmit.Visible = true;
        Button1.Visible = false;
        btnCancel.Visible = false;
        BindGrid();


    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        
            btnSubmit.Visible = true;
            Button1.Visible = false;
        
            btnCancel.Visible = false;
            lblmsg.Visible = false;

          
               if ((txtemail.Text != null) && (txtName.Text != null))
            {
            string query = "insert into contact(name,email,subject,message,replied_by,status) values (@name,@email,@subject,@message,@replied_by,@status)";
            SqlCommand cmd = new SqlCommand(query, con);
            
            cmd.Parameters.AddWithValue("@name",txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@subject", TextBox1.Text);
            cmd.Parameters.AddWithValue("@message", TextBox2.Text);
            cmd.Parameters.AddWithValue("@replied_by", TextBox3.Text);
            cmd.Parameters.AddWithValue("@status", TextBox4.Text);
             
                con.Open();
                cmd.ExecuteNonQuery();
              
                con.Close();
                BindGrid();
                ViewState["contact_id"] = ID;      
                lblmsg.ForeColor = System.Drawing.Color.Green;
                lblmsg.Text = "Successfully done";
                txtName.Text = null;
                txtemail.Text = null;
                TextBox1.Text = null;
                TextBox2.Text = null;
                TextBox3.Text = null;
                TextBox4.Text = null;
            
                lblmsg.Visible = true;
                

            }
          
           else
            {
                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "Failure";
                txtemail.Text = null;
                txtName.Text = null;
                TextBox1.Text = null;
                TextBox2.Text = null;
                TextBox3.Text = null;
                TextBox4.Text = null;
            
                // txtId.Text = null;
                lblmsg.Visible = true;
            
            }
        }
    }
    