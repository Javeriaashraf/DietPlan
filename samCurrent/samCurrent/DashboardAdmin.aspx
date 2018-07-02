<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="DashboardAdmin.aspx.cs" Inherits="DashboardAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style>

 body{
	 font: 15px/1.5 Arial, Helvetica, sans-serif;
	 padding:0;
	 margin:0;
	 background-color:pink;
	 }

	
	
	


	#boxes .box{
		
		float:right;
		width: 30%;
		padding:50px;
		align:center;
		
		}
# boxes .box img
{
	width:90px;
	
	}
	
	a:hover

{
	color:#cccccc;
	font-weight:bold;

	}
	
	
</style>

<section id="boxes">
<div class="container">
  <div class="box">
  <h3><a href="fruitsAdmin.aspx"> FRUITS</a> <h3>
  <img src="Assets/img/frit.PNG"  alt="xana">
<p>Juices of fruits are the gift from mother nature</p>
 </div>

<div class="box">
  <h3><a href="vegeAdmin.aspx">VEGETABLES </a><h3>
 <img src="Assets/img/vege2.PNG"  alt="xana">
<p> Natural way to heal your body and </p>
 </div>


<div class="box">
  <h3> <a href="dietAdmin.aspx">DIET PLAN </a><h3>
  <img src="Assets/img/diet1.PNG"  width="335PX"  alt="xana">
<p> It's not the diet .It's called Healthy Eating and make yourself whole again. </p>
 </div>
</div>




</section>

<section id="boxes">
<div class="container">
  <div class="box">
  <h3><a href="faqAdmin.aspx">FAQ </a><h3>
  <img src="Assets/img/kk.PNG"  alt="xana">
<p> Sometimes,answers are more important than questions</p>
 </div>

<div class="box">
  <h3><a href="viewPatAdmin.aspx"> Patient profile</a> <h3>
 <img src="Assets/img/34.PNG"  alt="xana">
<p> Helping hands are the best way to soothe to others</p>
 </div>


<div class="box">
  <h3><a href="contactAdmin.aspx">Contact Us </a> <h3>
  <img src="Assets/img/345.PNG"  width="300px" height="400px"  alt="xana">
<p>The power of the answered text</p>
 </div>
</div>




</section>

</asp:Content>

