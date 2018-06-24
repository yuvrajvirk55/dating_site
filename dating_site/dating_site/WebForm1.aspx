<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dating_site.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
                <table>
                    <tr><td><img src="~/upload/<%#Eval("pic")%>" /></td></tr>
                     <tr><td><%#Eval("name")%></td></tr>
                     <tr><td><%#Eval("gender")%></td></tr>
                    <tr><asp:Button ID="Button1" runat="server" Text="Button" /></tr>
                    

                </table>


            </ItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>
