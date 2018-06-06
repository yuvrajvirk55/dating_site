<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="dating_site.form" %>

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

  
    margin-top: 130px;
 
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
       <div  class="rainbow"  style="font-size:45px; text-align:center;"><b>Just a moment </b></div>

 <table >
    
     <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2">
         <WizardSteps>
             <asp:WizardStep runat="server" title="10%">
                 Interested in: 
                 <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                     <asp:ListItem>men</asp:ListItem>
                     <asp:ListItem>women</asp:ListItem>
                 </asp:RadioButtonList>
             </asp:WizardStep>
             <asp:WizardStep runat="server" title="23%">
                 Age group: 
                 <asp:ListBox ID="ListBox1" runat="server">
                     <asp:ListItem>18-25</asp:ListItem>
                     <asp:ListItem>26-30</asp:ListItem>
                     <asp:ListItem>31-45</asp:ListItem>
                     <asp:ListItem>45-60</asp:ListItem>
                     <asp:ListItem>60 +</asp:ListItem>
                 </asp:ListBox>
             </asp:WizardStep>
             <asp:WizardStep runat="server" Title="35%">
                 Nationality:
                  <asp:ListBox ID="ListBox2" runat="server">
                      <asp:ListItem>canada</asp:ListItem>
                      <asp:ListItem>america</asp:ListItem>
                      <asp:ListItem>india</asp:ListItem>
                      <asp:ListItem>australia</asp:ListItem>
                      <asp:ListItem>new zealand</asp:ListItem>
                      <asp:ListItem>china</asp:ListItem>
                      <asp:ListItem>japan</asp:ListItem>
                      <asp:ListItem>uk</asp:ListItem>
                 </asp:ListBox>
             </asp:WizardStep>
             <asp:WizardStep runat="server" Title="49%">
             </asp:WizardStep>
             <asp:WizardStep runat="server" Title="65%">
             </asp:WizardStep>
             <asp:WizardStep runat="server" Title="78%">
             </asp:WizardStep>
             <asp:WizardStep runat="server" Title="89%">
             </asp:WizardStep>
             <asp:WizardStep runat="server" Title="100%">
             </asp:WizardStep>
         </WizardSteps>
     </asp:Wizard>
    
</table>

<asp:Button ID="register_register" runat="server"  BackColor="Black"  Width="250px" class="input100" style="font-weight:bold;font-size:20px;" Text="Submit"  />						
</form>
   </div>

</body>
</html>