<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="user_UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="css/bootstrap.min.css" rel="stylesheet"/>
      <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet"/>
    
     <link href="css/navbar.css" rel="stylesheet"/>
    <title>Profile</title>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>



<body>
    <form id="form1" runat="server">
   <div class="navbar-wrapper">
    <div class="container-fluid">
        <nav class="navbar navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">MUKTOBAZAR BD</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"> <asp:LinkButton ID="LinkButton2" href="user.aspx" runat="server">Home</asp:LinkButton></li>
                           
                         <li class=""><a href="#" class="">Profile</a></li>
                         
                      
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                      <li class=""><a href="#">Balance:<asp:Label ID="Balance" runat="server" Text=""></asp:Label> Taka</a></li>
                        <li class=""><a href="#">
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label></a></li>
                         <li class=""> <asp:LinkButton ID="LinkButton1" OnClick="Logout_Click" runat="server">Logout</asp:LinkButton></li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</div>

<div style="padding-top: 80px;" class="container">
      <div class="row">
     
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
   
   
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">Sheena Shrestha</h3>
            </div>
            <div class="panel-body">
              <div class="row">
               
               
                <div class=" col-md-9 col-lg-9 "> 
                    <asp:Repeater ID="R1" runat="server">
              <HeaderTemplate>
                  <table class="table table-user-information">
                      </HeaderTemplate>
                   <ItemTemplate>
                                           <tbody>
                      <tr>
                        <td>FullName:</td>
                        <td><%#Eval("full_name") %></td>
                      </tr>
                      <tr>
                        <td>UserName:</td>
                        <td><%#Eval("username") %></td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><%#Eval("email") %></td>
                      </tr>
                   
                         
                       <tr>
                        <td>Reffer Name</td>
                        <td><%#Eval("parent") %></td>
                      </tr>
                        
                                               
                       <tr>
                        <td>Father Name</td>
                        <td><%#Eval("f_name") %></td>
                      </tr>

                        <tr>
                        <td>Nomini Name</td>
                        <td><%#Eval("nomini_name") %></td>
                      </tr>
                      <tr>
                        <td>Nomini Relation</td>
                        <td><%#Eval("nomini_relation") %></td>
                      </tr>
                        <td>DOB</td>
                    
                        <td><%#Eval("dob") %></td>
                       <tr>
                           <td>Phone Number</td>
                            <td><%#Eval("mobile") %></td>
                       
                      </tr>

                      <tr>
                           <td>Address</td>
                           <td><%#Eval("address") %></td>
                    
                      </tr>

                      <tr>
                           <td>Country</td>
                          <td><%#Eval("country") %></td>
                       
                      </tr>

                      <tr>
                           <td>Bank Account</td>
                           <td><%#Eval("bank_account") %></td>
                      
                      </tr>

                       <tr>
                           <td>NID</td>
                            <td><%#Eval("nid") %></td>
                    
                      </tr>

                      <tr>
                           <td>Status</td>
                           <td><%#Eval("status") %></td>
                       
                      </tr>

                      
                     
                    </tbody>
                       </ItemTemplate>
                <FooterTemplate>
                  </table>
                  </FooterTemplate>
                 </asp:Repeater>
                </div>
              </div>
            </div>
                 <div class="panel-footer">
                        <a data-original-title="Broadcast Message" data-toggle="tooltip" type="button" class="btn btn-sm btn-primary"><i class="glyphicon glyphicon-envelope"></i></a>
                        <span class="pull-right">
                            <a href="edit.html" data-original-title="Edit this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-warning"><i class="glyphicon glyphicon-edit"></i></a>
                            <a data-original-title="Remove this user" data-toggle="tooltip" type="button" class="btn btn-sm btn-danger"><i class="glyphicon glyphicon-remove"></i></a>
                        </span>
                    </div>
            
          </div>
        </div>
      </div>
    </div>
    </form>
</body>
</html>
