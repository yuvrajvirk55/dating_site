<%@ Page language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<html xmlns="http://www.w3.org/1999/xhtml" >
  <head id="Head1" runat="server">
    <title>ListView</title>
  </head>
  <body>
    <form id="form1" runat="server">
        <asp:Label runat="server" ID="aa" Text="Label"></asp:Label>
      <asp:ListView ID="ContactsListView" DataSourceID="ContactsDataSource"  DataKeyNames="email" OnSelectedIndexChanged="ContactsListView_SelectedIndexChanged" runat="server">
        <LayoutTemplate>
        
          <table cellpadding="2" border="1" runat="server" id="tblContacts" width="640px">
            <tr runat="server" id="itemPlaceholder" />
          </table>
        </LayoutTemplate>
        <ItemTemplate>
          <tr runat="server">
            <td valign="top">
              <asp:Label ID="FirstNameLabel" runat="server" Text='<%#Eval("name") %>' />
              <asp:Label ID="LastNameLabel" runat="server" Text='<%#Eval("gender") %>' />
            </td>
            <td>
              <asp:Label ID="EmailLabel" runat="server" Text='<%#Eval("hobbies") %>' />
            </td>
            <td>
              <asp:LinkButton ID="SelectButton" runat="server" CommandName="Select" Text="Select" />
            </td>
          </tr>
        </ItemTemplate>
        <SelectedItemTemplate>
          <tr runat="server" style="background-color:#B0C4DE">
            <td valign="top">
              <asp:Label ID="FirstNameLabel" runat="server" Text='<%#Eval("name") %>' />
              <asp:Label ID="LastNameLabel" runat="server" Text='<%#Eval("gender") %>' />
            </td>
            <td>
              <asp:Label ID="EmailLabel" runat="server" Text='<%#Eval("hobbies") %>' />
            </td>
            <td>&nbsp;</td>
          </tr>
        </SelectedItemTemplate>
      </asp:ListView>

      <asp:SqlDataSource ID="ContactsDataSource" runat="server" 
        ConnectionString="Data Source = uvuserdata.mssql.somee.com; Initial Catalog = uvuserdata; Persist Security Info = True; User ID = yuvrajvirk55_SQLLogin_1; Password = nm6ecevlt8"
        SelectCommand="SELECT userinterest.email as email,first_name + ' ' + last_name AS name, int_sex as gender,in_hobbies as hobbies,pic FROM usertable INNER JOIN userinterest ON usertable.email=userinterest.email">
      </asp:SqlDataSource>

    </form>
  </body>
</html>