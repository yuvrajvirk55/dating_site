<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form.aspx.cs" Inherits="dating_site.form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
}
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


#regForm {
 background: rgba(0, 0, 0, 0.3);
    filter: alpha(opacity=50);
  margin: 100px auto;
  font-family: Raleway;
  padding: 40px;
  width: 70%;
  min-width: 300px;
  color: white;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}
.bg { 
    /* The image used */
    background-image: url('images/background.jpg');

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}
             

</style>


    <head runat="server">
	<title>Form</title>
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



<body class ="bg">

<div class="rainbow" style="font-size:35px; text-align:left;font-family: Bradley Hand ITC;position: relative; top: 0.8em;left:1.3em;"><b>   &ensp;     &emsp;Let's date!</b></div>

<form id="regForm" runat="server">
  <h1 <div class="rainbow" style="font-size:25px;font-family: Bradley Hand ITC;position: relative;"><b>Just a moment . . .</b></div></h1>
  <!-- One "tab" for each step in the form: -->

    <br />
    <br />


  <div class="tab" ><b><span style="font-size:large;"> &ensp; &ensp;&ensp;   &emsp; &emsp;  &emsp;Interested In. . . . .</span></b><br /> 
    <div  align="center"> <p><asp:RadioButtonList ID="form_gender"  Font-Bold="True" width="150px"  RepeatDirection="Horizontal" runat="server" >
       <asp:ListItem Value="male">male</asp:ListItem>         <asp:ListItem Value="female">female</asp:ListItem>
        </asp:RadioButtonList></p>
        </div>
    <br />
  </div>


  <div class="tab"><b><span style="font-size:large;"> &ensp; &ensp;&ensp;   &emsp; &emsp;  &emsp;Age group . . . . .</span></b><br />
    <div  align="center"> <p>  <asp:DropDownList ID="form_agegroup" runat="server">
            <asp:ListItem Value="18">18-25</asp:ListItem>
            <asp:ListItem Value="26">26-38</asp:ListItem>
            <asp:ListItem Value="39">39-50</asp:ListItem>
            <asp:ListItem Value="50">50-60</asp:ListItem>
            <asp:ListItem Value="60 ">60 +</asp:ListItem>
        </asp:DropDownList></p>
        </div>
       <br />
  </div> 
    
    
    <div class="tab">Nationality:<br />  
        <br />      
     <p>
             <asp:DropDownList ID="form_nationality" runat="server">
            <asp:ListItem>india</asp:ListItem>
            <asp:ListItem>america</asp:ListItem>
            <asp:ListItem>canada</asp:ListItem>
            <asp:ListItem>china</asp:ListItem>
            <asp:ListItem>japan</asp:ListItem>
            <asp:ListItem>australia</asp:ListItem>
            <asp:ListItem Value="new_zealand">new zealand</asp:ListItem>
        </asp:DropDownList>
        </p>
     <br />
    </div>
    
     <div class="tab">Hobbies:<br /> <p> </p><asp:TextBox ID="form_hobbies" runat="server" BackColor="#E1E1E1"  class="input100"  placeholder="Seprate hobbies with comma.."></asp:TextBox><xxxxelmt></xxxxelmt> <br /> </div> <div style="overflow:auto;"> <div style="float:right;"> 
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button> 
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button> 
      
    </div> </div> <!-- Circles which indicates the steps of the form: --> <div style="text-align:center;margin-top:40px;"> 
   
        <span class="step">
       
        </span> </div> </form> <script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the crurrent tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script> </body> </html> </div>


