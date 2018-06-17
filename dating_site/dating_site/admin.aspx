<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="dating_site.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Admin page</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">    

<style>
    body {
        margin: 0;
        font-family: Arial, Helvetica, sans-serif;
    }

    .topnav {
        overflow: hidden;
        background-color: #333;
        background: linear-gradient(to left,rgba(250,150,252,1),rgba(249,174,153,1), rgba(199,253,149,1), rgba(152,244,250,1));
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

  @xxsUnit: 0.25rem;
@xsUnit: 12px;
@sUnit: 20px;
@mUnit: 22px; 
@lUnit: 24px;
@xlUnit: 38px;
@xxlUnit: 75px;

@track-color: #ffffff;
@thumb-color: #e1e1e1;

@thumb-radius: 5px;
@thumb-height: @xlUnit;
@thumb-width: @sUnit;

@thumb-border-width: 1px;
@thumb-border-color: #d6d6d6;

@track-width: 100%;
@track-height: @sUnit;

@track-border-width: 1px;
@track-border-color: #e6e6e6;

@track-radius: 0px;
@contrast: 5%;
html,body{
  height: 100%;
  width: 100%;
}
html,
button,
input,
select,
textarea {
	color: #5e5e5e;
	-webkit-font-smoothing: antialiased;
}
body {
	background-color: #f0f1f1;
	font: 1rem/1.2 Montserrat, Helvetica, Helvetica Neue, Arial;
}
.page{
  display: flex;
  align-items: center;
  align-content: center;
  width: 275px;
  margin: 20px auto;
}
.progress-bar{
	display: inline-block;
	width: 275px;
	height: 275px;
	margin: 7px;
	padding: 0;
}
.progress-bar .progress-active{
	position: relative;
	top: -279px;
}
.progress-bar p{
	position: relative;
	margin: 0;
	padding: 0;
	width: 275px;
	top: -460px;
	font-size: 54px;
	font-weight: 900;
	text-align: center;
}
#progressControllerContainer{
  position: absolute;
  top: 320px;
  padding: 10px 80px;
}

.track() {
  width: @track-width;
  height: @track-height;
  cursor: pointer;
  animate: 0.2s;
}

.thumb() {
  border: @thumb-border-width solid @thumb-border-color;
  height: @thumb-height;
  width: @thumb-width;
  border-radius: @thumb-radius;
  background: @thumb-color;
  cursor: pointer;
}

input[type=range] {
  -webkit-appearance: none;
  margin: @thumb-height 0;
  width: @track-width;

  &:focus {
    outline: none;
  }

  &::-webkit-slider-runnable-track {
    .track();
    background: @track-color;
    border-radius: @track-radius;
    border: @track-border-width solid @track-border-color;
  }
  
  &::-webkit-slider-thumb {
    .thumb();
    -webkit-appearance: none;
    margin-top: ((-@track-border-width * 2 + @track-height) / 2) - (@thumb-height / 2);
  }

  &:focus::-webkit-slider-runnable-track {
    background: lighten(@track-color, @contrast);
  }

  &::-moz-range-track {
    .track();
    background: @track-color;
    border-radius: @track-radius;
    border: @track-border-width solid @track-border-color;
  }
  &::-moz-range-thumb {
     .thumb();
  }

  &::-ms-track {
    .track(); 
    background: transparent;
    border-color: transparent;
    border-width: @thumb-width 0;
    color: transparent;
  }

  &::-ms-fill-lower {
    background: darken(@track-color, @contrast);
    border: @track-border-width solid @track-border-color;
    border-radius: @track-radius*2;
  }
  &::-ms-fill-upper {
    background: @track-color;
    border: @track-border-width solid @track-border-color;
    border-radius: @track-radius*2;
  }
  &::-ms-thumb {
    .thumb();
  }
  &:focus::-ms-fill-lower {
    background: @track-color;
  }
  &:focus::-ms-fill-upper {
    background: lighten(@track-color, @contrast);
  }
}
</style>

</head>

<body>

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




 
 <!-- JJ -->
<div id="page" class="page">
  <div class="progress-bar">
	  <canvas id="inactiveProgress" class="progress-inactive" height="275px" width="275px"></canvas>
    <canvas id="activeProgress" class="progress-active"  height="275px" width="275px"></canvas>
    <p>0%</p>
  </div>
  <div id="progressControllerContainer">
    <input type="range" id="progressController" min="0" max="100" value="19" />
  </div
</div>
<!-- SDG -->



    
<script>
    $(document).ready(function () {
        var $pc = $('#progressController');
        var $pCaption = $('.progress-bar p');
        var iProgress = document.getElementById('inactiveProgress');
        var aProgress = document.getElementById('activeProgress');
        var iProgressCTX = iProgress.getContext('2d');


        drawInactive(iProgressCTX);

        $pc.on('change', function () {
            var percentage = $(this).val() / 100;
            drawProgress(aProgress, percentage, $pCaption);
        });

        function drawInactive(iProgressCTX) {
            iProgressCTX.lineCap = 'square';

            //outer ring
            iProgressCTX.beginPath();
            iProgressCTX.lineWidth = 15;
            iProgressCTX.strokeStyle = '#e1e1e1';
            iProgressCTX.arc(137.5, 137.5, 129, 0, 2 * Math.PI);
            iProgressCTX.stroke();

            //progress bar
            iProgressCTX.beginPath();
            iProgressCTX.lineWidth = 0;
            iProgressCTX.fillStyle = '#e6e6e6';
            iProgressCTX.arc(137.5, 137.5, 121, 0, 2 * Math.PI);
            iProgressCTX.fill();

            //progressbar caption
            iProgressCTX.beginPath();
            iProgressCTX.lineWidth = 0;
            iProgressCTX.fillStyle = '#fff';
            iProgressCTX.arc(137.5, 137.5, 100, 0, 2 * Math.PI);
            iProgressCTX.fill();

        }
        function drawProgress(bar, percentage, $pCaption) {
            var barCTX = bar.getContext("2d");
            var quarterTurn = Math.PI / 2;
            var endingAngle = ((2 * percentage) * Math.PI) - quarterTurn;
            var startingAngle = 0 - quarterTurn;

            bar.width = bar.width;
            barCTX.lineCap = 'square';

            barCTX.beginPath();
            barCTX.lineWidth = 20;
            barCTX.strokeStyle = '#00B4FF';
            barCTX.arc(137.5, 137.5, 111, startingAngle, endingAngle);
            barCTX.stroke();

            $pCaption.text((parseInt(percentage * 100, 10)) + '%');
        }

        var percentage = $pc.val() / 100;
        drawProgress(aProgress, percentage, $pCaption);


    });





    function myFunction() {
        var x = document.getElementById("myTopnav");
        if (x.className === "topnav") {
            x.className += " responsive";
        } else {
            x.className = "topnav";
        }
    }
    </script>

</body>

</html>
