<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resetpassword.aspx.cs" Inherits="dating_site.resetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
}
.rainbow {
  background-image: -webkit-gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  background-image: gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  color:transparent;
  -webkit-background-clip: text;
  background-clip: text;
  font-family: Bradley Hand ITC;
}

.bg { 
    /* The image used */
    background-image: url('images/background.jpg');

    /* Full height */
    height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}


#regForm {
 background: rgba(0, 0, 0, 0.3);
    filter: alpha(opacity=50);
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
  color: white;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}
.bg { 
    /* The image used */
    background-image: url('images/background.jpg');

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}
             

</style>


    <head runat="server">
	<title>Reset Password</title>
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
     </head>



<body class ="bg">

<div class="rainbow" style="font-size:35px; text-align:left;font-family: Bradley Hand ITC;position: relative; top: 0.8em;left:1.3em;"><b>   &ensp;     &emsp;Let's date!</b></div>

<form id="regForm" runat="server">
  <h1 <div class="rainbow" style="font-size:25px;font-family: Bradley Hand ITC;position: relative;"><b>Few moments . . .</b></div></h1>
  <!-- One "tab" for each step in the form: -->

    <br />
    <br />

    <div>
        <b><span style="font-size:large;">Enter your email. . . . .</span></b><br />
        <br />
        <p>
  <asp:TextBox ID="resetpassword_email" class="input100" BackColor="#E1E1E1"  runat="server"  TextMode="Email"  placeholder="Enter your email address ..."></asp:TextBox>
    </p>
            </div>

    <br />
    <br /> 

    <div ><b><span style="font-size:large;">Nationality. . . . .</span></b><br />
        <br />     
     <p>
             <asp:DropDownList ID="resetpassword_nationality" BackColor="#E1E1E1"  class="input100" runat="server">
            <asp:ListItem Value="india">india</asp:ListItem>
            <asp:ListItem Value="america">america</asp:ListItem>
            <asp:ListItem Value="canada">canada</asp:ListItem>
            <asp:ListItem Value="china">china</asp:ListItem>
            <asp:ListItem Value="japan">japan</asp:ListItem>
            <asp:ListItem Value="australia">australia</asp:ListItem>
            <asp:ListItem Value="new_zealand">new zealand</asp:ListItem>
        </asp:DropDownList>
        </p>
     <br />
    </div>
    
       
    <!-- Circles which indicates the steps of the form: --> 
    
    <div style="text-align:center;margin-top:40px;">  
        <span class="step">
        </span> 
    </div> 

</form> 
  </body> </html> 


