<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <meta charset="utf-8">
   
  
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="ProductImage/12345.png" sizes="128x128" />

     <link href="css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        
    </style>

    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>

    <title>Login</title>
</head>
<body style="background-color:rgb(47,146,178);">
    <form id="form1" runat="server">
<div class="container" style="margin-top:100px">
<div class="col-md-4 col-md-offset-4">
    <div class="panel panel-default">
  <div class="panel-heading"><h3 class="panel-title"><strong>Sign in </strong></h3>
     <%-- <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>--%>
  </div>
  
  <div  style="background-color:orange;" class="panel-body">
 
           <div class="alert alert-danger">
                 
                 <asp:Label ID="Label1"  runat="server" Text="Log in Your Account"></asp:Label>

            </div>
        <div style="margin-bottom: 12px" class="input-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                
            <asp:TextBox style="margin-left: 10px" ID="email" class="form-control" placeholder="username or email" runat="server"></asp:TextBox>
                                                 
        </div>
                                
         <div style="margin-bottom: 12px" class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            
                   <asp:TextBox style="margin-left: 10px" ID="password" class="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
         </div>
                                    
                                    <div class="input-group">
                                      <div class="checkbox" style="margin-top: 0px;">
                                        <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                        </label>
                                      </div>
                                    </div>
                                    
     
      <asp:Button ID="Login_button" class="btn btn-success" runat="server" Text="Sign in" OnClick="Login_button_Click" />

  <hr style="margin-top:10px;margin-bottom:10px;" >
  
  <div class="form-group">
                                    
                                        <div style="font-size:85%">
                                            Don't have an account! 
                                        <a href="Registration/Registration.aspx" >
                                            Sign Up Here
                                        </a>
                                  

                                        </div>
                                    
                                </div> 

  </div>
</div>
</div>
</div>
      
    </form>
</body>
</html>
