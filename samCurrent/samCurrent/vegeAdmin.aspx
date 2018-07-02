<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="vegeAdmin.aspx.cs" Inherits="vegeAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
.Gridview
{
font-family:Verdana;
font-size:10pt;
font-weight:normal;
color:black;
width:500px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div>     
     
      <script type="text/javascript">
          function previewFile() {

              var ImageFile = document.querySelector('#<%=FileUpload.ClientID %>').files[0];
              var reader = new FileReader();



              if (ImageFile) {
                  reader.readAsDataURL(ImageFile);
              } else {
                  ImagePreview.src = "";
              }
          }
     
    
    </script>
    </div>
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Setup Vegetables</h1>
            </div>
   
<table>
<tr>
<td>
Upload Image:
</td>
<td>
<asp:FileUpload ID="FileUpload" runat="server" />
</td>
</tr>


<tr>
<td>
Vegetable Name:
</td>
<td>
<asp:TextBox ID="txtImageName" runat="server"></asp:TextBox>
</td>
</tr>


<tr>
<td>
Nutritional Facts:
</td>
<td>
<asp:TextBox ID="txtnut" runat="server" TextMode="MultiLine"></asp:TextBox>
</td>
</tr>


<tr>
<td>
Disease Name:
</td>
<td>

    <asp:DropDownList ID="disease" runat="server">
    </asp:DropDownList>
</td>
</tr>


<tr>
<td>
    &nbsp;</td>
<td>
<asp:Button ID="btnUpload" runat="server" Text="Submit" onclick="btnUpload_Click" />
</td>
</tr>


</table>
</div>
<div>
<asp:GridView runat="server" ID="gvImage" 
        class="table table-striped table-bordered table-hover" 
        AutoGenerateColumns="False" AllowPaging="True" 
        OnPageIndexChanging="gvImage_PageIndexChanging" 
        OnRowCancelingEdit="gvImage_RowCancelingEdit" DataKeyNames="vegetable_id" 
        CellPadding="4" OnRowEditing="gvImage_RowEditing" 
        OnRowUpdating="gvImage_RowUpdating" OnRowDeleting="gvImage_RowDeleting" 
        HeaderStyle-BackColor="Tomato" PageSize="100">
<Columns>

         <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("vegetable_id") %>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
<%--<asp:BoundField HeaderText = "Fruit Name" DataField="fruit_name" />--%>
  
   <asp:TemplateField HeaderText="Vegetable Name" HeaderStyle-Width="200px">  
                        <ItemTemplate>  
                            <asp:Label ID="lblImageName" runat="server" Text='<%# Eval("vegetable_name") %>'></asp:Label>  
                        </ItemTemplate>  
                        <EditItemTemplate>  
                            <asp:TextBox ID="txt_Name" runat="server" Text='<%# Eval("vegetable_name") %>'></asp:TextBox>  
                        </EditItemTemplate>  
                    </asp:TemplateField>  

                      <asp:TemplateField HeaderText="Nutrtional Facts" HeaderStyle-Width="200px">  
                        <ItemTemplate>  
                            <asp:Label ID="lblImageNam" runat="server" Text='<%# Eval("nutritional_facts") %>'></asp:Label>  
                        </ItemTemplate>  
                        <EditItemTemplate>  
                            <asp:TextBox ID="txt_nuti" runat="server" Text='<%# Eval("nutritional_facts") %>' TextMode="MultiLine"></asp:TextBox>  
                        </EditItemTemplate>  
                    </asp:TemplateField>  

<asp:TemplateField HeaderText="Disease Name">
    <EditItemTemplate>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="disease_name" 
            DataValueField="disease_id" SelectedValue='<%# Bind("disease_id") %>'>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=HAIER;Initial Catalog=diet_plan;Integrated Security=True" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [disease]">
        </asp:SqlDataSource>
    </EditItemTemplate>
<ItemTemplate>
    <asp:Label ID="Label1" runat="server" Text='<%# Bind("disease_name") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>


                 

<asp:TemplateField HeaderText="Image">
<ItemTemplate>
<asp:Image ID="Image1" runat="server" ImageUrl='<%# "Handler2.ashx?ImID="+ Eval("vegetable_id") %>' Height="150px" Width="150px"/>
</ItemTemplate>
<EditItemTemplate>  
             <asp:Image ID="img_user" runat="server" ImageUrl='<%#  Eval("Image")  %>' Height="80px" Width="100px" /><br />  
              <asp:FileUpload ID="FileUpload1" runat="server" />  
             </EditItemTemplate>  
            
</asp:TemplateField>
 
            

            


 <asp:TemplateField HeaderStyle-Width="150px">  
                <ItemTemplate>  
                    <asp:LinkButton ID="LkB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                    <asp:LinkButton ID="LkB11" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                </ItemTemplate>  
                <EditItemTemplate>  
                    <asp:LinkButton ID="LkB2" runat="server" CommandName="Update">Update</asp:LinkButton>  
                    <asp:LinkButton ID="LkB3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>  
                </EditItemTemplate>  
                <HeaderStyle Width="150px" />
            </asp:TemplateField>  
</Columns>

<HeaderStyle BackColor="Tomato"></HeaderStyle>
</asp:GridView>
</div>


</div>
</div>


</asp:Content>

