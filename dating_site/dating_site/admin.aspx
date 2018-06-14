<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="dating_site.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>
  .GaugeMeter{
    Position:        Relative;
    Text-Align:      Center;
    Overflow:        Hidden;
    Cursor:          Default;
  }

  .GaugeMeter SPAN,
  .GaugeMeter B{
    Margin:          0 23%;
    Width:           5%;
    Position:        Absolute;
    Text-align:      Center;
    Display:         Inline-Block;
    Color:           RGBa(0,0,0,.8);
    Font-Weight:     100;
    Font-Family:     "Open Sans", Arial;
    Overflow:        Hidden;
    White-Space:     NoWrap;
    Text-Overflow:   Ellipsis;
  }
  .GaugeMeter[data-style="Semi"] B{
    Margin:          0 10%;
    Width:           80%;
  }

  .GaugeMeter S,
  .GaugeMeter U{
    Text-Decoration: None;
    Font-Size:       .5em;
    Opacity:         .5;
  }

  .GaugeMeter B{
    Color:           Black;
    Font-Weight:     300;
    Font-Size:       .5em;
    Opacity:         .8;
  }
</style>
</head>

  <script src="./GaugeMeter.js"></script>
<script>
  $(document).ready(function(){
    $(".GaugeMeter").gaugeMeter();
  });
</script>


<body>

    <div class="GaugeMeter" id="GaugeMeter_1" data-percent="10"></div>
    <form id="form1" runat="server">
    <div>
        </div>
    </form>
</body>

</html>
