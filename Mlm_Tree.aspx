<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mlm_Tree.aspx.cs" Inherits="Mlm_Tree" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Action_Button" runat="server" Text="Calculation" OnClick="Action_Button_Click" /> 
        
        </br>
        
        
        
         
    </div>

        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        
        <h1>All The user</h1>

        <div class="container col-md-12">
            <asp:Repeater ID="R1" runat="server">

                <HeaderTemplate>
                <table style="width: auto;" border="1">
                    <tr>
                        <td>ID</td>
                        <td>Username</td>
                        <td>Status</td>
                        <td>Action</td>
                        <td>Veryfi</td>
                    </tr>
                 </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:LinkButton ID="Idpass"  Text='<%#Eval("id") %>' runat="server"></asp:LinkButton> 

                        </td>
                        <td><%#Eval("username") %></td>
                        <td><%#Eval("status") %></td>
                        <td><asp:Button ID="Update_Status" runat="server" OnClick="Update_Status" Text="Verify" /> </td>

                        <td>Verifi: <asp:LinkButton ID="LinkButton1" OnClick="Idpass_Click" Text='<%#Eval("username") %>' runat="server"></asp:LinkButton></td>
                    </tr>
                   </ItemTemplate>
               <FooterTemplate>
                </table>
                </FooterTemplate>

                




            </asp:Repeater>



        </div>

    </form>
</body>
</html>
