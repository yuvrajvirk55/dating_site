﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainpage.aspx.cs" MaintainScrollPositionOnPostBack="true" Inherits="dating_site.mainpage" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Main page</title>

    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>

	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">

	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">    
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link href="css/circle.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Eater|Indie+Flower" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="progress-circle.js"></script>

<style>
    body {
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
        background: #f1f1f1;
    }

    .topnav {
        overflow: hidden;
        background-color: black;
        color:white;
       
    }

    .extra {
        float: right;
        color: #f2f2f2;
    }


    .extra_left {
        float: left;
        color: #f2f2f2;
    }


    .topnav a {
        display: block;
        text-align: center;
        padding: 3px 16px;
        text-decoration: none;
        font-size: 17px;
    }

        .topnav a:hover {
            color: #224FF5;
        }


    .topnav .icon {
        display: none;
    }

    @media screen and (max-width: 600px) {
        .topnav a:not(:first-child) {
            display: none;
        }

        .topnav a.icon {
            float: right;
            display: block;
        }
    }

    @media screen and (max-width: 600px) {
        .topnav.responsive {
            position: relative;
        }

            .topnav.responsive .icon {
                position: absolute;
                right: 0;
                top: 0;
            }

            .topnav.responsive a {
                float: none;
                display: block;
                text-align: right;
            }
    }

    div.ex1 {
        width: 56px;
        margin: auto;
        border: 3px solid #73AD21;
    }

    .searchbar {
    width: 230px;
    box-sizing: border-box;
    font-size: 16px;
    background-color: white;
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
    float:left;
}

.searchbar:focus {
    width: 40%;
}



/* The Modal (background) */
.modal {
    display: block; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: #fefefe;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

/* The Close Button */
.close {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: #000;
    text-decoration: none;
    cursor: pointer;
}

.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}

.button1 {font-size: 16px;}


.friendlist {
  margin: 20px;
}
 
ul {
  list-style-type: none;
  width: 500px;
}
 
li img {
  float: left;
  margin: 0 15px 0 0;
}
 
li p {
  font: 200 12px/1.5 Georgia, Times New Roman, serif;
}
 
li {
  padding: 10px;
  overflow: auto;
}



.main_body {
  float:left;
  width:60%;
  padding:0 20px;
}
.right_body {
  background-color:#e5e5e5;
  float:left;
  width:40%;
  padding:15px;
  margin-top:7px;}

@media only screen and (max-width:620px) {
  /* For mobile phones: */
  .main_body, .right_body {
    width:100%;
  }
}

/*places*/



.overlay_places {
    height: 0%;
    width: 100%;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0, 0.9);
    overflow-y: hidden;
    transition: 0.5s;
}

.overlay-content_places {
    position: relative;
    top: 10%;
    width: 100%;
    text-align: center;
    margin-top: 30px;
}

.overlay_places .aa {
    padding: 8px;
    text-decoration: none;
    font-size: 36px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.overlay_places .aa:hover, .overlay_places .aa:focus {
    color: #f1f1f1;
}

.overlay_places .closebtn_places {
    position: absolute;
    top: 20px;
    right: 45px;
    font-size: 60px;
}

@media screen and (max-height: 450px) {
  .overlay_places {overflow-y: auto;}
  .overlay_places .aa {font-size: 20px}
  .overlay_places .closebtn_places {
    font-size: 40px;
    top: 15px;
    right: 35px;
  }
}

</style>




</head>
    

<script>
    function myFunction() {
        var x = document.getElementById("myTopnav");
        if (x.className === "topnav") {
            x.className += " responsive";
        } else {
            x.className = "topnav";
        }
    }
    </script>
    <script runat="server">

        void ContactsGridView_RowCommand(Object sender, GridViewCommandEventArgs e)
        {

            string Selected = "";


            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];

            string StdID = GridView1.DataKeys[row.DataItemIndex].Values["email"].ToString();
            Selected += "email : " + StdID + "<br/>";

            lblResult.Text = Selected;
            ClientScript.RegisterStartupScript(GetType(), "hwa", "document.getElementById('myModal').style.display = 'block';", true);

            sendrequest(StdID);
            loaddatasearch();
          
        }
         void Contactsdetails_RowCommand(Object sender, GridViewCommandEventArgs e)
        {

          Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('No Data in Searchbar!')", true);
          
        }

</script>

<body style="background-color:	#BEBEBE;">
<form runat="server">

