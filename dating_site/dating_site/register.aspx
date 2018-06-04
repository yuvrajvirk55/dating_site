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
	
<form id="form1" runat="server">

 <div align="center">
 <table >
  <tr>
    <th><div class="rainbow" style="font-size:60px; text-align:left;font-family: Bradley Hand ITC;position: relative;"><b>   &ensp;     &emsp;Register</b></div></th>
    <th></th> 
    <th></th>
  </tr>
  <tr>
    <td width="250px"> <asp:TextBox ID="register_fname" class="input100" BackColor="#E1E1E1" Width="250px" runat="server"  placeholder="First name"></asp:TextBox></td>
    <td width="250px"> <asp:TextBox ID="register_lname" class="input100" BackColor="#E1E1E1" Width="250px" runat="server"  placeholder="Last name"></asp:TextBox></td>
    <td></td>
  </tr>

  <tr>
    <td Width="250px"><asp:TextBox ID="register_email" class="input100" BackColor="#E1E1E1"  Width="250px" runat="server"  TextMode="Email"  placeholder="Email"></asp:TextBox></td>
    <td></td>
    <td></td>
  </tr>

   <tr>
    <td Width="250px">  <asp:TextBox ID="register_password" runat="server" BackColor="#E1E1E1"  Width="250px" class="input100" TextMode="Password"  placeholder="Password"></asp:TextBox> </td>
    <td  Width="250px"> <asp:TextBox ID="register_cpassword" runat="server" BackColor="#E1E1E1"  Width="250px" class="input100" TextMode="Password"  placeholder="Comform Password"></asp:TextBox></td>
    <td></td>
  </tr>


  <tr>
    <td Width="250px"> <asp:TextBox ID="register_dob" runat="server" BackColor="#E1E1E1"  Width="250px" class="input100" TextMode="Date"  placeholder="Dob"></asp:TextBox></td>
    <td></td>
    <td></td>
  </tr>

  
  <tr>
    <td Width="250px"> <asp:RadioButtonList ID="register_gender" runat="server" > <asp:ListItem>male</asp:ListItem><asp:ListItem>female</asp:ListItem> </asp:RadioButtonList></td>
    <td></td>
    <td></td>
  </tr>

   <tr>
    <td></td>
    <td  Width="250px"><asp:Button ID="register_register" runat="server" Text="register" OnClick="register_register_Click" /> </td>
    <td></td>
  </tr>

</table>
     </div>							
</form>

</body>
</html>