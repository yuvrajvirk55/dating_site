<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="dating_site.Chat" %>

<!DOCTYPE html>

 <html lang="en">
     <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta charset="utf-8"> <meta name="viewport" content="width=device-width, initial-scale=1">
          <title>Chat</title>
          <link href="./css/bootstrap.min.css" rel="stylesheet">
          <link href="./css/messsages.css" rel="stylesheet">
          <link href="./fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
         <style type="text/css">
             #ms-scrollbar::-webkit-scrollbar-track{background-color:#CCCCCC;}
             #ms-scrollbar::-webkit-scrollbar{width: 7px;background-color: #F5F5F5;}
             #ms-scrollbar::-webkit-scrollbar-thumb{background-color:#eeeeee;-webkit-box-shadow: inset 0 0 0px rgba(0,0,0,0.3);}
             .ms-new{box-shadow:0 2px 5px rgba(0,0,0,0.16),0 2px 10px rgba(0,0,0,0.12); background-color:#2196f3;}

         </style> 
         <script src="jQuery-2.1.4.min.js"></script>
    <!-- jQuery UI 1.11.4 -->
    <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
         <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type="text/javascript"></script>
         <script type="text/javascript">
        window.onload = function () {
            $("div.lv-body").scrollTop(10000);
        };
    </script>




   <style>
  
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
        padding: 3px 16px;
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


</style>



     </head> 
     <body> 
         <form runat="server">

<div class="topnav" id="myTopnav">
  <a class="extra" style="padding-right:2px;padding-left:16px;color:red"><asp:Button ID="Button2" style="padding:13px" runat="server"  Text="Logout" /></a>
  <a href="#about"" class="extra" style="padding:5px;"><asp:Image ID="Image5" runat="server" style="width:30px; height:30px; border-radius: 90%;" /></a>
  <a href="#about"" class="extra" style="padding-right:2px;padding-left:16px;  border-left: 1px groove white;"><asp:Label ID="Label3" runat="server" style="font-size:20px;" Text="Label"></asp:Label></a>
   <a class="extra_left" style="font-size:25px; font-weight:bold;font-family:Bradley Hand ITC;text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;" >Let's date!</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>


             <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
             <div class="container-fluid"> 
                 <div class="container ng-scope"> 
                     <div class="block-header"> 
                         <h2> </h2>

                     </div>
                     <div class="card m-b-0" id="messages-main" style="box-shadow:0 0 40px 1px #c9cccd;">
                          <div class="ms-menu" style="overflow:scroll; overflow-x: hidden;" id="ms-scrollbar"> 
                              <div class="ms-block">
                                   <div class="ms-user">
                                        <%--<img src="./images/avatar.jpg" alt=""> --%>
                                       <asp:Image ID="Image1" runat="server" />
                                  <h5 class="q-title" align="center">
                                      <a href="mainpage.aspx" align="left">Back</a><br /><br />
                                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label> <br/><b>0</b> New Messages</h5>
                                   </div>
                              </div>
                              <div class="ms-block">
                                   <a class="btn btn-primary btn-block ms-new" href="#"><span class="glyphicon glyphicon-envelope"></span>&nbsp; New Message</a> 
                              </div><hr/> 
                              <div class="listview lv-user m-t-20">
                                  <asp:DataList ID="DataList1" runat="server">
                                      <ItemTemplate>
                                          <div class="lv-item media"> 
                                              <div class="lv-avatar pull-left"> 
                                                  <%--<img src="./images/bhai.jpg" alt=""> --%>
                                                  <asp:Image ID="Image2" runat="server" ImageUrl='<%# Bind("Image","{0}") %>'/>
                                              </div>
                                              <div class="media-body"> 
                                                  <div class="lv-title">
                                                      <%--<asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>--%></div>
                                                  <asp:LinkButton ID="LinkButton1" ForeColor="Black" runat="server" Text='<%# Bind("Name") %>' OnClick="LinkButton1_Click"></asp:LinkButton>
                                                  <%--<div class="lv-small"> Acadnote a world class website is processing surveys for </div>--%>
                                              </div>
                                          </div>
                                      </ItemTemplate>
                                  </asp:DataList>
                                       </div>
                          </div>
                         <div class="ms-body"> 
                             <div class="listview lv-message"> 
                                 <div class="lv-header-alt clearfix"> 
                                     <div id="ms-menu-trigger"> 
                                         <div class="line-wrap"> 
                                             <div class="line top">
                                             </div>
                                             <div class="line center"></div>
                                             <div class="line bottom"></div>
                                         </div>
                                     </div>
                                     <div class="lvh-label hidden-xs"> 
                                         <div class="lv-avatar pull-left">
                                              <%--<img src="./images/bhai.jpg" alt="">--%>
                                             <asp:Image ID="Image3" runat="server" />
                                         </div>
                                         <span class="c-black">
                                             <asp:Label ID="Label2" runat="server" Text=""></asp:Label><span style=" margin-left:8px; position:absolute; margin-top:12px;width: 8px;height: 8px;line-height: 8px; border-radius: 50%; background-color:#80d3ab;"></span></span> 
                                     </div>
                                    </div>
                                 <div class="lv-body" id="ms-scrollbar" style="overflow:scroll; overflow-x: hidden; height:520px;">
                                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                         <ContentTemplate>
                                             <asp:Timer ID="Timer1" runat="server" OnTick="Timer1_Tick" Interval="1000"></asp:Timer>
                                            <asp:DataList ID="DataList3" runat="server">
                                                 <ItemTemplate>  
                                                     <div class="lv-item media"> 
                                                         <div class="lv-avatar pull-left"> 
                                                             <%--<img src="./images/bhai.jpg" alt="">--%>
                                                             <asp:Image ID="Image4" runat="server" ImageUrl='<%# Bind("Image") %>'/>

                                                         </div>
                                                         <div class="media-body"> 
                                                             <div class="ms-item"> 
                                                                 <span class="glyphicon glyphicon-triangle-left" style="color:#000000;"></span> 
                                                                 <asp:Label ID="Message" runat="server" Text='<%# Bind("Message") %>'></asp:Label>
                                                             </div>
                                                             <small class="ms-date"><span class="glyphicon glyphicon-time"></span>&nbsp; <asp:Label ID="Date" runat="server" Text='<%# Bind("Time") %>'></asp:Label></small> 
                                                         </div>
                                                     </div>
                                                   </ItemTemplate>
                                              </asp:DataList>
                                         </ContentTemplate>
                                         </asp:UpdatePanel>
                                     
                                              </div>
                                 
                                 <div class="clearfix"></div>
                                 <div class="lv-footer ms-reply"> 
                                     <%--<form runat="server">--%>
                                     <%--<textarea rows="10" placeholder="Write messages..."></textarea>--%>
                                     <asp:TextBox CssClass="textarea" ID="TextBox1"  placeholder="Write messages..." runat="server"></asp:TextBox>
                                     <%--<button class=""><span class="glyphicon glyphicon-send"></span></button>--%>
                                     <%--<asp:LinkButton ID="Button1" CssClass="button" runat="server" ><span class="glyphicon glyphicon-send"></span></asp:LinkButton>--%>
                                         <button runat="server" class="button" onserverclick="Unnamed_ServerClick" height="" width="">
                                            <span class="glyphicon glyphicon-send"></span>
                                        </button>
                                     <%--</form>--%>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div><%--</div></div></section>--%> 
         </form>
         <script type="text/javascript" src="./css/jquery.js"></script> 
         <script src="./css/bootstrap.min.js"></script> 
     </body>
 </html>
