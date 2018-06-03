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


				
						<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
						 <asp:TextBox class="input100" ID="textbox_email" runat="server" BackColor="#E1E1E1" TextMode="Email" OnTextChanged="textbox_email_TextChanged" placeholder="Email"></asp:TextBox>
						
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


           <table>
            <tr>
                <td class="auto-style2">firstname</td>
                <td class="auto-style3">
                    <asp:TextBox ID="register_fname" class="input100" BackColor="#E1E1E1" runat="server"  placeholder="Password"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">lastname</td>
                <td class="auto-style3">
                    <asp:TextBox ID="register_lname" class="input100" BackColor="#E1E1E1" runat="server"  placeholder="Password"></asp:TextBox>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style2">email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="register_email" class="input100" BackColor="#E1E1E1" runat="server"  TextMode="Email"  placeholder="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  runat="server" ControlToValidate="register_email" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Date of Birth</td>
                <td class="auto-style5">
                    <asp:TextBox ID="register_dob" runat="server" BackColor="#E1E1E1" class="input100" TextMode="Date"  placeholder="Password"></asp:TextBox>
                </td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style2">password</td>
                <td class="auto-style3">
                    <asp:TextBox ID="register_password" runat="server" BackColor="#E1E1E1" class="input100" TextMode="Password"  placeholder="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="register_password" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">conform paddword</td>
                <td class="auto-style3">
                    <asp:TextBox ID="register_cpassword" runat="server" BackColor="#E1E1E1" class="input100" TextMode="Password"  placeholder="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="register_password" ControlToValidate="register_cpassword" ErrorMessage="Passwords doesn't match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">gender</td>
                <td class="auto-style3">
                    <asp:RadioButtonList ID="register_gender" runat="server" BackColor="#E1E1E1" class="input100" Height="16px" Width="222px"  placeholder="Password">
                        <asp:ListItem>male</asp:ListItem>
                        <asp:ListItem>female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
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