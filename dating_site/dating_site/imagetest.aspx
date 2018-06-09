<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imagetest.aspx.cs" Inherits="dating_site.imagetest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:FileUpload ID="FileUpload1" runat="server" Height="70px" Width="333px" />
        <p>
            <asp:Button ID="Button1" runat="server" Height="84px" OnClick="Button1_Click1" Text="Button" Width="156px" />
        </p>
    </form>
</body>
</html>
