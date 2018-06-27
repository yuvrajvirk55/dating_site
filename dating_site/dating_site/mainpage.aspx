<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainpage.aspx.cs" MaintainScrollPositionOnPostBack="true" Inherits="dating_site.mainpage" %>
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
          
        }
</script>

<body style="background-color:	#BEBEBE;">
<form runat="server">

<div class="topnav" id="myTopnav">
  <a href="#about"" class="extra" style="padding:3px;"><asp:Image ID="Image1" runat="server" style="width:30px; height:30px; border-radius: 90%;" /></a>
  <a href="#about"" class="extra" style="padding-right:2px;padding-left:16px;border-left: 1px groove white;"><asp:Label ID="Label1" runat="server" style="font-size:20px;" Text="Label"></asp:Label></a>
  <a href="#news" class="extra"><i class="material-icons" style="font-size:25px; padding-top:5px;">explore</i></a>
  <a href="#contact" class="extra"><i class="material-icons" style="font-size:25px;padding-top:5px;">public</i></a>
   <a href="#home"  class="extra"><i class="material-icons" style="font-size:25px;padding-top:5px;">group_add</i></a>
    <a class="extra_left" style="font-size:25px; font-weight:bold;font-family:Bradley Hand ITC;text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;" >Let's date!</a>
   <a ><asp:TextBox ID="searchbar_text" CssClass="searchbar"  placeholder="Search" runat="server"></asp:TextBox><asp:ImageButton ID="searchbar_button" style="float:left; padding:0px;"  runat="server" Height="42px" ImageUrl="~/images/searchbutton.png" Width="42px" OnClick="searchbar_button_Click" /></a>   
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
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
        <columns>
           
                <asp:buttonfield commandname="Add" buttontype="Link"  text="Add Friend"/>
              <asp:ImageField DataImageUrlField="pic"></asp:ImageField>
                <asp:boundfield datafield="name" headertext="Contact ID"/>
                <asp:boundfield datafield="gender" headertext="First Name"/> 
                <asp:boundfield datafield="pic"  headertext="Last Name"/>             

              </columns>
    </asp:GridView>
    <br />
  
    <asp:Label ID="lblResult" runat="server" />  
      </div>
  </div>

</div>

         
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

