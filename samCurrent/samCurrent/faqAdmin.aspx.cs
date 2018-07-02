using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class faqAdmin : System.Web.UI.Page
{

    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    static string connection = @"Data Source=DESKTOP-0H8DPB2\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=True; ";
    SqlConnection con = new SqlConnection(connection);


    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "FAQ Details";

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
        string query = "SELECT * FROM FAQ";
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, con);

        da.Fill(ds);
        dt = ds.Tables[0];
        con.Close();
        gridContact.DataSource = dt;
        gridContact.DataBind();

        con.Close();

    }

    protected void gridTown_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Delete")
        {

            int ID = Convert.ToInt32(e.CommandArgument);
            string query = "delete from FAQ where fa_id= " + ID + "";
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
                // txtus.Text = null;
                //       txtBMI.Text = null;
                lblmsg.Visible = true;
                BindGrid();
                //      Bindbmi();
                TextBox1.Text = null;
                txtitem.Text = null;
            }

            catch
            {


                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "Failure";
                txtitem.Text = null;
                lblmsg.Visible = true;
                TextBox1.Text = null;
                txtitem.Text = null;
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


            string query = "select * from FAQ where fa_id = " + ID + ";";
            DataTable dt = new DataTable();

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(ds);
            dt = ds.Tables[0];
            con.Close();
            dtEdit = dt;

            // txtId.Text = dtEdit.Rows[0]["town_id"].ToString();
            txtitem.Text = dtEdit.Rows[0]["answer"].ToString();
            TextBox1.Text = dtEdit.Rows[0]["question"].ToString();
            RadioButtonList1.SelectedValue = dtEdit.Rows[0]["category"].ToString();
            
            ViewState["fa_id"] = ID;


        }
    }

    protected void gridTown_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
    }
    protected void gridTown_RowEditing(object sender, GridViewEditEventArgs e)
    {
    }


    protected void btnInsert_Click(object sender, EventArgs e)
    {
        btnSubmit.Visible = true;
        Button1.Visible = false;

        btnCancel.Visible = false;
        lblmsg.Visible = false;



        int ID = Convert.ToInt32(ViewState["fa_id"]);





        string query = "insert into FAQ(category,question,answer) values('" + RadioButtonList1.SelectedValue.ToString() + "','" + TextBox1.Text + "','" + txtitem.Text + "');";


        try
        {


            SqlConnection con = new SqlConnection(connection);
            con.Open();
            SqlCommand SQLCmd = new SqlCommand();
            SQLCmd.CommandText = query;
            SQLCmd.Connection = con;
            SQLCmd.ExecuteNonQuery();
            con.Close();
            lblmsg.ForeColor = System.Drawing.Color.Green;
            lblmsg.Text = "Successfully done";
            lblmsg.Visible = true;
            TextBox1.Text = null;
            txtitem.Text = null;

            Button1.Visible = false;
            btnSubmit.Visible = true;
            btnCancel.Visible = false;
            BindGrid();

        }
        catch
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "Failure";



            txtitem.Text = null;
            TextBox1.Text = null;
            // txtId.Text = null;

            lblmsg.Visible = true;
        }


    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {


        string time = RadioButtonList1.SelectedValue.ToString();


        int id = Convert.ToInt32(ViewState["fa_id"]);

        string query = "update FAQ  set  category= '" + time + "' ,answer= '" + txtitem.Text + "',  question= '" + TextBox1.Text + "'   where fa_id=" + id + "";



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

            TextBox1.Text = null;
            //     txtBMI.Text = null;
            //   txtId.Text = null;
            txtitem.Text = null;
            Button1.Visible = false;
            btnSubmit.Visible = true;
            btnCancel.Visible = false;
            BindGrid();

        }
        catch
        {
            lblmsg.ForeColor = System.Drawing.Color.Red;
            lblmsg.Text = "Failure";

            TextBox1.Text = null;

            txtitem.Text = null;
            lblmsg.Visible = true;
        }

    }



    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtitem.Text = null;

        TextBox1.Text = null;
        lblmsg.Visible = false;
        btnSubmit.Visible = true;
        Button1.Visible = false;
        btnCancel.Visible = false;
        BindGrid();
    
    }
}