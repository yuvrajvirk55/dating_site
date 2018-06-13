<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="dating_site.welcome" %>

<!DOCTYPE html>

<html>
<title>welcome</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
    
.rainbow {
  background-image: -webkit-gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  background-image: gradient( linear, left top, right top, color-stop(0, #f22), color-stop(0.15, #f2f), color-stop(0.3, #22f), color-stop(0.45, #2ff), color-stop(0.6, #2f2),color-stop(0.75, #2f2), color-stop(0.9, #ff2), color-stop(1, #f22) );
  color:transparent;
  -webkit-background-clip: text;
  background-clip: text;
  font-family: Bradley Hand ITC;
}

body,h1 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
.bgimg {
    background-image: url('images/background.jpg');
    min-height: 100%;
    background-position: center;
    background-size: cover;
}


</style>
<body>

<div class="bgimg w3-display-container w3-animate-opacity w3-text-white">

    <div class="rainbow" style="font-size:35px; text-align:left;font-family: Bradley Hand ITC;position: relative; top: 0.8em;left:1.3em;"><b>   &ensp;     &emsp;Let's date!</b></div>
  <div class="w3-display-middle">
    <asp:Image ID="Image1" runat="server" style="width:100px;border-radius: 50%;" />
    <h1 class="w3-jumbo w3-animate-top"><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></h1>
    <hr class="w3-border-grey" style="margin:auto;width:40%">
    <p class="w3-large w3-center">Your account is ready. . .</p>
  </div>
 
</div>

</body>
</html>
