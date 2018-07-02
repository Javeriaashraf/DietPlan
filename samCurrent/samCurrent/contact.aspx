<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


 <div class="item active" >             
 <img src="Assets/img/banner.png"  width="1500"  alt="Chania" class="img-responsive"/>
            </div>

    <div class="contact padding50">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div id="main-contact-form" class="contact-form">
                        <!-- form -->
                        <form role="form" action="contact.aspx" method="post">
                        <div class="col-xs-11">
                            <label >
                                Name:</label>
                            <%--<input type="text" name="name" placeholder="Name..." class="contact-name form-control"
                                id="contact-name">--%>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="TextBox1" ErrorMessage="Please Enter Name" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="col-xs-11">
                            <label>
                                Email:</label>
                            <%--<input type="text" name="email" placeholder="Email..." class="contact-email form-control"
                                id="contact-email">--%>
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="Please Enter Email" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="Email_id Invalid" ForeColor="Red" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Email_id Invalid</asp:RegularExpressionValidator>
                        </div>
                        <div class="col-xs-11">
                            <label >
                                Subject:</label>
                            <%--<input type="text" name="subject" placeholder="Subject..." class="contact-subject form-control"
                                id="contact-subject">--%>
                        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Subject"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                ControlToValidate="TextBox3" ErrorMessage="Please Enter Subject" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                        <div class="col-xs-11">
                            <label >
                                Message:</label>
                            <%--<textarea name="message" placeholder="Message..." class="contact-message form-control"
                                id="contact-message" style="height: 150px"></textarea>--%>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" class="form-control" placeholder="Message"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                ControlToValidate="TextBox4" ErrorMessage="Please Enter Message" 
                                ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                        <%--<button type="submit" class="btn btn-success">
                            Send message</button>--%>
                      <div class="col-xs-11">
                        <asp:Button ID="Button1" runat="server" Text="Send Message" 
                            onclick="Button1_Click" class="btn btn-success" />
                            </div>
                        </form>
                        <!-- ./form -->
                    </div>
                </div>
                <div class="col-md-4">
                </div>
            </div>
        </div>
    </div>

</asp:Content>

