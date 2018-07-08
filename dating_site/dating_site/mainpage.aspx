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
    <link href="https://fonts.googleapis.com/css?family=Wendy+One" rel="stylesheet">


    <!-- Styles -->
  <link href='https://fonts.googleapis.com/css?family=Roboto:400,300,100' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="style.css">
  <meta name="robots" content="noindex,follow" />


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
        width:100%;
        position:fixed;
       
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
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.6); /* Black w/ opacity */
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

/* The Close Button */
.close1 {
    color: #aaaaaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
}

.close1:hover,
.close1:focus {
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
.button2 {background-color: #008CBA;} 
.button3 {background-color: #f44336;}

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
   margin-top:70px;
}
.right_body {
  background-color:#e5e5e5;
  float:right;
  width:40%;
  padding:15px;
  margin-top:70px;
}

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
    top: 15%;
    width: 100%;
    text-align: center;
    margin-top: 10px;
}

.overlay_places .aa {
    padding: 5px;
    text-decoration: none;
    font-size: 25px;
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


/*profile pic*/


#myImg {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

#myImg:hover {opacity: 0.7;}

/* The Modal (background) */
.modal_pic {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content_pic {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption_pic {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content_pic, #caption_pic {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}

/* The Close Button */
.close_pic {
    position: absolute;
    top: 15px;
    right: 35px;
    color: #f1f1f1;
    font-size: 40px;
    font-weight: bold;
    transition: 0.3s;
}

.close_pic:hover,
.close_pic:focus {
    color: #bbb;
    text-decoration: none;
    cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content_pic {
        width: 100%;
    }
}



.dropdown {
    float: right;
    overflow: hidden;
}

.dropdown .dropbtn {
    border: none;
    outline: none;
    color: white;
 }

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}


/* Style the tab content */
.tabcontent_main {
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
}

/* style for search bar in dropdown*/


#myInput {
    border-box: box-sizing;
    background-image: url('searchicon.png');
    background-position: 14px 12px;
    background-repeat: no-repeat;
    font-size: 16px;
    padding: 14px 20px 12px 45px;
    border: none;
    border-bottom: 1px solid #ddd;
}

#myInput:focus {outline: 3px solid #ddd;}
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


            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView1.Rows[index];

            int StdID = (int)GridView1.DataKeys[row.DataItemIndex].Values["id"];

            ClientScript.RegisterStartupScript(GetType(), "hwa", "document.getElementById('myModal').style.display = 'block';", true);

            sendrequest(StdID);
            loaddatasearch();

        }

        void ContactsGridView_RowCommand2(Object sender, GridViewCommandEventArgs e)
        {


            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView2.Rows[index];

            int StdID = (int)GridView2.DataKeys[row.DataItemIndex].Values["id"];



            sendrequest(StdID);
            loaddatasuggestion();

        }

        void ContactsGridView_RowCommandaddfriend(Object sender, GridViewCommandEventArgs e)
        {


            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView4.Rows[index];

            int StdID = (int)GridView4.DataKeys[row.DataItemIndex].Values["id"];



            addfriend(StdID);
            loaddatarequests();
        }

        void ContactsGridView_RowCommandremovefriend(Object sender, GridViewCommandEventArgs e)
        {


            int index = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = GridView3.Rows[index];

            int StdID = (int)GridView3.DataKeys[row.DataItemIndex].Values["id"];




            removefriend(StdID);
            loaddatafriends();

        }


</script>

<body style="background-color:	#BEBEBE;">
<form runat="server">

<div class="topnav" id="myTopnav">
    <a class="extra" style="padding-right:2px;padding-left:16px;color:red"><asp:Button ID="Button1" style="padding:13px" runat="server"  Text="Logout" OnClick="Button1_Click" /></a>
  <a href="#myPopup" class="extra" style="padding:3px;"><asp:Image id="myImg" runat="server" style="width:30px; height:30px; border-radius: 90%;" ImageUrl="~/images/profile_pic.png" /></a>
  <a href="profile.aspx"" class="extra" style="padding-right:2px;padding-left:16px;border-left: 1px groove white;"><asp:Label ID="Label1" runat="server" style="font-size:20px;" Text="Label"></asp:Label></a>
  <a onclick="openNav_places()" class="extra"><i class="material-icons" style="font-size:25px; padding-top:5px;">explore</i></a>
    <div class="dropdown">
    <button class="dropbtn" id="button_friends" runat="server"><a href="#home" onclick="openCity(event, 'Paris')" class="extra"><i class="material-icons" style="font-size:25px;padding-top:5px;">group_add</i></a>      
    </button>
    <div class="dropdown-content" id="friends_dropdown" runat="server" style="max-height:300px;overflow-y:scroll" >
    </div>
  </div> 
   <a class="extra" style="background-color:green;height:47px !important" > <asp:Button ID="Buttonpremium" style="background-color:green; font-size: 17px;height:47px !important" runat="server" Text="Button" OnClick="Buttonpremium_Click" /></a>
    <a class="tablinks extra_left " id ='defaultOpen'  onclick="openCity(event, 'London')"  style="font-size:25px;font-weight:bold;font-family:Bradley Hand ITC;text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;" >Let's date!</a>
   <a ><asp:TextBox ID="searchbar_text" CssClass="searchbar"  placeholder="Search" runat="server"></asp:TextBox><asp:ImageButton ID="searchbar_button" style="float:left; padding:0px;"  runat="server" Height="42px" ImageUrl="~/images/searchbutton.png" Width="42px" OnClick="searchbar_button_Click" /></a>   
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>



 <div style="overflow:auto">
 

  <div class="main_body">
   <div id="London" class="tabcontent_main">
  
  <asp:TextBox ID="status_text" runat="server" CssClass="searchbar"  placeholder="Upload Status. . ."></asp:TextBox><asp:ImageButton ID="ImageButton1" style="float:left; padding:0px;"  runat="server" Height="42px" ImageUrl="~/images/upload_status2.png" Width="42px" OnClick="upload_status" />
       <br />
       <br />
        <br />
       <br />

            
<div id="status" runat="server">

     


</div>
</div>







<div id="Paris" class="tabcontent_main">
    <br />
    <br />
     <div style="background-color:#E5E5E5; padding:15px;">
         <br />
             <h2>Friend List</h2>
        <br />
        <div style="overflow-x:hidden;width:600px">
        <asp:GridView ID="GridView3"  Width="800px" runat="server" AutoGenerateColumns="False" DataKeyNames="id" BackColor="#E5E5E5" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" onrowcommand="ContactsGridView_RowCommandremovefriend"  Height="124px">
              <Columns>  
                  <asp:TemplateField>
                      <ItemTemplate></ItemTemplate>
                  </asp:TemplateField>
                
                 <asp:buttonfield commandname="remove" buttontype="button"  text="Remove"  ControlStyle-CssClass="button button3" />
                
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
    <br />
    <br />
    <br />
   <div style="background-color:#E5E5E5;padding:15px">
       <br />
     <h2>Friend Requests</h2>
        <br />
        <div style="overflow-x:hidden;width:600px">
        <asp:GridView ID="GridView4"  Width="800px" runat="server" AutoGenerateColumns="False" DataKeyNames="id" BackColor="#E5E5E5" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" onrowcommand="ContactsGridView_RowCommandaddfriend"  Height="124px">
              <Columns>
                   <asp:TemplateField>
                      <ItemTemplate></ItemTemplate>
                  </asp:TemplateField>
                  
                 <asp:buttonfield commandname="Add" buttontype="button"  text="Accept"  ControlStyle-CssClass="button button2" />
                
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
  </div>
 

  <div class="right_body">
         <h2>Suggestion Box</h2>
        <br />
        <div style="overflow-x:hidden;width:520px">
        <asp:GridView ID="GridView2"  Width="16px" runat="server" AutoGenerateColumns="False" DataKeyNames="id" BackColor="#E5E5E5" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" onrowcommand="ContactsGridView_RowCommand2" Height="124px">
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
         <asp:GridView ID="GridView1"  Width="858px" runat="server" AutoGenerateColumns="False" DataKeyNames="id" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" onrowcommand="ContactsGridView_RowCommand" Height="192px">
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
      </div>
  </div>
</div>

    <!--premium-->
   
<!-- The Modal -->
<div id="myModal1" class="modal">
  <!-- Modal content -->
  <div class="modal-content" >
    <span class="close1">&times;</span>
      <div id="textcard" runat="server">
     
       <div align="center"><h1 style="font-size:40px" class="title">Credit card detail</h1></div>
     

      <div class="form-body">
        <!-- Card Number -->
        <input type="text" class="card-number" placeholder="Card Number" />
          <br />
        <!-- Date Field -->
        <div class="date-field">
          <div class="month">
            <select name="Month">
              <option value="january">January</option>
              <option value="february">February</option>
              <option value="march">March</option>
              <option value="april">April</option>
              <option value="may">May</option>
              <option value="june">June</option>
              <option value="july">July</option>
              <option value="august">August</option>
              <option value="september">September</option>
              <option value="october">October</option>
              <option value="november">November</option>
              <option value="december">December</option>
            </select>
          </div>
          <div class="year">
            <select name="Year">
              <option value="2016">2016</option>
              <option value="2017">2017</option>
              <option value="2018">2018</option>
              <option value="2019">2019</option>
              <option value="2020">2020</option>
              <option value="2021">2021</option>
              <option value="2022">2022</option>
              <option value="2023">2023</option>
              <option value="2024">2024</option>
            </select>
          </div>
        </div>

        <!-- Card Verification Field -->
        <div class="card-verification">
          <div class="cvv-input">
            <input type="text" placeholder="CVV" />
          </div>
          <div class="cvv-details">
            <p>3 or 4 digits usually found <br> on the signature strip</p>
          </div>
        </div>
          <br />
          <br />
          <asp:Button ID="Button2" type="submit" class="proceed-btn" runat="server" Text="Suscribe" onclick="Buttonpremium_pay"/>
      </div>
    </div>
    <br />
    </div>
    </div>
     
  


<!-- Places -->

  <div id="myNav_places" class="overlay_places">
  <a href="javascript:void(0)" class="closebtn_places aa" onclick="closeNav_places()">&times;</a>
  <div class="overlay-content_places">
    <a class="aa">Places</a>
 
<div style="align-content:center; align-items:center;align-self:center;" class="w3-content w3-display-container aa">
<iframe class="mySlides" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26290.95125859216!2d-122.89084871952053!3d49.17413421406467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x8d3427ff474d5ed1!2sStarbucks!5e0!3m2!1sen!2sca!4v1530218526086" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
    <iframe class="mySlides" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2609.0734645250063!2d-122.89315612018146!3d49.16121377941946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5485d909aa50275b%3A0xb3a4289551cd93b5!2sPinch+of+Spice!5e0!3m2!1sen!2sca!4v1530219931261" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
<iframe class="mySlides" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2609.0061983690316!2d-122.89370708461458!3d49.162490579318415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5485d9080403b2a9%3A0x1fbb07d854c0b253!2sJaipur+Indian+Cuisine!5e0!3m2!1sen!2sca!4v1530219847074" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
<iframe class="mySlides" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2609.0061983690316!2d-122.89370708461458!3d49.162490579318415!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5485d9086d4102a3%3A0x591cca86b95caa3e!2sTandoori+Flame+Surrey-Delta!5e0!3m2!1sen!2sca!4v1530219803229" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
<iframe class="mySlides" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d83468.60604796765!2d-122.93882792198856!3d49.17411093515579!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5485d90ce86bce6f%3A0xa3ae60553b040e35!2sTasty+Indian+Bistro!5e0!3m2!1sen!2sca!4v1530218611814" width="100%" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>
  <span class="w3-button w3-white w3-display-left" onclick="plusDivs(-1)">&#10094;</span>
  <span class="w3-button w3-white w3-display-right" onclick="plusDivs(1)">&#10095;</span> 
</div>
  </div>
</div>


    <!-- Profile Pic-->

    <!-- The Modal -->
<div id="myModal_pic" class="modal_pic">
  <span class="close_pic">&times;</span>
  <img class="modal-content_pic" id="img01">
</div>


<script>

    // search bar in dropdown
    function filterFunction() {
        var input, filter, ul, li, a, i;
        input = document.getElementById("myInput");
        filter = input.value.toUpperCase();
        div = document.getElementById("friends_dropdown");
        a = div.getElementsByClassName("tablinks");
        for (i = 0; i < a.length; i++) {
            if (a[i].innerHTML.toUpperCase().indexOf(filter) > -1) {
                a[i].style.display = "";
            } else {
                a[i].style.display = "none";
            }
        }
    }

    //


function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent_main");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

<script>
// Get the modal
var modal = document.getElementById('myModal_pic');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var captionText = document.getElementById("caption_pic");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
    captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close_pic")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
    modal.style.display = "none";
}
</script>

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
            
<script>
    function popWin() {
        document.getElementById('myModal1').style.display = "block";
    }

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close1")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
    document.getElementById('myModal1').style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        document.getElementById('myModal1').style.display = "none";
    }
}
</script>

         
</form>
</body>
</html>

