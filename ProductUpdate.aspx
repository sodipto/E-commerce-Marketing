<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ProductUpdate.aspx.cs" Inherits="Admin_ProductUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

     <div class ="container">
   <div  class="row">
<div  style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Product ID:</label>
     
        <asp:TextBox ID="p_id" class="form-control"  placeholder="Enter Product Id" runat="server" ReadOnly="True" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Product Id Require" ControlToValidate="p_id" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>
  
  <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Product Name:</label>
          <asp:TextBox ID="name" class="form-control"  placeholder="Enter Product Name" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Product Name Require" ControlToValidate="name" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

        
  <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Product Description:</label>
       <asp:TextBox ID="description" class="form-control"  placeholder="Enter Product Description" runat="server" Height="50px"></asp:TextBox>
         
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Product Description Require" ControlToValidate="description" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

<div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Product Price:</label>
        <asp:TextBox ID="price" class="form-control" runat="server" Text="" EnableViewState="False" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Product price Require" ControlToValidate="price" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

      <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Product Point:</label>
        <asp:TextBox ID="Point" class="form-control" placeholder="Enter Product Point" runat="server" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Product Point Require" ControlToValidate="Point" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

          <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Product Warinty:</label>
        <asp:TextBox ID="warinty" class="form-control" placeholder="Enter Product warinty" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Product warinty Require" ControlToValidate="warinty" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

          <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Product Image:</label>
    
<asp:FileUpload ID="p_image"  class="input-file" runat="server" />
          <asp:RequiredFieldValidator  ID="RequiredFieldValidator7" runat="server" ErrorMessage="Product p_image Require" ControlToValidate="p_image" ForeColor="Red" ValidationGroup="pp"></asp:RequiredFieldValidator>

</div>
</div>
</div>




      <div style="text-align:center; ">
          <%--<asp:Button ID="Product_Entry" class="btn btn-info" runat="server" Text="Product Update" OnClick="Product_Entry_Click" />--%>
          <asp:Button ID="Product_update" class="btn btn-info" runat="server" Text="Product Update" OnClick="Product_update_Click" ValidationGroup="pp" />
      </div> 
         

  </div>

    </asp:Content>

