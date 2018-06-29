<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profileupdate_changepassword.aspx.cs" Inherits="dating_site.profileupdate_changepassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

        <style>
        
.overlay_places {
    height: 100%;
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
    top: 20%;
    width: 100%;
    text-align: center;
    align-content:center;
    align-items:center;
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
    <form id="form1" runat="server">
    <div>
    
<div id="myNav_places" class="overlay_places">
  <a href="profile.aspx" class="closebtn_places aa">&times;</a>
  <div class="overlay-content_places">
    <a class="aa" style="font-size:80px !important;">Password Change</a>
      <br />
      <br />
      <br />

      <a class="aa"><div align="center" style="color:red;"><asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="register_password" ControlToValidate="register_cpassword" ErrorMessage=" Passwords doesn't match"></asp:CompareValidator></div></a>
      <a class="aa"><div align="center"><asp:TextBox ID="register_password" runat="server" BackColor="#E1E1E1"  Width="450px" class="input100" TextMode="Password"  placeholder="Password"></asp:TextBox> </div></a>
      <a class="aa"><div align="center"><asp:TextBox ID="register_cpassword" runat="server" BackColor="#E1E1E1"  Width="450px" class="input100" TextMode="Password"  placeholder="Comform Password"></asp:TextBox></div></a>

      <br />
     <a class="aa"><div align="center"><asp:Button ID="register_register" runat="server"  BackColor="#818181"  Width="250px" class="input100" style="font-weight:bold;font-size:20px;color:black;" Text="Submit" />	</div></a>
  </div>
</div>

    </div>
    </form>

    <script>

</script>
</body>
</html>
