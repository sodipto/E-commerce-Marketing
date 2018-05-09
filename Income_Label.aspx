<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Income_Label.aspx.cs" Inherits="Income_Label" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <h1 style="text-align:center; color:blue;">Income Label</h1>

         

  <div  class ="pull-right form-inline">
        
        <h1>Income Label</h1>
      </br>
      </br>

         <div class="btn btn-info glyphicon glyphicon-conversation">
              <asp:Button ID="B15" runat="server" Text="15:15" BackColor="Transparent" BorderWidth="0" OnClick="B15_Click"  />
             
        </div>  
      </br>
       </br>
       </br>
      <div class="btn btn-success glyphicon glyphicon-conversation">
              <asp:Button ID="B31" runat="server" Text="31:31" BackColor="Transparent" BorderWidth="0" OnClick="B31_Click"  />
             
        </div> 
      </br>
       </br>
       </br>
      <div class="btn btn-danger glyphicon glyphicon-conversation">
              <asp:Button ID="B63" runat="server" Text="63:63" BackColor="Transparent" BorderWidth="0"  OnClick="B63_Click" />
             
        </div>            
                
            
    </div>

    <div  class ="pull-left form-inline">
           <div  class="row">
     <div class="col-md-8">
    <div class="form-group">
      <label for="email"><h1>Direct Income</h1></label>
     
        <asp:TextBox ID="username" class="form-control"   runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup="u_P"  ID="RequiredFieldValidator1" runat="server" ErrorMessage="Product Id Require" ControlToValidate="username" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
</div>
</div>
           <br>
        </br>
           <br>
        </br>
       
        
         <div class="btn btn-danger glyphicon glyphicon-ok-sign">
              <asp:Button ID="Update_click" runat="server" Text="Update" BackColor="Transparent" BorderWidth="0"  ValidationGroup="u_P" OnClick="Update_click_Click" />
             
        </div>   
                  
           <br>   
                  
        </br>
           <br>
       </br>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                 
            
    </div>



</asp:Content>

