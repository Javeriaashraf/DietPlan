<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




<div class="padding100" >
        <div class="container" >
             <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-heading panel-heading-custom">
                        <div class="panel-title">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Sign In</div>
                    </div>
                    <div style="padding-top: 30px" class="panel-body">
                        <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12">
                        </div>
                        <div id="loginform" class="form-horizontal" role="form">
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox runat="server" ID="username" CssClass="form-control" placeholder="username"></asp:TextBox>
                                </div>
                              
                           

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox runat="server" ID="password" CssClass="form-control" placeholder="password"
                                    TextMode="Password"></asp:TextBox>
                            </div>
                                  <%--<div class="input-group">
                                <div class="checkbox">
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" />
                                </div>
                            </div>--%>
                            <div class="input-group"  >
                            <div class="col-md-2"></div>
                             <asp:CheckBox ID="CheckBox1" runat="server" />
                            
                            <asp:Label ID="Label1" style="margin-bottom: 25px"  runat="server" CssClass="control-label" Text="Remember me"></asp:Label>
                            
                            </div>
                            <div class="input-group"  >
                             <asp:Label ID="Label2" runat="server" CssClass="control-label" >
                                <a href="forgotpassword.aspx" onclick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Forgot Password </a></asp:Label>
                            </div>

                            <div style="margin-top: 10px" class="form-group">
                                <!-- Button -->
                               
                                <div class="col-sm-12 controls">
                               <center>
                                    <asp:Button ID="Button1" runat="server"  Text="Login" 
                                        CssClass="btn btn-success" onclick="Button1_Click" />
                                </center>
                                
                                </div>

                               
                            </div>

                                 <div class="form-group">
                                <div class="col-md-2"></div>
                                <div class="col-md-6">
                                    <asp:Label ID="lblerror" runat="server"  CssClass="text-danger"></asp:Label>
                                
                                </div>
                                
                                </div>


                            <div class="form-group">
                                <div class="col-md-12 control">
                                   
                                        Don't have an account! <a href="sign.aspx" onclick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Sign Up Here </a>

                                    
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
    </div>
    </div>
    
</asp:Content>

