<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="dating_site.profile" %>

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
    top: 10%;
    width: 100%;
    text-align: center;
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
    </style>

</head>

<body>
    <form id="form1" runat="server">
    <div>
    
<div id="myNav_places" class="overlay_places">
  <a href="mainpage.aspx" class="closebtn_places aa">&times;</a>
  <div class="overlay-content_places">
    <a class="aa">Places</a>

  </div>
</div>

    </div>
    </form>

    <script>

</script>
</body>
</html>
