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

<div class="w3-container">
  <p>Database capacity:</p>

  <div class="w3-light-grey">
    <div id="myBar" class="w3-container w3-green" style="height:24px;width:0%">
    </div>
  </div>

  <p id="myP"><span id="demo">0</span> of 50 users</p>
    </div>




<script>
function move() {
    var elem = document.getElementById("myBar");
    //var users = document.getElementById("Label1").innerText;
    var width = 0;
   // elem.style.width=users+'%'
  function frame() {
    if (width >= 50) {
      clearInterval(id);
      document.getElementById("myP").className = "w3-text-green w3-animate-opacity";
      document.getElementById("myP").innerHTML = "Database is Full";
    } else {
      width++; 
      elem.style.width = width + '%'; 
      var num = width * 1 / 10;
      num = num.toFixed(0)
      document.getElementById("demo").innerHTML = num;
    }
  }
}
window.onload = move;
</script>

</body>

</html>
