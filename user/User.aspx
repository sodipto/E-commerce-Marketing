<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="user_User" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
                        <li class="active"><a href="#" class="">Home</a></li>
                         <li class=""><asp:LinkButton ID="LinkButton2" OnClick="Profile_Click" runat="server">Profile</asp:LinkButton></li>
                          
                      
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

<div style="padding-top:80px;" class="container">
  <h2 style="text-align:center;">Today Your Left Right Child</h2>
  
<div style="padding-top:70px;"  class="row">
  <div class="panel-group col-md-6">
    <div class="panel panel-primary">
      <div class="panel-heading">Left Child</div>
      <div class="panel-body">Count:<asp:Label ID="Left" runat="server" Text="Label"></asp:Label></div>
    </div>

    
  </div>

    <div class="panel-group col-md-6">
    <div class="panel panel-danger">
      <div class="panel-heading">Right Child</div>
      <div class="panel-body">Count:<asp:Label ID="Right" runat="server" Text="Label"></asp:Label></div>
    </div>

    
  </div>
</div>
</div>
    </form>
</body>
</html>
