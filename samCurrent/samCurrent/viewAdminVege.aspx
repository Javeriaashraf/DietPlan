<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="viewAdminVege.aspx.cs" Inherits="viewAdminVege" %>

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
<div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Setup Vegetables</h1>
                </div>
<asp:GridView runat="server" ID="gvImage" 
        class="table table-striped table-bordered table-hover" 
        AutoGenerateColumns="False" AllowPaging="True" 
        OnPageIndexChanging="gvImage_PageIndexChanging" 
        DataKeyNames="vegetable_id" 
        CellPadding="4" 
        
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
                          </asp:TemplateField>  
                          
                         <asp:TemplateField HeaderText="Nutritional Facts" HeaderStyle-Width="200px">  
                        <ItemTemplate>  
                            <asp:Label ID="lblImageNam" runat="server" Text='<%# Eval("nutritional_facts") %>'></asp:Label>  
                        </ItemTemplate>  
                       <%-- <EditItemTemplate>  
                            <asp:TextBox ID="txt_Name" runat="server" Text='<%# Eval("vegetable_name") %>'></asp:TextBox>  
                        </EditItemTemplate>--%>  
                    </asp:TemplateField>  

<asp:TemplateField HeaderText="Disease Name">
  <%--  <EditItemTemplate>
        <asp:DropDownList ID="DropDownList1" runat="server" 
            DataSourceID="SqlDataSource2" DataTextField="disease_name" 
            DataValueField="disease_id" SelectedValue='<%# Bind("disease_id") %>'>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="Data Source=HAIER;Initial Catalog=diet_plan;Integrated Security=True" 
            ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [disease]">
        </asp:SqlDataSource>
    </EditItemTemplate>--%>
<ItemTemplate>
    <asp:Label ID="Label1" runat="server" Text='<%# Bind("disease_name") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>


                 

<asp:TemplateField HeaderText="Image">
<ItemTemplate>
<asp:Image ID="Image1" runat="server" ImageUrl='<%# "Handler2.ashx?ImID="+ Eval("vegetable_id") %>' Height="150px" Width="150px"/>
</ItemTemplate>
<%--<EditItemTemplate>  
             <asp:Image ID="img_user" runat="server" ImageUrl='<%#  Eval("Image")  %>' Height="80px" Width="100px" /><br />  
              <asp:FileUpload ID="FileUpload1" runat="server" />  
             </EditItemTemplate> --%> 
            
</asp:TemplateField>
 
            

            


<%-- <asp:TemplateField HeaderStyle-Width="150px">  
                <ItemTemplate>  
                    <asp:LinkButton ID="LkB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                    <asp:LinkButton ID="LkB11" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                </ItemTemplate>  
                <EditItemTemplate>  
                    <asp:LinkButton ID="LkB2" runat="server" CommandName="Update">Update</asp:LinkButton>  
                    <asp:LinkButton ID="LkB3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>  
                </EditItemTemplate>  
                <HeaderStyle Width="150px" />
            </asp:TemplateField>  --%>
</Columns>

<HeaderStyle BackColor="Tomato"></HeaderStyle>
</asp:GridView>
</div>
 </div>
 </div>
 </div>

</asp:Content>


