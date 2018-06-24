<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dating_site.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <script src="scripts/jquery-1.7.1.js"></script>
    <script language="javascript" type="text/javascript">
        function SelectAllCheckboxes(chk) {
            var totalRows = $("#<%=GridView1.ClientID %> tr").length;
            var selected = 0;
            $('#<%=GridView1.ClientID %>').find("input:checkbox").each(function () {
                if (this != chk) {
                    this.checked = chk.checked;
                    selected += 1;
                }
            });
        }

        function CheckedCheckboxes(chk) {
            if (chk.checked) {
                var totalRows = $('#<%=GridView1.ClientID %> :checkbox').length;
                var checked = $('#<%=GridView1.ClientID %> :checkbox:checked').length
                if (checked == (totalRows - 1)) {
                    $('#<%=GridView1.ClientID %>').find("input:checkbox").each(function () {
                        this.checked = true;
                    });
                }
                else {
                    $('#<%=GridView1.ClientID %>').find('input:checkbox:first').removeAttr('checked');
                }
            }
            else {
                $('#<%=GridView1.ClientID %>').find('input:checkbox:first').removeAttr('checked');
            }
        }
        
    </script>
    <style>
.card_card{
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title_card {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

button:hover, a:hover {
  opacity: 0.7;
}
</style>
<body>
    <form runat="server">

    <asp:GridView ID="GridView1"  Width="500px" runat="server" AutoGenerateColumns="False" DataKeyNames="email" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
        <Columns>
            <asp:TemplateField >
                <ItemTemplate>
                    &nbsp;&nbsp;<asp:CheckBox ID="chkCheck" runat="server" onclick="javascript:CheckedCheckboxes(this)" />
                </ItemTemplate>
            </asp:TemplateField>
                        <asp:TemplateField>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='upload/<%#Eval("pic").ToString() %>' />
                    <asp:Label ID="lblRollNo" runat="server" Text=''></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Label ID="lblStudentName" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField >
                <ItemTemplate>
                    <asp:Label ID="lblClass" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

        </Columns>
    </asp:GridView>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Get Selected" />
    <br />
    <asp:Label ID="lblResult" runat="server" />
</form>
</body>
</html>