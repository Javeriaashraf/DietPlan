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


public partial class fruitsAdmin : System.Web.UI.Page
{
    string constring = ConfigurationManager.ConnectionStrings["CONSTRING"].ConnectionString;
    static string connection = @"Data Source=DESKTOP-0H8DPB2\SQLEXPRESS01;Initial Catalog=diet_plan;Integrated Security=True; ";
    SqlConnection con = new SqlConnection(connection);
    DataSet ds = new DataSet();
    

    protected void Page_Load(object sender, EventArgs e)
    {
       // BindGrid();

           
         if (!IsPostBack)
        {

            
            Binddis();
            BindGrid();
            
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

    protected void btnUpload_Click(object sender, EventArgs e)
    {
         int length = FileUpload.PostedFile.ContentLength;

            byte[] imgbyte = new byte[length];

            HttpPostedFile image = FileUpload.PostedFile;

            image.InputStream.Read(imgbyte, 0, length);
            string ImgName = txtImageName.Text;
            string nutrition = txtnut.Text;

            disease.Items.Insert(0, new ListItem("Please Select One", "0")); 
        string dis  = disease.SelectedIndex.ToString();
        int a= Convert.ToInt32(dis);

           
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO fruit (fruit_name,Image,disease_id,nutritional_facts) VALUES (@ImgName,@photo," + a + ",@nutrition )", con);
            cmd.Parameters.Add("@ImgName", SqlDbType.VarChar, 50).Value = ImgName;
            cmd.Parameters.Add("@photo", SqlDbType.Image).Value = imgbyte;
            cmd.Parameters.Add("@nutrition", SqlDbType.VarChar, 5000).Value = nutrition;

           try{
            int count = cmd.ExecuteNonQuery();
            con.Close();

            if (count == 1)
            {
                BindGrid();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertmessage", "javascript:alert('" + ImgName + " PhotoID Information Inserted successfully')", true);
            }
            txtImageName.Text = string.Empty;
            txtnut.Text = string.Empty;
        }
   
catch (Exception ex)
           { Response.Write(ex.Message +"Please Unique fruit name for unique diseases");}
    }
    protected void gvImage_RowEditing(object sender, GridViewEditEventArgs e)
    {
        gvImage.EditIndex = e.NewEditIndex;
        BindGrid();

    }  

      // update event    
    protected void gvImage_RowUpdating(object sender, GridViewUpdateEventArgs e)  
    {
        string query = "";
        Label lbl = (Label)gvImage.Rows[e.RowIndex].FindControl("lblId");

 

        TextBox name = (TextBox)gvImage.Rows[e.RowIndex].FindControl("txt_Name");
        TextBox nut = (TextBox)gvImage.Rows[e.RowIndex].FindControl("txt_nuti");

        DropDownList d = (DropDownList)gvImage.Rows[e.RowIndex].FindControl("DropDownList1");
        d.Items.Insert(0, new ListItem("Select Disease", "NA"));
        string dis = d.SelectedIndex.ToString();
        int a = Convert.ToInt32(dis);
        
        FileUpload FileUpload1 = (FileUpload)gvImage.Rows[e.RowIndex].FindControl("FileUpload1");

       
      
        con.Open();
        try
        {
            if (FileUpload1.HasFile)
            {

                Stream stream = FileUpload1.PostedFile.InputStream;
                byte[] photo = new byte[FileUpload1.PostedFile.ContentLength];
                stream.Read(photo, 0, FileUpload1.PostedFile.ContentLength);
                stream.Close();

                query = "update fruit set fruit_name='" + name.Text + "',nutritional_facts='" + nut.Text + "',Image=@image  ,disease_id='" + a + "' where fruit_id='" + lbl.Text + "'";
                SqlCommand cmd3 = new SqlCommand(query, con);
                cmd3.Parameters.AddWithValue("@image", photo);


                cmd3.ExecuteNonQuery();
                con.Close();

            }
            else
            {
                query = "update fruit set fruit_name='" + name.Text + "',nutritional_facts='" + nut.Text + "',disease_id='" + a + "' where fruit_id='" + lbl.Text + "'";
                SqlCommand cmd3 = new SqlCommand(query, con);
                cmd3.ExecuteNonQuery();
                con.Close();
            }

        }

        catch(Exception ex) {
     
            
            Response.Write(ex.Message + "Please Unique fruit name for unique diseases"); }
        
        
            gvImage.EditIndex = -1;
         BindGrid();

        

        
        
}
    // cancel edit event    
    protected void gvImage_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)  
    {  
        gvImage.EditIndex = -1;
        BindGrid();
    }  
    //delete event    
    protected void gvImage_RowDeleting(object sender, GridViewDeleteEventArgs e)  
    {  
        GridViewRow row = (GridViewRow) gvImage.Rows[e.RowIndex];  
        Label lbldeleteid = (Label) row.FindControl("lblImgId");  
        Label lblDeleteImageName = (Label) row.FindControl("lblImageName");
    
        con.Open();
        SqlCommand cmd = new SqlCommand("delete FROM fruit where fruit_id='" + Convert.ToInt32(gvImage.DataKeys[e.RowIndex].Value.ToString()) + "'", con);  
        cmd.ExecuteNonQuery();  
        con.Close();

        BindGrid();
    }  
    /// <summary>  
    /// This function is used to delete image from folder when deleting in gridview.  
    /// </summary>  
    /// <param name="imagename">image name</param>  
   
}
   





