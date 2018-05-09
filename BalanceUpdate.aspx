<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="BalanceUpdate.aspx.cs" Inherits="BalanceUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1 style="text-align:center; color:blue;">Balance Update</h1>
        <div class ="container">
            
   <div  class="row">
<div  style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Username:</label>
     
        <asp:TextBox ID="username" class="form-control"   runat="server" ReadOnly="True" ></asp:TextBox>
       
    </div>
</div>
</div>
  
  <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Balance:</label>
          <asp:TextBox ID="Balance" class="form-control"  runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Balance Require" ControlToValidate="Balance" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

   <div style="text-align:center; ">
          <%--<asp:Button ID="Product_Entry" class="btn btn-info" runat="server" Text="Product Update" OnClick="Account_update_Click" />--%>
          
       <asp:Button ID="Balance_update" class="btn btn-info" runat="server" Text="Balance Update" OnClick="Account_update_Click" />
     
      </div> 
</div>

</asp:Content>

