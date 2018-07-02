<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Exercise.aspx.cs" Inherits="Exercise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
.w3-third img{margin-bottom: -6px; opacity: 0.8; cursor: pointer}
.w3-third img:hover{opacity: 1}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div><h1>1111</h1> <h1></h1></div>
<table></table>
<!-- Sidebar/menu -->

<!-- Top menu on small screens -->

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>


  <!-- Push down content on small screens --> 
  <div class="w3-hide-large" style="margin-top:83px"></div>
  
  <!-- Photo grid -->
  <div class="w3-row">
    <div class="w3-third">
      <%--<img src="/w3images/natureboy.jpg" style="width:100%" onclick="onClick(this)" alt="A boy surrounded by beautiful nature">--%>
      <iframe width="420" height="237" src="<%= fruit[0] %>" frameborder="0" allowfullscreen></iframe>
      <iframe width="420" height="237" src="<%= fruit[1] %>" frameborder="0" allowfullscreen></iframe>
        <iframe width="420" height="237" src="<%= fruit[2] %>" frameborder="0" allowfullscreen></iframe>
      <%--<img src="/w3images/girl_mountain.jpg" style="width:100%" onclick="onClick(this)" alt="What a beautiful scenery this sunset">
      <img src="/w3images/girl.jpg" style="width:100%" onclick="onClick(this)" alt="The Beach. Me. Alone. Beautiful">--%>

    </div>


    <div class="w3-third">
      <iframe width="420" height="237" src="<%= fruit[3] %>" frameborder="0" allowfullscreen></iframe>
      <iframe width="420" height="237" src="<%= fruit[4] %>" frameborder="0" allowfullscreen></iframe>
        <iframe width="420" height="237" src="<%= fruit[5] %>" frameborder="0" allowfullscreen></iframe>
      </div>
    
    <div class="w3-third">
      <iframe width="420" height="237" src="<%= fruit[6] %>" frameborder="0" allowfullscreen></iframe>
      <iframe width="420" height="237" src="<%= fruit[7] %>" frameborder="0" allowfullscreen></iframe>
        <iframe width="420" height="237" src="<%= fruit[8] %>" frameborder="0" allowfullscreen></iframe>
     </div>
  </div>

 
  <!-- Modal for full size images on click-->
  <div id="modal01" class="w3-modal w3-black" style="padding-top:0" onclick="this.style.display='none'">
    <span class="w3-button w3-black w3-xlarge w3-display-topright">×</span>
    <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
      <img id="img01" class="w3-image">
      <p id="caption"></p>
    </div>
  </div>
  
<script>
    // Script to open and close sidebar
    function w3_open() {
        document.getElementById("mySidebar").style.display = "block";
        document.getElementById("myOverlay").style.display = "block";
    }

    function w3_close() {
        document.getElementById("mySidebar").style.display = "none";
        document.getElementById("myOverlay").style.display = "none";
    }

    // Modal Image Gallery
    function onClick(element) {
        document.getElementById("img01").src = element.src;
        document.getElementById("modal01").style.display = "block";
        var captionText = document.getElementById("caption");
        captionText.innerHTML = element.alt;
    }

</script>


</asp:Content>

