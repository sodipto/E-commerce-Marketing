<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Withdraw.aspx.cs" Inherits="Withdraw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 style="text-align:center;">Balance Withdraw</h2>
    </br>
    <div  class ="form-inline" style="text-align:center;">
         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" validationgroup="s" runat="server" ControlToValidate="SearchTextbox"  ForeColor="Red" ErrorMessage="Usernsme requere" Display="Dynamic"></asp:RequiredFieldValidator>
    <asp:TextBox ID="SearchTextbox" validationgroup="s" class="form-control" runat="server"></asp:TextBox>
       
         <div class="btn btn-info glyphicon glyphicon-search">
              <asp:Button ID="Search_Button" validationgroup="s" runat="server" Text="Search" BackColor="Transparent" BorderWidth="0" OnClick="Search_Button_Click" />
            
        </div> 
          
    </div>
   
       

    <div style="padding-top:50px;"class="container">

        
        <div class="row">

            <div class="col-md-6">
                    
                   <div  class="row">
 
<div  class="col-md-8">
    <div class="form-group">
      <label for="email">Username:</label>
     
        <asp:TextBox ID="userName" class="form-control"  validationgroup="w"  placeholder="Enter Username"   runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"  validationgroup="w" runat="server" ErrorMessage="Username Require" ControlToValidate="userName" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>
                     <div  class="row">
 
<div  class="col-md-8">
    <div class="form-group">
      <label for="email">Balance:</label>
    <%-- required="required"--%>
        <asp:TextBox ID="Balance"  validationgroup="w" class="form-control"  placeholder="Enter Withdraw  Balance"  runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator  validationgroup="w" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Balance Require" ControlToValidate="Balance" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>

                
                     <div  class="row">
 
<div  class="col-md-8">
    <div class="form-group">
      <label for="email">
          <asp:Label ID="Label1" runat="server" Text=""></asp:Label></label>
   
    </div>
</div>
</div>
        <div style="padding-left:130px;">
          <asp:Button ID="WithdrawButton"  validationgroup="w" class="btn btn-info" runat="server" Text="Withdraw" OnClick="WithdrawButton_Click" />
   
      </div>
 

      </div>

            <div class="col-md-6">
              <div class="row">
                   <div class="col-md-8">
               <div class="panel panel-danger ">
                        <div class="panel-heading">Balance Withdraw</div>
                        <div class="panel-body">Username:<asp:Label ID="Username_label" runat="server" Text=""></asp:Label></div>
                        <div class="panel-footer">Balance:<asp:Label ID="Balance_label" runat="server" Text=""></asp:Label>Taka</div>
                </div>
                  </div>
              </div>

                 <div style="padding-left:130px;">
                     <asp:Button ID="ClearButton" class="btn btn-info" runat="server" Text="Clear" OnClick="ClearButton_Click" />
   
                 </div>
 
            </div>



        </div>




    </div>
     
    

</asp:Content>

