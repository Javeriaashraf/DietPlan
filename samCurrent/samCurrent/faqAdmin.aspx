<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="faqAdmin.aspx.cs" Inherits="faqAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Setup FAQ</h1>
                </div>
                <!-- /.col-lg-12 -->

            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-4">

                    <asp:Label ID="lblmsg" Text="" runat="server" />
                    <br />
                    <div class="form-group">
                        
                        
                         <label class="control-label" for="txtCode">Category:</label>
                         <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                     <asp:ListItem Value="Weight Loss" >Weight Loss</asp:ListItem>
                    <asp:ListItem Value="Dietary" >Dietary</asp:ListItem>
                    <asp:ListItem Value="General" >General</asp:ListItem>
                    <asp:ListItem Value="Nutrition" >Nutrition</asp:ListItem>
                    <asp:ListItem Value="Management" >Management</asp:ListItem>
                   
                                      </asp:RadioButtonList>
                       
                      

                        <br />

                          <label class="control-label" for="txtmes"> Questions:</label>
                        <asp:TextBox CssClass="form-control" ID="TextBox1" required="required" 
                             placeholder="Enter Question" runat="server" TextMode="MultiLine" />
                      
                       
                        <br/>

                        
                       
                       

                          <label class="control-label" for="txtmes"> Answer:</label>
                        <asp:TextBox CssClass="form-control" ID="txtitem" required="required" 
                             placeholder="Enter Answer" runat="server" TextMode="MultiLine" />
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
                                          <asp:TemplateField HeaderText="ID">
                                            <ItemTemplate>
                                          <asp:Label ID="lblid" runat="server" Text='<%# Bind("fa_id")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                      <asp:TemplateField HeaderText="Category">
                                            <ItemTemplate>
                                          <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("category")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Question">
                                            <ItemTemplate>
                                                <asp:Label ID="lblque" runat="server" Text='<%# Bind("question")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                          <asp:TemplateField HeaderText="Answer">
                                            <ItemTemplate>
                                                <asp:Label ID="lblans" runat="server" Text='<%# Bind("answer")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        
                                           
                                        <%--        <asp:TemplateField HeaderText="ACTIVE">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblActive" runat="server" Text='<%# Bind("Is_Active")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>
                                        <asp:TemplateField HeaderText="EDIT">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CommandName="Edit" CommandArgument='<%# Eval("fa_id")%>' Text="EDIT" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="DELETE">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton2" OnClientClick="return confirm('Do you want to delete This Record')" CommandName="Delete" CommandArgument='<%# Eval("fa_id")%>' Text="DELETE" runat="server" />
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

