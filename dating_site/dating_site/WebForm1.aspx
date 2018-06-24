<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dating_site.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<script src="Scripts/jquery-1.7.1.js"></script>
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

<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
     <asp:GridView ID="GridView1"  Width="500px" runat="server" AutoGenerateColumns="False" DataKeyNames="email" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">


            <Columns>
        <asp:TemplateField >
            <HeaderTemplate>                   
                    &nbsp;&nbsp; <asp:CheckBox ID="chkCheckAll" runat="server" onclick="javascript:SelectAllCheckboxes(this)" />
            </HeaderTemplate>
            <ItemTemplate>
                &nbsp;&nbsp;<asp:CheckBox ID="chkCheck" runat="server" onclick="javascript:CheckedCheckboxes(this)" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Student Name">
            <ItemTemplate>
                <asp:Label ID="lblStudentName" runat="server" Text='<%#Eval("name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField  HeaderText="Class">
            <ItemTemplate>
                <asp:Label ID="lblClass" runat="server" Text='<%#Eval("gender") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField  HeaderText="Class">
            <ItemTemplate>
                <asp:Label ID="lblRollNo" runat="server" Text='<%#Eval("email") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#242121" />

        </asp:GridView>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <p>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
