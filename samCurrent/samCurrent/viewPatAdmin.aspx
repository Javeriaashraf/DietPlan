<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="viewPatAdmin.aspx.cs" Inherits="viewPatAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Patients Profile</h1>
                </div>
<asp:GridView runat="server" ID="gvImage" 
        class="table table-striped table-bordered table-hover" 
        AutoGenerateColumns="False" AllowPaging="True" 
        OnPageIndexChanging="gvImage_PageIndexChanging" 
        DataKeyNames="Pa_id" 
        CellPadding="4" 
        
        HeaderStyle-BackColor="Tomato" PageSize="100">
<Columns>

        

  

     <asp:TemplateField HeaderText="user name">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("user_name") %>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                         <asp:TemplateField HeaderText="disease_id1">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("disease_id1") %>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="disease_id2">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("disease_id2") %>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                      <asp:TemplateField HeaderText="disease_id">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("disease_id3") %>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      




                  <asp:TemplateField HeaderText="BMI">
                        <ItemTemplate>
                            <asp:Label ID="lblId" runat="server" Text='<%#Eval("BMI") %>'>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      


    
    <asp:TemplateField HeaderText="Status" HeaderStyle-Width="200px">  
                        <ItemTemplate>  
                            <asp:Label ID="lblImageName" runat="server" Text='<%# Eval("status") %>'></asp:Label>  
                        </ItemTemplate>  
                     
                    </asp:TemplateField>  
 
 
 <asp:TemplateField HeaderText="ideal weight" HeaderStyle-Width="200px">  
                        <ItemTemplate>  
                            <asp:Label ID="lblImageName" runat="server" Text='<%# Eval("idealweight") %>'></asp:Label>  
                        </ItemTemplate>  
                     
                    </asp:TemplateField>  

 <asp:TemplateField HeaderText="CAL_TO_MAINTAIN" HeaderStyle-Width="200px">  
                        <ItemTemplate>  
                            <asp:Label ID="lblImageName" runat="server" Text='<%# Eval("cal_to_maintain") %>'></asp:Label>  
                        </ItemTemplate>  
                     
                    </asp:TemplateField>  
                    <asp:TemplateField HeaderText="AGE" HeaderStyle-Width="200px">  
                        <ItemTemplate>  
                            <asp:Label ID="lblImageName" runat="server" Text='<%# Eval("age") %>'></asp:Label>  
                        </ItemTemplate>  
                     
                    </asp:TemplateField>  
  
                    <asp:TemplateField HeaderText="Height" HeaderStyle-Width="200px">  
                        <ItemTemplate>  
                            <asp:Label ID="lblImageName" runat="server" Text='<%# Eval("Hieght") %>'></asp:Label>  
                        </ItemTemplate>  
                     
                    </asp:TemplateField>  


                     <asp:TemplateField HeaderText="Wieght" HeaderStyle-Width="200px">  
                        <ItemTemplate>  
                            <asp:Label ID="lblImageName" runat="server" Text='<%# Eval("Weight") %>'></asp:Label>  
                        </ItemTemplate>  
                     
                    </asp:TemplateField>  
  
</Columns>

<HeaderStyle BackColor="Tomato"></HeaderStyle>
</asp:GridView>
</div>
 </div>
 </div>
 </div>

</asp:Content>

