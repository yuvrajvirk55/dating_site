<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="dating_site.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<style>

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

.img {
     background: rgba(0, 0, 0, 0.3);
    filter: alpha(opacity=50); /* For IE8 and earlier */
    color:white; 
    margin-top: 70px;
 
}

</style>
<head runat="server">
	<title>login</title>
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
<body class="bg">
	<div class="rainbow" style="font-size:35px; text-align:left;font-family: Bradley Hand ITC;position: relative; top: 0.8em;left:1.3em;"><b>   &ensp;     &emsp;Let's date!</b></div>
 <div class="img"  align="center"; >
   <form id="form1" runat="server">
       <div  class="rainbow"  style="font-size:45px; text-align:center;"><b>Register</b></div>

 <table >
     <tr style="height: 30px;" >
    <td></td>
    <td></td> 
    <td></td>
  </tr>
  <tr>
    <td width="250px"> <asp:TextBox ID="register_fname" class="input100" BackColor="#E1E1E1" Width="250px" runat="server"  placeholder="First name"></asp:TextBox></td>
    <td width="250px"> <asp:TextBox ID="register_lname" class="input100" BackColor="#E1E1E1" Width="250px" runat="server"  placeholder="Last name"></asp:TextBox></td>
    <td></td>
  </tr>

  <tr>
    <td Width="250px"><asp:TextBox ID="register_email" class="input100" BackColor="#E1E1E1"  Width="250px" runat="server"  TextMode="Email"  placeholder="Email"></asp:TextBox></td>
    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ControlToValidate="register_email" ErrorMessage=" Email is required"></asp:RequiredFieldValidator></td>
    <td></td>
  </tr>

   <tr>
    <td Width="250px">  <asp:TextBox ID="register_password" runat="server" BackColor="#E1E1E1"  Width="250px" class="input100" TextMode="Password"  placeholder="Password"></asp:TextBox> </td>
    <td  Width="250px"> <asp:TextBox ID="register_cpassword" runat="server" BackColor="#E1E1E1"  Width="250px" class="input100" TextMode="Password"  placeholder="Comform Password"></asp:TextBox></td>
    <td><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="register_password" ControlToValidate="register_cpassword" ErrorMessage=" Passwords doesn't match"></asp:CompareValidator></td>
  </tr >

 
  <tr>
    <td Width="250px"> <asp:TextBox ID="register_dob" runat="server" BackColor="#E1E1E1"  Width="250px" class="input100" TextMode="Date"  placeholder="Dob"></asp:TextBox></td>
    <td></td>
    <td></td>
  </tr>

     <tr style="height: 20px;" >
    <td></td>
    <td></td> 
    <td></td>
    </tr>
  
  <tr">
    <td Width="250px"> <asp:RadioButtonList ID="register_gender" runat="server" > <asp:ListItem Value="male"><span style="font-size:32px;font-weight:bold;" class="rainbow">male</span></asp:ListItem><asp:ListItem Value="female"><span style="font-size:32px;font-weight:bold;" class="rainbow">female</span></asp:ListItem> </asp:RadioButtonList></td>
    <td>
        
        <asp:FileUpload ID="FileUpload1" runat="server" />
        
     </td>
    <td>&nbsp;</td>
  </tr>

   <tr style="height: 30px;" >
    <td></td>
    <td></td> 
    <td></td>
  </tr>
</table>

<asp:Button ID="register_register" runat="server"  BackColor="Black"  Width="250px" class="input100" style="font-weight:bold;font-size:20px;" Text="Submit" OnClick="register_register_Click" />	
       <p> <br /></p>					
</form>
   </div>

</body>
</html>