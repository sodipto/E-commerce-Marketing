<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="UserUpdate.aspx.cs" Inherits="UserUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
     <div class ="container">
   <div  class="row">
<div  style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Username:</label>
     
        <asp:TextBox ID="username" class="form-control"   runat="server" ReadOnly="True" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Product Id Require" ControlToValidate="username" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>
  
  <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Full Name:</label>
          <asp:TextBox ID="full_name" class="form-control"  runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Product Name Require" ControlToValidate="full_name" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

        
  <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Password:</label>
       <asp:TextBox ID="Password" class="form-control"  runat="server" Height="50px"></asp:TextBox>
         
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Product Description Require" ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

<div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Email:</label>
        <asp:TextBox ID="email" class="form-control" runat="server" Text="" EnableViewState="False" ></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Product price Require" ControlToValidate="email" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

      <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">parent:</label>
        <asp:TextBox ID="parent" class="form-control" runat="server" ReadOnly="True"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Product Point Require" ControlToValidate="parent" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

          <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Father Name:</label>
        <asp:TextBox ID="f_name" class="form-control" placeholder="Enter Product warinty" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Product warinty Require" ControlToValidate="f_name" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

          <div class="row">
 
<div style="padding-left:300px;"  class="col-md-8">
    <div class="form-group">
      <label for="email">Nomini Name:</label>
        <asp:TextBox ID="nomini_name" class="form-control"  runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Require" ControlToValidate="nomini_name" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

    <div class="row">
 
       <div style="padding-left:300px;"  class="col-md-8">
            <div class="form-group">
                <label for="email">Nomini Relation:</label>
                <asp:TextBox ID="nomini_relation" class="form-control"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Require" ControlToValidate="nomini_relation" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>


    <div class="row">
 
       <div style="padding-left:300px;"  class="col-md-8">
            <div class="form-group">
                <label for="email">DOB:</label>
                <asp:TextBox ID="dob" class="form-control"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Require" ControlToValidate="dob" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>

  
    <div class="row">
 
       <div style="padding-left:300px;"  class="col-md-8">
            <div class="form-group">
                <label for="email">Product ID:</label>
                <asp:TextBox ID="p_id" class="form-control"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Require" ControlToValidate="p_id" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>

          <div class="row">
 
       <div style="padding-left:300px;"  class="col-md-8">
            <div class="form-group">
                <label for="email">Mobile Number:</label>
                <asp:TextBox ID="mobile" class="form-control"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Require" ControlToValidate="mobile" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>

         
          <div class="row">
 
       <div style="padding-left:300px;"  class="col-md-8">
            <div class="form-group">
                <label for="email">Address:</label>
                <asp:TextBox ID="address" class="form-control"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Require" ControlToValidate="address" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>

             <div class="row">
 
       <div style="padding-left:300px;"  class="col-md-8">
            <div class="form-group">
                <label for="email">Country:</label>
                <asp:TextBox ID="country" class="form-control"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="Require" ControlToValidate="country" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>

             <div class="row">
 
       <div style="padding-left:300px;"  class="col-md-8">
            <div class="form-group">
                <label for="email">Bank Account NO:</label>
                <asp:TextBox ID="bank_account" class="form-control"  runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="Require" ControlToValidate="bank_account" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>

            <div class="row">
 
       <div style="padding-left:300px;"  class="col-md-8">
            <div class="form-group">
                <label for="email">NID NO:</label>
                <asp:TextBox ID="nid" class="form-control"  runat="server" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="Require" ControlToValidate="nid" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>

         
            <div class="row">
 
       <div style="padding-left:300px;"  class="col-md-8">
            <div class="form-group">
                <label for="email">Dirrect Refferel Income:</label>
                <asp:TextBox ID="direct_income_acc" class="form-control"  ReadOnly="True" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="Require" ControlToValidate="direct_income_acc" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>



         
            <div class="row">
 
       <div style="padding-left:300px;"  class="col-md-8">
            <div class="form-group">
                <label for="email">Status:</label>
                <asp:TextBox ID="status" class="form-control"  runat="server" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="Require" ControlToValidate="status" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
        </div>
    </div>




      <div style="text-align:center; ">
          <%--<asp:Button ID="Product_Entry" class="btn btn-info" runat="server" Text="Product Update" OnClick="Product_Entry_Click" />--%>
          <asp:Button ID="User_update" class="btn btn-info" runat="server" Text="User Update" OnClick="User_update_Click" />
      </div> 
         

  </div>
</asp:Content>

