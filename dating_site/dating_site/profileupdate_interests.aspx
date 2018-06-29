<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profileupdate_interests.aspx.cs" Inherits="dating_site.profileupdate_interests" %>

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
    top: 4%;
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



/*interest*/

* {
  box-sizing: border-box;
}


#regForm {
 
  margin: 100px auto;
  
  padding: 40px;
  width: 70%;
  min-width: 300px;

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
   
     <form id="regForm" runat="server">


  <div id="myNav_places" class="overlay_places">
  <a href="profile.aspx" class="closebtn_places aa">&times;</a>
  <div class="overlay-content_places">
    <a class="aa" style="font-size:80px !important;">Interests</a>
<br />

    <a class="aa">
  <div class="tab" style="font-size:large;font-weight:bold" ><span style="font-size:28px">Interested In</span><br /> 
    <div  align="center"><asp:RadioButtonList ID="form_gender" width="150px"  RepeatDirection="Horizontal" runat="server" >
       <asp:ListItem Value="male">male</asp:ListItem>         <asp:ListItem Value="female">female</asp:ListItem>
        </asp:RadioButtonList>
        </div></div></a>


     <a class="aa">
  <div class="tab"><b><span style="font-size:large;">Age group</span></b><br />
    <div align="center">
         <p> 
              <asp:DropDownList BackColor="#E1E1E1" align="center" width="450px" class="input100" ID="form_agegroup" runat="server">
            <asp:ListItem Value="18">18-25</asp:ListItem>
            <asp:ListItem Value="26">26-38</asp:ListItem>
            <asp:ListItem Value="39">39-50</asp:ListItem>
            <asp:ListItem Value="50">50-60</asp:ListItem>
            <asp:ListItem Value="60 ">60 +</asp:ListItem>
        </asp:DropDownList></p>
        </div>
  </div> </a>
    
     <a class="aa">
    <div class="tab"><b><span style="font-size:large;">Nationality</span></b><br />   
    <div align="center">
             <asp:DropDownList ID="form_nationality" BackColor="#E1E1E1" Width="450px"  class="input100" runat="server">
            <asp:ListItem Value="india">india</asp:ListItem>
            <asp:ListItem Value="america">america</asp:ListItem>
            <asp:ListItem Value="canada">canada</asp:ListItem>
            <asp:ListItem Value="china">china</asp:ListItem>
            <asp:ListItem Value="japan">japan</asp:ListItem>
            <asp:ListItem Value="australia">australia</asp:ListItem>
            <asp:ListItem Value="new_zealand">new zealand</asp:ListItem>
        </asp:DropDownList>
       </div>
    </div></a>
    
       <a class="aa">
     <div class="tab"><b><span style="font-size:large;">Hobbies</span></b><br />
       <div align="center"><asp:TextBox ID="form_hobbies" runat="server" BackColor="#E1E1E1" width="450px" class="input100"  placeholder="Seprate hobbies with comma.."></asp:TextBox><br /> 
        <asp:Button ID="form_form"   runat="server"  BackColor="#818181"  Width="150px" class="input100" style="font-weight:bold;font-size:20px;color:white;" Text="Submit" /> </div>			
     </div> </a>

    <div style="overflow:auto;">   
        <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button> 
       <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button> 
     </div>
    
    
    <!-- Circles which indicates the steps of the form: --> 
    
    <div style="text-align:center;margin-top:40px;"> 
   
        <span class="step">
        </span> 
        <span class="step">   
        </span>
        <span class="step">   
        </span>
        <span class="step">    
        </span>
    </div> 
      </div></div>

 </form>    
 <script>
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
      //document.getElementById("nextBtn").innerHTML = "Submit";
      document.getElementById("nextBtn").style.display = "none";
  } else {
      document.getElementById("nextBtn").style.display = "inline";
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
</script>
</body>
</html>
