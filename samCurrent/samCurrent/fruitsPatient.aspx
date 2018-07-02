<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPateint.master" AutoEventWireup="true" CodeFile="fruitsPatient.aspx.cs" Inherits="ruitsPatient" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> Fruits</h1>
                </div>

                <asp:GridView ID="GridView1" 
        class="table table-striped table-bordered table-hover" 
        AutoGenerateColumns="False" AllowPaging="True" 
        OnPageIndexChanging="gvImage_PageIndexChanging" 
        DataKeyNames="fruit_id" 
        CellPadding="4" HeaderStyle-BackColor="Tomato" PageSize="100" runat="server">
              
             
<Columns>

        <%-- <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("fruit_id") %>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
<%--<asp:BoundField HeaderText = "Fruit Name" DataField="fruit_name" />--%>
  
   <asp:TemplateField HeaderText="Fruit Name" HeaderStyle-Width="200px">  
                        <ItemTemplate>  
                            <asp:Label ID="lblImageName" runat="server" Text='<%# Eval("fruit_name") %>'></asp:Label>  
                        </ItemTemplate>  
                      
                    </asp:TemplateField>  

<%--<asp:TemplateField HeaderText="Disease Name">
    
<ItemTemplate>
    <asp:Label ID="Label1" runat="server" Text='<%# Bind("disease_name") %>'></asp:Label>
</ItemTemplate>
</asp:TemplateField>
--%>

                 

<asp:TemplateField HeaderText="Image">
<ItemTemplate>
<asp:Image ID="Image1" runat="server" ImageUrl='<%# "Handler.ashx?ImID="+ Eval("fruit_id") %>' Height="150px" Width="150px"/>
</ItemTemplate>

</asp:TemplateField>
 
            

            


 <%--<asp:TemplateField HeaderStyle-Width="150px">  
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

                </div></div></div></div>


</asp:Content>

