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
<body>
	
	<div class="limiter" style="background-image: url('images/background.jpg');">

	<div class="rainbow" style="font-size:50px; text-align:left;font-family: Bradley Hand ITC;position: relative; top: 1.3em;"><b>   &ensp;     &emsp;Register</b></div>

		<div class="container-login100" >		
			
			<div class="wrap-login100 p-t-190 p-b-30">
			
				<form class="login100-form validate-form" id="form1" runat="server">


           <table>
            <td>
                <tr">
                    <asp:TextBox ID="register_fname" class="input100" BackColor="#E1E1E1" runat="server"  placeholder="First name"></asp:TextBox>
                </tr>
                <tr>
                    <asp:TextBox ID="TextBox1" class="input100" BackColor="#E1E1E1" runat="server"  placeholder="Last name"></asp:TextBox>
                </tr>
            </td>


        </table>


					<div class="container-login100-form-btn p-t-10">
                           <asp:Button ID="register_register" runat="server" Text="register" OnClick="register_register_Click" />
					</div>		
				</form>
			</div>
		</div>
	</div>
</body>
</html>