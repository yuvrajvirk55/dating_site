<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="dating_site.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin page</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  

<style>

</style>

</head>

<body>
<div>
<asp:Label ID="Label1" runat="server" ></asp:Label>
</div>

 




<script>
function move() {
  var elem = document.getElementById("myBar");   
  var width = 0;
  var id = setInterval(frame, 50);
  function frame() {
    if (width >= 100) {
      clearInterval(id);
      document.getElementById("myP").className = "w3-text-green w3-animate-opacity";
      document.getElementById("myP").innerHTML = "Successfully uploaded 10 photos!";
    } else {
      width++; 
      elem.style.width = width + '%'; 
      var num = width * 1 / 10;
      num = num.toFixed(0)
      document.getElementById("demo").innerHTML = num;
    }
  }
}
</script>

</body>

</html>
