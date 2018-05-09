<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mail_Send.aspx.cs" Inherits="Mail_Send" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Form :"></asp:Label>
        <asp:TextBox ID="form" runat="server" Height="21px" style="margin-left: 26px" Width="194px"></asp:TextBox>
    
    </div>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Pass :"></asp:Label>
            <asp:TextBox ID="password" runat="server" Height="21px" style="margin-left: 36px" Width="194px" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="TO:"></asp:Label>
            <asp:TextBox ID="to" runat="server" Height="23px" style="margin-left: 46px" Width="197px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Msg:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="msg" runat="server" Height="23px" style="margin-left: 0px" Width="199px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Subject:"></asp:Label>
            <asp:TextBox ID="subject" runat="server" Height="23px" style="margin-left: 21px" Width="199px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server"></asp:Label>
        </p>
        <asp:Button ID="Send_Button" runat="server" Height="27px" OnClick="Send_Button_Click" style="margin-left: 151px" Text="Send" Width="116px" />
    </form>
</body>
</html>
