<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="dating_site.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin page</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  

<style>
    .button {
  display: inline-block;
  border-radius: 4px;
  background-color: #f4511e;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}

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
    <button class="w3-button w3-light-grey" onclick="move();this.disabled='true'">Check</button> 

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
