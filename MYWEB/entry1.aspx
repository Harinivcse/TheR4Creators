<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="entry1.aspx.cs" Inherits="MYWEB.entry1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>R4</title>
    <style>
        .button {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        display: inline-block;
        padding: 15px 25px;
        font-size: small;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        outline: none;
        color: #fff;
        background-color: red;
        
        
        margin-left: 160px;
    }

           

    </style>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

<link href="StyleSheet1.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body id="top">
    <form id="form1" runat="server">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ##################################################################################  ############## -->
<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('img/bg.jpg');"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="index.html">R4</a></h1>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
        	<li class="active"><a href="index.html">Home</a></li>
		<li class="active"><a href="abou.aspx">About</a></li>
		<li class="active"><a href="contact.aspx">Contact us</a></li>
        <li class="active"><a href="https://r4creators.blogspot.com">Blog</a></li>
       
        </ul>
      </nav>
      <!-- ################################################################################################ -->
        <asp:Label ID="Label2" runat="server" 
          style="z-index: 1; left: 455px; top: 390px; position: absolute; height: 22px; width: 528px; font-weight: 700; font-size: x-large" 
          Text="STAY CALM AND RECYCLE ON!"></asp:Label>
        
    </header>
  </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="pageintro" class="hoc clear">
    <article> 
      <!-- ################################################################################################ -->
      <h3 class="heading">Online Marketplace for recyclable<br></br> and reusable products</h3>
    
        <asp:Label ID="Label3" runat="server" Text="A “one stop shop” for recyclable, reusable and  refurbishable products thus enhancing a cleaner and viridescent environment in a smart way" Font-Names="Verdana, Geneva, sans-serif"></asp:Label>
    
      &nbsp;</article>
  </div>
  <!-- ################################################################################################ -->
</div>

      

            


    </form>



</body>
</html>
