<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="contactAdmin.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Setup Contact</h1>
            </div>
            <!-- /.col-lg-12 -->

        </div>
            <!-- /.row -->
            <div class="row"> 
                <div class="col-lg-4">

                    <asp:Label ID="lblmsg" Text="" runat="server" />
                    <br />
                    <div class="form-group">
                        
                        <label class="control-label" for="txtTown"> Name</label>
                        <asp:TextBox CssClass="form-control" ID="txtName" required="required" placeholder="Enter Name here" runat="server" />
                        <br />
                         <label class="control-label" for="txtCode">Email Address</label>
                        <asp:TextBox CssClass="form-control" ID="txtemail" required="required" placeholder="Enter Email Address here" runat="server" />
                        <br />

                          <label class="control-label" for="txtsub"> Subject</label>
                        <asp:TextBox CssClass="form-control" ID="TextBox1" required="required" placeholder="Enter Subject here" runat="server" />
                        <br />

                          <label class="control-label" for="txtmes"> Message</label>
                        <asp:TextBox CssClass="form-control" ID="TextBox2" required="required" placeholder="Enter Message here" runat="server" TextMode="MultiLine" />
                        <br />

                          <label class="control-label" for="txtrep"> Replied by</label>
                        <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Enter who replied here" runat="server" />
                        <br />

                        
                          <label class="control-label" for="txtstat">Status</label>
                        <asp:TextBox CssClass="form-control" ID="TextBox4"  placeholder="Enter Yes/No" runat="server" />
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
                                <asp:GridView class="table table-striped table-bordered table-hover"  ID="gridContact"   OnRowCommand="gridTown_RowCommand" OnRowDeleting="gridTown_RowDeleting" OnRowEditing="gridTown_RowEditing" AutoGenerateColumns="false" runat="server">
                                    <Columns>
                                        

                                        <asp:TemplateField HeaderText="Name">
                                            <ItemTemplate>
                                                <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                         <asp:TemplateField HeaderText="Email Address">
                                            <ItemTemplate>
                                                <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("email")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Subject">
                                            <ItemTemplate>
                                                <asp:Label ID="lblsub" runat="server" Text='<%# Bind("Subject")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Message">
                                            <ItemTemplate>
                                                <asp:Label ID="lblMess" runat="server" Text='<%# Bind("Message")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Replied_by">
                                            <ItemTemplate>
                                                <asp:Label ID="lblReply" runat="server" Text='<%# Bind("Replied_by")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                         <asp:TemplateField HeaderText="Status">
                                            <ItemTemplate>
                                                <asp:Label ID="lblstat" runat="server" Text='<%# Bind("Status")%>'></asp:Label>
                                            </ItemTemplate>
                                        </asp:TemplateField>


                                           
                                             
                                       
                                        <%--        <asp:TemplateField HeaderText="ACTIVE">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblActive" runat="server" Text='<%# Bind("Is_Active")%>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>--%>
                                        <asp:TemplateField HeaderText="EDIT">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton1" CommandName="Edit" CommandArgument='<%# Eval("contact_id")%>' Text="EDIT" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="DELETE">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="LinkButton2" OnClientClick="return confirm('Do you want to delete This Record')" CommandName="Delete" CommandArgument='<%# Eval("contact_id")%>' Text="DELETE" runat="server" />
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
    <!-- /#page-wrapper -->
</asp:Content>


