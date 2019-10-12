<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="choose.aspx.cs" Inherits="MYWEB.choose" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <style type="text/css">
* {box-sizing: border-box}
.mySlides1, .mySlides2, .mySlides3, .mySlides4, .mySlides5 {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 500px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a grey background color */
.prev:hover, .next:hover {
  background-color: #f1f1f1;
  color: black;
}

<style>
 
    .button {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        display: inline-block;
        padding: 15px 25px;
        font-size: x-small;
        cursor: pointer;
        text-align: center;
        text-decoration: none;
        outline: none;
        color: #fff;
        background-color: #eb3349;
        border-radius: 15px;
        box-shadow: 0 9px #999;
        margin-left: 160px;
    }

.button:hover {background-color: #f45c43}

.button:active {
  background-color: #f45c43;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
#grad1 {
  height: 650px;
  
  background-image: linear-gradient(white,#a8e063); 
}
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
        z-index: 1;
        left: 9px;
        top: 45px;
        position: absolute;
        height: 47px;
        width: 1655px;
    }

li {
  float: right;
            width: 74px;
        }

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
            width: 42px;
        }

li a:hover {
  background-color: #eb3349;
}


        #form1 {
            height: 3115px;
        }


    </style>
</style>
 <title></title>
</head>
<body style="background-color:white">
    <form id="form1" runat="server">
    <div id="grad1" style="height: 3200px">
        <ul>
 
 <li><a class="active" href="entry.aspx">Home</a></li>
 
  <li><a href="contact.aspx">Contact</a></li>
  <li><a href="abou.aspx">About</a></li>
  <li><a href="https://r4creators.blogspot.com">Blog</a></li>

            </ul>

 <asp:Label ID="Label1" runat="server" 
            Text="Choose the category of the product that you are going to post!" 
            Font-Size="X-Large" style="z-index: 1; left: 51px; top: 116px; position: absolute; margin-left: 0px"></asp:Label>      

<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />

<div class="slideshow-container">
  <div class="mySlides1">
    <img src="img/e1.jpg" style="width:100%" alt="img not available"/>
  </div>

  <div class="mySlides1">
    <img src="img/e2.jpg" style="width:100%" alt="img not available"/>
  </div>

  <div class="mySlides1">
    <img src="img/e3.jpg" style="width:100%" alt="img not available"/>
  </div>

  <a class="prev" onclick="plusSlides(-1, 0)">&#10094;</a>
  <a class="next" onclick="plusSlides(1, 0)">&#10095;</a>
</div>

 <asp:Button ID="Button1" CssClass="button" runat="server" PostBackUrl="~/post.aspx" 
            Text="E-waste" onclick="Button1_Click" style="z-index: 1; left: 822px; top: 635px; position: absolute" />

<br />
<br />
<br />
<br />
<br />
<br />

<div class="slideshow-container">
  <div class="mySlides2">
    <img src="img/p2.jpg" style="width:100%" alt="img not available"/>
  </div>

  <div class="mySlides2">
    <img src="img/p3.jpg" style="width:100%" alt="img not available"/>
  </div>

  <div class="mySlides2">
    <img src="img/pl1.jpg" style="width:100%" alt="img not available"/>
  </div>

  <a class="prev" onclick="plusSlides(-1, 1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1, 1)">&#10095;</a>
</div>



 <asp:Button ID="Button2" runat="server" PostBackUrl="~/p.aspx" Text="Plastic" 
            onclick="Button2_Click" style="z-index: 1; left: 821px; top: 1088px; position: absolute; height: 26px" />

<br />
<br />
<br />
<br />
<br />
<br />




<div class="slideshow-container">
  <div class="mySlides3">
    <img src="img/m1.jpg" style="width:100%" alt="img not available"/>
  </div>

  <div class="mySlides3">
    <img src="img/m2.jpg" style="width:100%" alt="img not available"/>
  </div>

  <div class="mySlides3">
    <img src="img/m3.jpg" style="width:100%" alt="img not available"/>
  </div>

  <a class="prev" onclick="plusSlides(-1, 2)">&#10094;</a>
  <a class="next" onclick="plusSlides(1, 2)">&#10095;</a>
</div>

 <asp:Button ID="Button3" runat="server" PostBackUrl="~/m.aspx" Text="Metals" style="z-index: 1; left: 813px; position: absolute; top: 1518px" />

<br />
<br />
<br />
<br />
<br />
<br />




<div class="slideshow-container">
  <div class="mySlides4">
    <img src="img/g1.jpg" style="width:100%" alt="img not available"/>
  </div>

  <div class="mySlides4">
    <img src="img/g2.jpg" style="width:100%" alt="img not available"/>
  </div>

  <div class="mySlides4">
    <img src="img/g3.jpg" style="width:100%" alt="img not available"/>
  </div>

  <a class="prev" onclick="plusSlides(-1, 3)">&#10094;</a>
  <a class="next" onclick="plusSlides(1, 3)">&#10095;</a>
</div>

<asp:Button ID="Button4" runat="server" PostBackUrl="~/g.aspx" Text="Glass" style="z-index: 1; left: 794px; top: 2256px; position: absolute" />

<br />
<br />
<br />
<br />
<br />
<br />



<div class="slideshow-container">
  <div class="mySlides5">
    <img src="img/c1.jpg" style="width:100%" alt="img not available"/>
  </div>

  <div class="mySlides5">
    <img src="img/c2.jpg" style="width:100%" alt="img not available"/>
  </div>

  <div class="mySlides5">
    <img src="img/c3.jpg" style="width:100%" alt="img not available"/>
  </div>

  <a class="prev" onclick="plusSlides(-1, 4)">&#10094;</a>
  <a class="next" onclick="plusSlides(1, 4)">&#10095;</a>
</div>


<asp:Button ID="Button5" runat="server" PostBackUrl="~/c.aspx" 
            Text="Construction products" Width="166px" onclick="Button5_Click" style="z-index: 1; left: 738px; top: 2865px; position: absolute" />


<br />
<br />
<br />
<br />
<br />
<br />






        <br />
<br />
<br />
<br />
<br />
<br />

    
<script type="text/javascript">
    var slideIndex = [1, 1, 1, 1, 1];
    var slideId = ["mySlides1", "mySlides2", "mySlides3", "mySlides4", "mySlides5"]
    showSlides(1, 0);
    showSlides(1, 1);
    showSlides(1, 2); showSlides(1, 3); showSlides(1, 4); showSlides(1, 5);

    function plusSlides(n, no) {
        showSlides(slideIndex[no] += n, no);
    }

    function showSlides(n, no) {
        var i;
        var x = document.getElementsByClassName(slideId[no]);
        if (n > x.length) { slideIndex[no] = 1 }
        if (n < 1) { slideIndex[no] = x.length }
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        x[slideIndex[no] - 1].style.display = "block";
    }
</script>

      




  <asp:Button ID="Button6" runat="server" PostBackUrl="~/o.aspx" Text="Others" style="z-index: 1; left: 787px; top: 2992px; position: absolute" />

      

    </div>
    </form>
</body>
</html>

