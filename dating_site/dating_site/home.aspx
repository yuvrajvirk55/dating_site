<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="dating_site.home" %>

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

	<div class="rainbow" style="font-size:100px; text-align:left;font-family: Bradley Hand ITC;position: relative; top: 1.3em;"><b>   &ensp;     &emsp;Let's date!</b></div>

		<div class="container-login100" >		
			
			<div class="wrap-login100 p-t-190 p-b-30">
			
				<form class="login100-form validate-form" id="form1" runat="server">
                   <div align="centre" style="color:red; font-weight:bold;font-size:17px;"> <asp:Label ID="Label1" runat="server"></asp:Label></div>
                    <br />
                    <br />
						<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						 <asp:TextBox class="input100" ID="textbox_email" runat="server" BackColor="#E1E1E1" TextMode="Email"  placeholder="Email"></asp:TextBox>
						
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						 <asp:TextBox class="input100" ID="textbox_password" runat="server" BackColor="#E1E1E1" TextMode="Password"  placeholder="Password"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock"></i>
						</span>
					</div>

					<div class="container-login100-form-btn p-t-10">
						  <asp:ImageButton ID="ImageButton_login" runat="server" Height="51px" ImageUrl="~/images/login.jpg" OnClick="ImageButton2_Click" />
					</div>

					<div class="text-center w-full p-t-25 p-b-230">
						<a href="resetpassword.aspx" class="txt1">
							<font color="red">Forgot Username / Password?</font>
						</a>
						
						<br>
						<br>
							
						<a class="txt1" href="register.aspx">
							<font color="black"><b>Create new account</b></font>
							<i class="fa fa-long-arrow-right"></i>						
						</a>
					</div>

					<div class="text-center w-full">

					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>