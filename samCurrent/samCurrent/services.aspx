<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="banner">
        <div class="container">
            <h1>
                Weekly Diet Plans
                <br />
               for Cholestrol, BP and Diabetes.
            </h1>
            <h3> Eat well... Live well...
              </h3>
        </div>
    </div>
    <!-- Service Section -->
    <section id="services" class="padding50">
        <div class="container">
            <div class="row">
                <h2 class="background double animated wow fadeInUp" data-wow-delay="0.2s"><span><strong>F</strong>eatures</span></h2>
            </div>
            <!-- ./ end row -->
            <div class="row">
                <div class="col-md-4">
                  <a href="CholestrolReciepe.aspx">
                    <i class="fa fa-pie-chart animated wow fadeInDown"></a></i>
                    <div class="sc-inner">
                        <h4>
                           Cholestrol</h4>
                        <p>
                            Weekly diet plan for Cholestrol patients</p>
                    </div>
                </div>
                <!-- ./ end service box -->
              <%--  <div class="col-md-4">
                    <i class="fa fa-support animated wow fadeInDown" data-wow-delay="0.2s"></i>
                    <div class="sc-inner">
                        <h4>
                            Quick Support</h4>
                        <p>
                            Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                            an update when new items arrive!</p>
                    </div>
                </div>
              --%>  <!-- ./ end service box -->
                <div class="col-md-4">
                    <a href="BPhigh.aspx">
                    <i class="fa fa-pie-chart animated wow fadeInDown" data-wow-delay="0.4s"></a></i>
                    <div class="sc-inner">
                        <h4>
                           Blood Pressure</h4>
                        <p>
                            Weekly diet plan for Blood Pressure patients</p>
                    </div>
                </div>
                <!-- ./ end service box -->
            </div>
            <!-- ./ end row -->
            <div class="row">
                <div class="col-md-4">
                <a href="trying1.aspx">
                    <i class="fa fa-pie-chart animated wow fadeInUp" data-wow-delay="0.6s"></a></i>
                    <div class="sc-inner">
                        <h4>
                            Diabetes</h4>
                        <p>
                             Weekly diet plan for Diabetes patients</p>
                    </div>
                </div>
                <!-- ./ end service box -->
                <%--<div class="col-md-4">
                    <i class="fa fa-puzzle-piece animated wow fadeInUp" data-wow-delay="0.8s"></i>
                    <div class="sc-inner">
                        <h4>
                            Easy update</h4>
                        <p>
                            Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                            an update when new items arrive!</p>
                    </div>
                </div>
                --%><!-- ./ end service box -->
                <div class="col-md-4">
                <a href="GeneralReciepe.aspx">
                    <i class="fa fa-pie-chart animated wow fadeInUp" data-wow-delay="0.10s"></a></i>
                    <div class="sc-inner">
                        <h4>
                           General Diet Plan</h4>
                        <p>
                            General Diet plans for people who dont have any medical problems</p>
                    </div>
                </div>
                <!-- ./ end service box -->
            </div>
            <!-- ./ end row -->
        </div>
        <div class="clearfix">
        </div>
    </section>
    <!-- ./ End Service Section -->
    <!-- FAQ Section -->
    <section id="faq" class="faq-content padding100">
        <div class="container">
            <div class="row">
                <div class="section-title col-sm-8 col-sm-offset-2 col-md-8 col-md-offset-2 col-lg-8 col-lg-offset-2 ">
                    <h2>
                        Questions For <span class="common">' FREQUENTLY ASKED' </span>
                    </h2>                   
                </div>
            </div>
            <!-- ./end row -->
            <div class="row">
                <div class="faq-wrap">
                    <div class="col-md-6">
                        <div class="panel-group" id="accordion">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><i class="fa fa-comments-o">
                                        </i>1. What is Lorem Ipsum? </a>
                                    </h4>
                                </div>
                                <div id="collapseOne" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        Akshara is a library to buy Bootstrap themes and templates for your business need.
                                        Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                                        an update when new items arrive!
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo"><i class="fa fa-comments-o">
                                        </i>2. Why do we use it? </a>
                                    </h4>
                                </div>
                                <div id="collapseTwo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Akshara is a library to buy Bootstrap themes and templates for your business need.
                                        Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                                        an update when new items arrive!
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree"><i class="fa fa-comments-o">
                                        </i>3. Where does it come from ? </a>
                                    </h4>
                                </div>
                                <div id="collapseThree" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        Akshara is a library to buy Bootstrap themes and templates for your business need.
                                        Want more Bootstrap themes & templates? Subscribe to our mailing list to receive
                                        an update when new items arrive!
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 video-wrap">
                        <div class="video">
                            <iframe height="300" src="http://player.vimeo.com/video/92141950?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff&amp;autoplay=0"
                                width="500"></iframe>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>
                <!-- Faq wrap content end -->
            </div>
        </div>
         </section>

</asp:Content>

