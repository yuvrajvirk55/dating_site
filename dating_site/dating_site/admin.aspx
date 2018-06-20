<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="dating_site.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Admin page</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">    
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link href="css/circle.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Eater|Indie+Flower" rel="stylesheet">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="progress-circle.js"></script>

<style>
    body {
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
    }

    .topnav {
        overflow: hidden;
        background-color: black;
        color:white;
       
    }

    .extra {
        float: right;
        color: #f2f2f2;
    }


    .extra_left {
        float: left;
        color: #f2f2f2;
    }


    .topnav a {
        display: block;
        text-align: center;
        padding: 7px 16px;
        text-decoration: none;
        font-size: 17px;
    }

        .topnav a:hover {
            color: #00ffff;
        }


    .topnav .icon {
        display: none;
    }

    @media screen and (max-width: 600px) {
        .topnav a:not(:first-child) {
            display: none;
        }

        .topnav a.icon {
            float: right;
            display: block;
        }
    }

    @media screen and (max-width: 600px) {
        .topnav.responsive {
            position: relative;
        }

            .topnav.responsive .icon {
                position: absolute;
                right: 0;
                top: 0;
            }

            .topnav.responsive a {
                float: none;
                display: block;
                text-align: right;
            }
    }

    div.ex1 {
        width: 56px;
        margin: auto;
        border: 3px solid #73AD21;
    }


#submit {
  font-weight: bold;
  color: #90c844;
}

.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 16px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    -webkit-transition-duration: 0.4s; /* Safari */
    transition-duration: 0.4s;
    cursor: pointer;
}

.button3 {
    background-color: white; 
    color: black; 
    border: 2px solid #f44336;
}

.button3:hover {
    background-color: #f44336;
    color: white;
}

.left{ float:left;
        padding: 5px;
        margin: 8px;
       
        width: 40% !important;
        height: 200px !important;
        display:block;
        opacity:0.4;
        background: rgba(0, 0, 0, 0.7);
    filter: alpha(opacity=50); /* For IE8 and earlier */
    color:white; 
    text-align:center;
    
   font-family: 'Indie Flower', cursive;
}

.left2{ float:left;
        padding: 5px;
        margin: 8px;
       
        width: 30% !important;
        height: 200px !important;
        display:block;
        opacity:0.4;
        background: rgba(0, 0, 0, 0.7);
    filter: alpha(opacity=50); /* For IE8 and earlier */
    color:white; 
    text-align:center;
    
   font-family: 'Indie Flower', cursive;
}

.right{ float:right;
        padding: 5px;
        margin: 8px;
        width: 24% !important;
        height: 200px !important;
        display:block;
        opacity:0.4;
        background: rgba(0, 0, 0, 0.7);
    filter: alpha(opacity=50); /* For IE8 and earlier */
    color:white; 
    text-align:center !important;
    
   font-family: 'Indie Flower', cursive;
 

}


</style>

</head>
       
<script>

    function myFunction() {
        var x = document.getElementById("myTopnav");
        if (x.className === "topnav") {
            x.className += " responsive";
        } else {
            x.className = "topnav";
        }
    }


    </script>

<body style="background-color:	#BEBEBE;">

<div class="topnav" id="myTopnav">
  <a href="#about"" class="extra" style="padding:5px;"><asp:Image ID="Image1" runat="server" style="width:30px; height:30px; border-radius: 90%;" /></a>
  <a href="#about"" class="extra" style="padding-right:2px;padding-left:16px"><asp:Label ID="Label1" runat="server" style="font-size:20px;" Text="Label"></asp:Label></a>
  <a href="#news" class="extra"><i class="material-icons" style="font-size:25px;">explore</i></a>
  <a href="#contact" class="extra"><i class="material-icons" style="font-size:25px;">public</i></a>
   <a href="#home"  class="extra"><i class="material-icons" style="font-size:25px;">group_add</i></a>
   <a class="extra_left" style="font-size:25px; font-weight:bold;font-family:Bradley Hand ITC;text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;" >Let's date!</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
 <form runat="server" > 
  
 <div class="left">

     <h1>Number of Users: </h1>
     <asp:Label ID="percent" style="font-size:40px;" runat="server" ></asp:Label>

     </div>


      <div class="right">

     <h1>Database load: </h1>
          <span id="circle"></span>
          <h2 id="submit">Check</h2>
     </div>


      <div class="left2">
     <h1>Clean Database: </h1>
    <asp:Button ID="Button1" CssClass="button button3" runat="server" Text="Button" OnClick="Button1_Click" />
     </div>


    <script>
( function( $ ){
	$( '#circle' ).progressCircle();

	$( '#submit' ).click( function() {
	    var nPercent = $('#percent').text() ? $('#percent').text() : 0;
	    nPercent = nPercent * 1.9;
		var showPercentText = $( '#percentOn' ).prop( 'checked' );
		var thickness       = $( '#thickness' ).val() ? $( '#thickness' ).val() : 3;
		var circleSize      = $( '#circle-size' ).val() ? $( '#circle-size' ).val() : 100;

		$( '#circle' ).progressCircle({
			nPercent        : nPercent,
			showPercentText : showPercentText,
			thickness       : thickness,
			circleSize      : circleSize
		});
	})
})( jQuery );
</script>
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
    
</form>
</body>

</html>
