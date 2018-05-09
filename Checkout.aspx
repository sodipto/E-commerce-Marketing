<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Checkout.aspx.cs" Inherits="Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div  >
  
 
  
    
      <label   for="email">Enter Password:</label>
        <asp:TextBox ID="pass" class="form-control" placeholder="Enter Correct password" validationgroup="s"  runat="server" TextMode="Password" Width="300px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  validationgroup="s" ErrorMessage="Password Require" ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>
    
  </div>



         <div>
             <asp:Button ID="EntryButton" runat="server" Text="GO"  validationgroup="s" Height="33px" class="btn btn-info" OnClick="EntryButton_Click" Width="297px" />

              </br>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
         </div>
    </br>
  </div>   
</asp:Content>

