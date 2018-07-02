<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="banner">
        <div class="container">
            <h1>
                100% Free Fully Responsive HTML5 Bootstrap Template.
                <br />
                Grab it now for free!
            </h1>
            <h3>
                This is a Fully Responsive and Modern App Landing Page Template.</h3>
        </div>
    </div>
    <div class="padding100" id="blog">
        <div class="container">
            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s">
                        <span><strong>B</strong>log</span></h2>
                    <!--  Heading Style - 1              
               <h1>Main Title</h1>
               <p class="subtitle fancy"><span>A fancy subtitle</span></p>
               -->
                    <!-- Heading Style - 2 -->
                    <!--  <h2 class="background">Blog</h2>-->
                    <!-- <h2 class="background"><span>Line-behind title</span></h2>
               <h2 class="background double"><span>Double-lined title</span></h2>
               <h2 class="no-background"><span>Line-behind title <b>(no bg)</b></span></h2>
               <h2 class="no-span">Line-behind title <b>(no span/no bg)</b></h2> -->
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-responsive animated wow fadeInUp" data-wow-delay="0.2s" src="img/700x300.jpg"
                            alt="">
                    </a>
                </div>
                <div class="col-md-5 animated wow fadeInRight" data-wow-delay="0.4s">
                    <h3>
                        <strong>Our Projects</strong></h3>
                    <h4>
                        NewBingo</h4>
                    <p>
                        Akshara is a library to buy Bootstrap themes and templates for your business need.
                        Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                        an update when new items arrive!</p>
                    <a class="btn btn-success" href="#">View Project <span class="glyphicon glyphicon-chevron-right">
                    </span></a>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-responsive animated wow fadeInUp" data-wow-delay="0.2s" src="img/700x300.jpg"
                            alt="">
                    </a>
                </div>
                <div class="col-md-5 animated wow fadeInRight" data-wow-delay="0.4s">
                    <h3>
                        <strong>Our Projects</strong></h3>
                    <h4>
                        NewBingo</h4>
                    <p>
                        Akshara is a library to buy Bootstrap themes and templates for your business need.
                        Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                        an update when new items arrive!</p>
                    <a class="btn btn-success" href="#">View Project <span class="glyphicon glyphicon-chevron-right">
                    </span></a>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-7">
                    <a href="#">
                        <img class="img-responsive animated wow fadeInUp" data-wow-delay="0.2s" src="img/700x300.jpg"
                            alt="">
                    </a>
                </div>
                <div class="col-md-5 animated wow fadeInRight" data-wow-delay="0.4s">
                    <h3>
                        <strong>Our Projects</strong></h3>
                    <h4>
                        NewBingo</h4>
                    <p>
                        Akshara is a library to buy Bootstrap themes and templates for your business need.
                        Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                        an update when new items arrive!</p>
                    <a class="btn btn-success" href="#">View Project <span class="glyphicon glyphicon-chevron-right">
                    </span></a>
                </div>
            </div>
            <!-- /.row -->
        </div>
    </div>
    <!-- /.container -->
    <div class="modal fade" id="image-gallery" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title" id="image-gallery-title">
                    </h4>
                </div>
                <div class="modal-body">
                    <img id="image-gallery-image" class="img-responsive" src="">
                </div>
                <div class="modal-footer">
                    <div class="col-md-2">
                        <button type="button" class="btn btn-primary" id="show-previous-image">
                            Previous</button>
                    </div>
                    <div class="col-md-8 text-justify" id="image-gallery-caption">
                        This text will be overwritten by jQuery
                    </div>
                    <div class="col-md-2">
                        <button type="button" id="show-next-image" class="btn btn-default">
                            Next</button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

