<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TextChangeTextbox.aspx.cs" Inherits="TableP_TextChangeTextbox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  <div>
      <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
</div>

        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

</form>

</body>
</html>
