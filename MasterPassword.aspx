<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="MasterPassword.aspx.cs" Inherits="MasterPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div style="text-align:center;">

 <h2>Master Password</h2>
        
    </div>
    <div style="text-align:center;">

        <p>
            <asp:Label ID="Label2" runat="server" Text="LAST UPDATE: "></asp:Label>
            <asp:Label ID="Label3" runat="server" Text=".."></asp:Label>
        </p>
        <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Balanced Binary Tree Calculation" OnClick="Button1_Click" />
    </br>
    </br>
        
    </div>
   

       
  <div class ="container">
   <div  class="row">
 
<div  style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Verify User Password:</label>
     
        <asp:TextBox ID="Verify" validationgroup="addproductbutton" class="form-control"   runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" validationgroup="addproductbutton" runat="server" ErrorMessage="Product Id Require" ControlToValidate="Verify" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>
  
  <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">All User List Password:</label>
        <asp:TextBox ID="User" class="form-control" validationgroup="addproductbutton"   runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" validationgroup="addproductbutton" runat="server" ErrorMessage="Product Name Require" ControlToValidate="User" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

        
  <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Add Product Password:</label>
       <asp:TextBox ID="Add_product" class="form-control"  validationgroup="addproductbutton"  runat="server" ></asp:TextBox>
         
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" validationgroup="addproductbutton" runat="server" ErrorMessage="Product Description Require" ControlToValidate="Add_product" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

<div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">ALL Product List Password:</label>
        <asp:TextBox ID="Product_List" class="form-control"  validationgroup="addproductbutton"  runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" validationgroup="addproductbutton" runat="server" ErrorMessage="Product price Require" ControlToValidate="Product_List" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

      <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Withdraw Password:</label>
      <asp:TextBox ID="Withdraw" class="form-control" validationgroup="addproductbutton" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" validationgroup="addproductbutton" runat="server" ErrorMessage="Product Point Require" ControlToValidate="Withdraw" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

          <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Take Backup Password:</label>
       <asp:TextBox ID="Backup" class="form-control" validationgroup="addproductbutton"   runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" validationgroup="addproductbutton" runat="server" ErrorMessage="Product warinty Require" ControlToValidate="Backup" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>


          <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Transation Password:</label>
       <asp:TextBox ID="Transation" class="form-control" validationgroup="addproductbutton"   runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" validationgroup="addproductbutton" runat="server" ErrorMessage="Product warinty Require" ControlToValidate="Backup" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>


         <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Login Password:</label>
       <asp:TextBox ID="login" class="form-control" validationgroup="addproductbutton"   runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" validationgroup="addproductbutton" runat="server" ErrorMessage="Product warinty Require" ControlToValidate="login" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

      <div style="text-align:center; ">
          <asp:Button ID="Change_password" class="btn btn-info" runat="server" validationgroup="addproductbutton" Text="Change Password" OnClick="Change_password_Click"  />
   
      </div>   
  </div>
</asp:Content>

