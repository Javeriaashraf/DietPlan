<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="dietAdmin.aspx.cs" Inherits="dietAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Setup Diet Plan</h1>
                </div>
                <!-- /.col-lg-12 -->

            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-4">

                    <asp:Label ID="lblmsg" Text="" runat="server" />
                    <br />
                    <div class="form-group">
                        
                        
                         <label class="control-label" for="txtCode">Diet Time:</label>
                         
                      

                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                         <asp:ListItem Value="Breakfast" >Breakfast</asp:ListItem>
                    <asp:ListItem Value="Lunch" >Lunch</asp:ListItem>
                    <asp:ListItem Value="Dinner" >Dinner</asp:ListItem>
                                      </asp:RadioButtonList>
                        <br />

                          <label class="control-label" for="txtsub"> Disease:</label>
                        <asp:ListBox ID="disease" runat="server"></asp:ListBox>
                       
                        <br/>

                        
                          <label class="control-label" for="txtsub"> BMI:</label>
                        <asp:RadioButtonList ID="BMI" runat="server">
                     
                   
                            
                    <asp:ListItem Value="1">0-18.4</asp:ListItem>
                    <asp:ListItem Value="2" >18.5-24.9</asp:ListItem>
                    <asp:ListItem Value="3" >25-29.9</asp:ListItem>
                    <asp:ListItem Value="4">30-onwards</asp:ListItem>
                </asp:RadioButtonList>
                       
                        <br/>

                          <label class="control-label" for="txtmes"> Diet Items:</label>
                        <asp:TextBox CssClass="form-control" ID="txtitem" required="required" 
                             placeholder="Enter Diet" runat="server" TextMode="MultiLine" />
                        <br />

                          
                    </div>

                    <asp:Button Text="Submit" ID="btnSubmit" type="submit" OnClick="btnInsert_Click" class="btn btn-primary" runat="server" />
                    <asp:Button Text="Update" ID="Button1" OnClick="btnUpdate_Click"  type="submit" class="btn btn-primary" runat="server" />
                    
                    <asp:Button Text="Cancel" ID="btnCancel"  type="submit" class="btn btn-primary" 
                        runat="server" onclick="btnCancel_Click" />

                    <br />
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                       
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <asp:GridView class="table table-striped table-bordered table-hover" ID="gridContact"   OnRowCommand="gridTown_RowCommand" OnRowDeleting="gridTown_RowDeleting" OnRowEditing="gridTown_RowEditing" AutoGenerateColumns="false" runat="server">
                                    <Columns>
                                        

                                      <asp:TemplateField HeaderText="Diet Time">
                                            <ItemTemplate>
                                          <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("diet_time")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Disease Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lbdis" runat="server" Text='<%# Bind("disease_name")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        
                                            <asp:TemplateField HeaderText="Diet Items">
                                            <ItemTemplate>
                                                <asp:Label ID="lbldie" runat="server" Text='<%# Bind("diet_items")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                             <asp:TemplateField HeaderText="BMI LOWER LIMT">
                                            <ItemTemplate>
                                                <asp:Label ID="lbllowe" runat="server" Text='<%# Bind("BMI_LowerLimit")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="BMI UPPER LIMIT">
                                            <ItemTemplate>
                                                <asp:Label ID="lblupp" runat="server" Text='<%# Bind("BMI_UpperLimit")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                       
                                         
                                           
                                             
                                       
                                        <%--        <asp:TemplateField HeaderText="ACTIVE">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblActive" runat="server" Text='<%# Bind("Is_Active")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>
                                        <asp:TemplateField HeaderText="EDIT">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CommandName="Edit" CommandArgument='<%# Eval("diet_id")%>' Text="EDIT" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="DELETE">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton2" OnClientClick="return confirm('Do you want to delete This Record')" CommandName="Delete" CommandArgument='<%# Eval("diet_id")%>' Text="DELETE" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    
                                        
                                    </Columns>
                                </asp:GridView>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container-fluid -->
    </div>




</asp:Content>

