<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BP.aspx.cs" Inherits="BP" %>

<asp:Content ID="Content1"  ContentPlaceHolderID="head" Runat="Server">

 <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width" />
      <%--<title>Fashion is our passion | Free responsive Fashion Blog template
      </title>--%>
      <meta name="description" content="Download free amazing responsive Fashion Blog template."/>
      <meta name="keywords" content="free, responsive, blog, fashion, web site, template"/>
      <link rel="stylesheet" href="Assets/livewell/css/components.css">
      <link rel="stylesheet" href="Assets/livewell/css/responsee.css">
      <!-- CUSTOM STYLE -->       
      <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
      <link rel="stylesheet" href="Assets/livewell/css/template-style.css">
      <script type="text/javascript" src="Assets/livewell/js/jquery-1.8.3.min.js"></script>
      <script type="text/javascript" src="Assets/livewell/js/jquery-ui.min.js"></script>    
      <script type="text/javascript" src="Assets/livewell/js/modernizr.js"></script>
      <script type="text/javascript" src="Assets/livewell/js/responsee.js"></script>          
      <!--[if lt IE 9]> 
      <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script> 
      <![endif]-->     
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
 <!-- TOP NAV WITH LOGO --> 
 <div >         
      <div class="margin-bottom">
         <div class="line">
            <nav>
             <div><h1>Healthy Tips</h1>
             <div></div>
             <div></div>
               <%--<div class="top-nav">
                  <p class="nav-text"></p>
                  <a class="logo" href="livewell/index.html">            
                  Fashion<span>Blog</span>
                  </a>            
                  <h1>free fashion blog template</h1>
                  <ul class="top-ul right">
                     <li>            
                        <a href="livewell/index.html">Blog</a>            
                     </li>
                     <li>            
                        <a href="livewell/about.html">About</a>            
                     </li>
                     <li>            
                        <a href="livewell/archive.html">Archive</a>            
                     </li>
                     <li>            
                        <a href="livewell/contact.html">Contact</a>            
                     </li>
                     <div class="social right">	           
                        <a target="_blank" href="https://www.facebook.com/myresponsee">
                        <i class="icon-facebook_circle icon2x"></i>
                        </a>          
                        <a target="_blank" href="https://twitter.com/MyResponsee">
                        <i class="icon-twitter_circle icon2x"></i>
                        </a>          
                     </div>
                  </ul>
               </div>--%>
               </div>
            </nav>
         </div>
      </div>
      <!-- MAIN SECTION -->                  
      <section id="home-section" class="line">
         <div class="margin">
            <!-- ARTICLES -->             
            <div class="s-12 l-9">
            
               <!-- ARTICLE 1 -->               
               <article class="post-1 line">
                  <!-- image -->                 
                  <div class="s-12 l-6 post-image">                   
                     <a href="fruits.aspx">
                     <img src="Assets/plan/BP/1.jpg" alt="Fashion 1"/>
                     </a>                
                  </div>
                  <!-- text -->                 
                  <div class="s-12 l-5 post-text">
                     <a href="fruits.aspx">
                        <h2>Breakfast</h2>
                     </a>
                     <h3><%= Breakfast[0] %></h3>


                      <a href="fruits.aspx">
                        <h2>Lunch</h2>
                     </a>
                     <h3><%= Lunch[0] %></h3>
                     
                     
                      <a href="fruits.aspx">
                        <h2>Dinner</h2>
                     </a>
                     <h3><%= Dinner[0] %></h3>
                     
                  </div>
                  <!-- date -->                 
                  <div class="s-12 l-1 post-date">
                     <p class="date">Day 01</p>
                     <p class="month">Monday</p>
                  </div>
               </article>
               
               <!-- ARTICLE 2 -->            
               <article class="post-2 right-align line">
                  <!-- image -->                 
                  <div class="s-12 l-6 post-image">                   
                     <a href="Assets/livewell/post-2.html">
                     <img src="Assets/plan/BP/2.png" alt="Fashion 2"/>
                     </a>                
                  </div>
                  <!-- text -->                 
                  <div class="s-12 l-5 post-text">
                     <a href="fruits.aspx">
                        <h2>Breakfast</h2>
                     </a>
                     <h3><%= Breakfast[1] %></h3>


                      <a href="fruits.aspx">
                        <h2>Lunch</h2>
                     </a>
                     <h3><%= Lunch[1] %></h3>
                     
                     
                      <a href="fruits.aspx">
                        <h2>Dinner</h2>
                     </a>
                     <h3><%= Dinner[1] %></h3>
                     </div>
                  <!-- date -->                 
                  <div class="s-12 l-1 post-date">
                     <p class="date">Day 02</p>
                     <p class="month">Tuesday</p>
                  </div>
               </article>
               
               <!-- ARTICLE 3 -->              
               <article class="post-3 line">
                  <!-- image -->                 
                  <div class="s-12 l-6 post-image">                   
                     <a href="Assets/livewell/post-3.html">
                     <img src="Assets/plan/BP/3.png" alt="Fashion 3"/>
                     </a>                
                  </div>
                  <!-- text -->                 
                  <div class="s-12 l-5 post-text">
                     <a href="Assets/livewell/post-3.html"/>
                        <a href="fruits.aspx">
                        <h2>Breakfast</h2>
                     </a>
                     <h3><%= Breakfast[2] %></h3>


                      <a href="fruits.aspx">
                        <h2>Lunch</h2>
                     </a>
                     <h3><%= Lunch[2] %></h3>
                     
                     
                      <a href="fruits.aspx">
                        <h2>Dinner</h2>
                     </a>
                     <h3><%= Dinner[2] %></h3>
                     </div>
                  <!-- date -->                 
                  <div class="s-12 l-1 post-date">
                     <p class="date">Day 03</p>
                     <p class="month">Wed</p>
                  </div>
               </article>
               
               <!-- ARTICLE 4 -->           
               <article class="post-4 right-align line">
                  <!-- image -->                 
                  <div class="s-12 l-6 post-image">                   
                     <a href="Assets/livewell/post-4.html">
                     <img src="Assets/plan/BP/4.jpg" alt="Fashion 4"/>
                     </a>                
                  </div>
                  <!-- text -->                 
                  <div class="s-12 l-5 post-text">
                     <a href="Assets/livewell/post-4.html"/>
                        <a href="fruits.aspx">
                        <h2>Breakfast</h2>
                     </a>
                     <h3><%= Breakfast[3] %></h3>


                      <a href="fruits.aspx">
                        <h2>Lunch</h2>
                     </a>
                     <h3><%= Lunch[3] %></h3>
                     
                     
                      <a href="fruits.aspx">
                        <h2>Dinner</h2>
                     </a>
                     <h3><%= Dinner[3] %></h3>
                       </div>
                  <!-- date -->                 
                  <div class="s-12 l-1 post-date">
                     <p class="date">Day 04</p>
                     <p class="month"> Thursday</p>
                  </div>
               </article>
     <!-- ARTICLE 1 -->               
               <article class="post-1 line">
                  <!-- image -->                 
                  <div class="s-12 l-6 post-image">                   
                     <a href="fruits.aspx">
                     <img src="Assets/plan/BP/5.png" alt="Fashion 1"/>
                     </a>                
                  </div>
                  <!-- text -->                 
                  <div class="s-12 l-5 post-text">
                     
                        <a href="fruits.aspx">
                        <h2>Breakfast</h2>
                     </a>
                     <h3><%= Breakfast[4] %></h3>


                      <a href="fruits.aspx">
                        <h2>Lunch</h2>
                     </a>
                     <h3><%= Lunch[4] %></h3>
                     
                     
                      <a href="fruits.aspx">
                        <h2>Dinner</h2>
                     </a>
                     <h3><%= Dinner[4] %></h3>
                      </div>
                  <!-- date -->                 
                  <div class="s-12 l-1 post-date">
                     <p class="date">Day 05</p>
                     <p class="month">Friday</p>
                  </div>
               </article>
               
               <!-- ARTICLE 2 -->            
               <article class="post-2 right-align line">
                  <!-- image -->                 
                  <div class="s-12 l-6 post-image">                   
                     <a href="Assets/livewell/post-2.html">
                     <img src="Assets/plan/BP/6.png" alt="Fashion 2"/>
                     </a>                
                  </div>
                  <!-- text -->                 
                  <div class="s-12 l-5 post-text">
                     <a href="Assets/livewell/post-2.html"/>
                       <a href="fruits.aspx">
                        <h2>Breakfast</h2>
                     </a>
                     <h3><%= Breakfast[5] %></h3>


                      <a href="fruits.aspx">
                        <h2>Lunch</h2>
                     </a>
                     <h3><%= Lunch[5] %></h3>
                     
                     
                      <a href="fruits.aspx">
                        <h2>Dinner</h2>
                     </a>
                     <h3><%= Dinner[5] %></h3>
                     </div>
                  <!-- date -->                 
                  <div class="s-12 l-1 post-date">
                     <p class="date">Day 06</p>
                     <p class="month">Saturday</p>
                  </div>
               </article>
               
               <!-- ARTICLE 3 -->              
               <article class="post-3 line">
                  <!-- image -->                 
                  <div class="s-12 l-6 post-image">                   
                     <a href="Assets/livewell/post-3.html">
                     <img src="Assets/plan/BP/7.png" alt="Fashion 3"/>
                     </a>                
                  </div>
                  <!-- text -->                 
                  <div class="s-12 l-5 post-text">
                     <a href="Assets/livewell/post-3.html"/>
                        <a href="fruits.aspx">
                        <h2>Breakfast</h2>
                     </a>
                     <h3><%= Breakfast[6] %></h3>


                      <a href="fruits.aspx">
                        <h2>Lunch</h2>
                     </a>
                     <h3><%= Lunch[6] %></h3>
                     
                     
                      <a href="fruits.aspx">
                        <h2>Dinner</h2>
                     </a>
                     <h3><%= Dinner[6] %></h3>
                     </div>
                  <!-- date -->                 
                  <div class="s-12 l-1 post-date">
                     <p class="date">Day 07</p>
                     <p class="month">Sunday</p>
                  </div>
               </article>
               
               
               
            </div>
         </div>
      </section>
  </div> 
</asp:Content>

