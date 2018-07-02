using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class dietAdmin : System.Web.UI.Page
{

    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    static string connection = @"Data Source=DESKTOP-0H8DPB2\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=True ;";
    SqlConnection con = new SqlConnection(connection);


    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Diet Details";

        if (!IsPostBack)
        {
            lblmsg.Visible = false;
            btnSubmit.Visible = true;
            Button1.Visible = false;
            btnCancel.Visible = false;
            BindGrid();

            Binddis();
            Bindbmi();


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
        disease.Items.Insert(0, new ListItem("Please Select One", "NA"));
    }

    public void Bindbmi()
    {
        string query = "select * from BMI_Detail;";
        DataTable dt = new DataTable();
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        dt = ds.Tables[0];
        con.Close();
        BMI.DataValueField = "BMI_ID";
        BMI.DataTextField = "BMI_Name";
        //BMI.DataValueField = "BMI_LowerLimit";
        //BMI.DataTextField = "BMI_UpperLimit";
        BMI.DataSource = dt;
        BMI.DataBind();
        BMI.Items.Insert(0, new ListItem("Please Select One", "NA"));
    }

    public void BindGrid()
    {
        DataTable dt = new DataTable();
        string query = "SELECT diet_plan.diet_id, diet_plan.diet_time, diet_plan.diet_items, disease.disease_id, disease.disease_name, BMI_Detail.BMI_ID, BMI_Detail.BMI_Name, BMI_Detail.BMI_LowerLimit, BMI_Detail.BMI_UpperLimit FROM diet_plan INNER JOIN disease ON diet_plan.disease_id = disease.disease_id INNER JOIN BMI_Detail ON diet_plan.BMI_ID = BMI_Detail.BMI_ID";
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
            string query = "delete from diet_plan where diet_id= " + ID + "";
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
           
            }

            catch
            {


                lblmsg.ForeColor = System.Drawing.Color.Red;
                lblmsg.Text = "Failure";
                txtitem.Text = null;
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


            string query = "select * from diet_plan where diet_id = " + ID + ";";
            DataTable dt = new DataTable();

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(ds);
            dt = ds.Tables[0];
            con.Close();
            dtEdit = dt;

          
            txtitem.Text = dtEdit.Rows[0]["diet_items"].ToString();
        
            ViewState["diet_id"] = ID;
            RadioButtonList1.SelectedValue = dtEdit.Rows[0]["diet_time"].ToString();

          
            BMI.SelectedValue = dtEdit.Rows[0]["BMI_ID"].ToString();
            disease.SelectedValue = dtEdit.Rows[0]["disease_id"].ToString();
            //disease.SelectedValue = dtEdit.Rows[0]["disease_id"].ToString();



        }
    }

    protected void gridTown_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
    }
    protected void gridTown_RowEditing(object sender, GridViewEditEventArgs e)
    { }

    protected void btnInsert_Click(object sender, EventArgs e)
    {

        int ID = Convert.ToInt32(ViewState["diet_id"]);



        btnSubmit.Visible = true;
        Button1.Visible = false;

        btnCancel.Visible = false;
        lblmsg.Visible = false;

        string dis = disease.SelectedIndex.ToString();
        int d = Convert.ToInt32(dis);

        string K = BMI.SelectedIndex.ToString();
        int b = Convert.ToInt32(K);


        string query = "insert into diet_plan(diet_time,diet_items,disease_id,BMI_ID) values('" + RadioButtonList1.SelectedValue.ToString() + "','" + txtitem.Text + "'," + d + "," + b + ");";


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

            // txtId.Text = null;

            lblmsg.Visible = true;
        }


    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string dis = disease.SelectedIndex.ToString();
        int a = Convert.ToInt32(dis);

        string time = RadioButtonList1.SelectedValue.ToString();

        string K = BMI.SelectedIndex.ToString();
        int b = Convert.ToInt32(K);

        //  int BodyMassIndex = int.Parse(txtBMI.Text);
        //    int id1 = Convert.ToInt32(Session["user_id"].ToString());

        int id = Convert.ToInt32(ViewState["diet_id"]);

        string query = "update diet_plan  set  diet_time= '" + time + "' ,diet_items= '" + txtitem.Text + "', disease_id= '" + a + "' , BMI_ID= '" + b + "'   where diet_id=" + id + "";



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


            //   txtBMI.Text = null;
            // txtId.Text = null;
            txtitem.Text = null;
            lblmsg.Visible = true;
        }

    }



    protected void btnCancel_Click(object sender, EventArgs e)
    {
        txtitem.Text = null;
        lblmsg.Visible = false;
        btnSubmit.Visible = true;
        Button1.Visible = false;
        btnCancel.Visible = false;
        BindGrid();
       
        Bindbmi();
      
    }
}