<div class="topnav" id="myTopnav">
  <a href="#about"" class="extra" style="padding:3px;"><asp:Image ID="Image1" runat="server" style="width:30px; height:30px; border-radius: 90%;" /></a>
  <a href="#about"" class="extra" style="padding-right:2px;padding-left:16px;border-left: 1px groove white;"><asp:Label ID="Label1" runat="server" style="font-size:20px;" Text="Label"></asp:Label></a>
  <a onclick="openNav_places()" class="extra"><i class="material-icons" style="font-size:25px; padding-top:5px;">explore</i></a>
  <a href="#contact" class="extra"><i class="material-icons" style="font-size:25px;padding-top:5px;">public</i></a>
   <a href="#home"  class="extra"><i class="material-icons" style="font-size:25px;padding-top:5px;">group_add</i></a>
    <a class="extra_left" style="font-size:25px; font-weight:bold;font-family:Bradley Hand ITC;text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;" >Let's date!</a>
   <a ><asp:TextBox ID="searchbar_text" CssClass="searchbar"  placeholder="Search" runat="server"></asp:TextBox><asp:ImageButton ID="searchbar_button" style="float:left; padding:0px;"  runat="server" Height="42px" ImageUrl="~/images/searchbutton.png" Width="42px" OnClick="searchbar_button_Click" /></a>   
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>


    



 <div style="overflow:auto">
 

  <div class="main_body">
    <h2>Lorum Ipsum</h2>
    <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
  </div>
 

  <div class="right_body">
         <h2>Suggestion Box</h2>
        <br />
        <div style="overflow-x:auto;width:520px">
        <asp:GridView ID="GridView2"  Width="16px" runat="server" AutoGenerateColumns="False" DataKeyNames="email" BackColor="#E5E5E5" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" onrowcommand="ContactsGridView_RowCommand" Height="124px">
              <Columns>  
                 <asp:buttonfield commandname="Add" buttontype="button"  text="Add Friend"  ControlStyle-CssClass="button button1" />
                
                <asp:TemplateField >
                <ItemTemplate>  
                    <div>
                      <ul>
                        <li>
                         <asp:Image runat="server" ImageUrl='<%#Eval("pic") %>' Height="90px" Width="90px" />
                          <h2><asp:Label ID="Label3" runat="server" Text='<%#Eval("name") %>'></asp:Label></h2>
                          <p><asp:Label ID="lblClass" runat="server" Text='<%#Eval("gender") %>'></asp:Label><br />Hobbies: <asp:Label ID="Label2" runat="server" Text='<%#Eval("hobbies") %>'></asp:Label></p>
                        </li>
                      </ul>
                    </div>
            </ItemTemplate>
            </asp:TemplateField>       
        </Columns>
    </asp:GridView>
            </div>
  </div>


</div> 




<!-- The Modal -->
<div id="myModal" class="modal">

  <!-- Modal content -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <h2>People</h2>
      <br />
      <div class="new">
         <asp:GridView ID="GridView1"  Width="858px" runat="server" AutoGenerateColumns="False" DataKeyNames="email" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" onrowcommand="ContactsGridView_RowCommand" Height="192px">
              <Columns>  
                 <asp:buttonfield commandname="Add" buttontype="button"  text="Add Friend"  ControlStyle-CssClass="button button1" />
                
                <asp:TemplateField >
                <ItemTemplate>  
                    <div>
                      <ul>
                        <li>
                         <asp:Image runat="server" ImageUrl='<%#Eval("pic") %>' Height="90px" Width="90px" />
                          <h2><asp:Label ID="Label3" runat="server" Text='<%#Eval("name") %>'></asp:Label></h2>
                          <p><asp:Label ID="lblClass" runat="server" Text='<%#Eval("gender") %>'></asp:Label><br />Hobbies: <asp:Label ID="Label2" runat="server" Text='<%#Eval("hobbies") %>'></asp:Label></p>
                        </li>
                      </ul>
                    </div>
            </ItemTemplate>
            </asp:TemplateField>       
        </Columns>
    </asp:GridView>
    <br />
  
    <asp:Label ID="lblResult" runat="server" />  
      </div>
  </div>
</div>


<!-- Places -->

  <div id="myNav_places" class="overlay_places">
  <a href="javascript:void(0)" class="closebtn_places aa" onclick="closeNav_places()">&times;</a>
  <div class="overlay-content_places">
    <a class="aa">Places</a>
 
<div style="align-content:center; align-items:center;align-self:center;" class="w3-content w3-display-container aa">
<iframe class="mySlides" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26290.95125859216!2d-122.89084871952053!3d49.17413421406467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x8d3427ff474d5ed1!2sStarbucks!5e0!3m2!1sen!2sca!4v1530218526086" width="100%" height="550" frameborder="0" style="border:0" allowfullscreen></iframe>
    <iframe class="mySlides" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2609.0734645250063!2d-122.89315612018146!3d49.16121377941946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5485d909aa50275b%3A0xb3a4289551cd93b5!2sPinch+of+Spice!5e0!3m2!1sen!2sca!4v1530219931261" width="100%" height="550" frameborder="0" style="border:0" allowfullscreen></iframe>
<iframe class="mySlides" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2609.0061983690316!2d-122.89370708461458!3d49.162490579318415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5485d9080403b2a9%3A0x1fbb07d854c0b253!2sJaipur+Indian+Cuisine!5e0!3m2!1sen!2sca!4v1530219847074" width="100%" height="550" frameborder="0" style="border:0" allowfullscreen></iframe>
<iframe class="mySlides" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2609.0061983690316!2d-122.89370708461458!3d49.162490579318415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5485d9086d4102a3%3A0x591cca86b95caa3e!2sTandoori+Flame+Surrey-Delta!5e0!3m2!1sen!2sca!4v1530219803229" width="100%" height="550" frameborder="0" style="border:0" allowfullscreen></iframe>
<iframe class="mySlides" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d83468.60604796765!2d-122.93882792198856!3d49.17411093515579!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5485d90ce86bce6f%3A0xa3ae60553b040e35!2sTasty+Indian+Bistro!5e0!3m2!1sen!2sca!4v1530218611814" width="100%" height="550" frameborder="0" style="border:0" allowfullscreen></iframe>
  <span class="w3-button w3-white w3-display-left" onclick="plusDivs(-1)">&#10094;</span>
  <span class="w3-button w3-white w3-display-right" onclick="plusDivs(1)">&#10095;</span> 
</div>
  </div>
</div>


 <script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";  
  }
  x[slideIndex-1].style.display = "block";  
}
</script>
<script>
function openNav_places() {
    document.getElementById("myNav_places").style.height = "100%";
}

function closeNav_places() {
    document.getElementById("myNav_places").style.height = "0%";
}
</script>

         
<script>
    function popWin() {
        document.getElementById('myModal').style.display = "block";
    }

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    document.getElementById('myModal').style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        document.getElementById('myModal').style.display = "none";
    }
}
</script>
         
</form>

</body>

</html>

