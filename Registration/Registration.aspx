<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration_Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    	<!-- Website CSS style -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="css1.css" rel="stylesheet">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="style.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Registration</title>

    <style>

        .login-register{
	font-size: 11px;
	text-align: center;
}
    </style>
</head>

<body style="background-color:cyan;">
    <form id="form1" runat="server">
         <div class="container">
    <h1 class="well">Registration Form</h1>
	<div class="col-lg-12 well">
	<div class="row">
				
					<div class="col-sm-12">
						<div class="row">
							<div class="col-sm-6 form-group">
								<label>Full Name</label>
								
                                <asp:TextBox ID="name" class="form-control" runat="server" placeholder="Enter your Name"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="name" Display="Dynamic" ErrorMessage="Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>
							<div class="col-sm-6 form-group">
								<label>User Name</label>
								 <asp:TextBox ID="username" class="form-control" runat="server" placeholder="Enter your Username"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="username" Display="Dynamic" ErrorMessage="User Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>

                            <div class="col-sm-6 form-group">
								<label>Password</label>
								 <asp:TextBox ID="password" class="form-control" runat="server" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
									
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="password" Display="Dynamic" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>
							<div class="col-sm-6 form-group">
								<label>Confirm Password</label>
								<asp:TextBox ID="confirm" class="form-control" runat="server" placeholder="Confirm your Password" TextMode="Password"></asp:TextBox>
                                   
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="confirm" Display="Dynamic" ErrorMessage="Confirm Password Required " ForeColor="Red"></asp:RequiredFieldValidator>
                                 
								    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirm" Display="Dynamic" ErrorMessage="Does Not Match" ForeColor="Red"></asp:CompareValidator>
							</div>

						</div>					
						<div class="form-group">
							<label>Address</label>
							
                            <asp:TextBox ID="address" rows="3" class="form-control" runat="server" placeholder="Enter your Address"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="Address" Display="Dynamic" ErrorMessage="Address Required" ForeColor="Red"></asp:RequiredFieldValidator>
						</div>

                        <div class="form-group">
							<label>NID Number</label>
							
                            <asp:TextBox ID="nid" rows="3" class="form-control" runat="server" placeholder="Enter your NID Number" TextMode="Number"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="NID" Display="Dynamic" ErrorMessage="NID Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
						</div>
                        
                    
                       
                         <div class="row">
							<div class="col-sm-6 form-group">
								<label>Country</label>
								

                                    <asp:TextBox ID="country" class="form-control" runat="server" placeholder="Enter your Country"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="Country" Display="Dynamic" ErrorMessage="Country Required" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>		
							<div class="col-sm-6 form-group">
								<label>DOB</label>
							 <asp:TextBox ID="dob" class="form-control" runat="server" placeholder="Enter your DOB" TextMode="Date"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="dob" Display="Dynamic" ErrorMessage="DOB Required" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>	
						</div> 
                        	
						<div class="row">
							<div class="col-sm-4 form-group">
								<label>Father Name</label>
								<asp:TextBox ID="father" class="form-control" runat="server" placeholder="Enter your Father name"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Father" Display="Dynamic" ErrorMessage="Father Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>	
							<div class="col-sm-4 form-group">
								<label>Nomini Name</label>
								 <asp:TextBox ID="Nomini" class="form-control" runat="server" placeholder="Enter your Nomini name"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Nomini" Display="Dynamic" ErrorMessage="Nomini Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>	
							<div class="col-sm-4 form-group">
								<label>Nomini Relation</label>
								 <asp:TextBox ID="Nomini_Relation" class="form-control" runat="server" placeholder="Enter your Nomini Relation"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Nomini_Relation" Display="Dynamic" ErrorMessage="Nomini Relation Required" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>		
						</div>

                        <div class="row">
							<div class="col-sm-6 form-group">
								<label>Mobile</label>
								<asp:TextBox ID="Mobile" class="form-control" runat="server" placeholder="Enter your Mobile Number" TextMode="Number"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Mobile" Display="Dynamic" ErrorMessage="Mobile Number Required" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>	
							<div class="col-sm-6 form-group">
								<label>Email</label>
								<asp:TextBox ID="email" class="form-control" runat="server" placeholder="Enter your Email"></asp:TextBox>
								   
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" Display="Dynamic" ErrorMessage="Email Is Not valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
							</div>	
									
						</div>

                         <div class="row">
							<div class="col-sm-6 form-group">
								<label>Product Id</label>
							 <asp:TextBox ID="p_id" class="form-control" runat="server" placeholder="Enter your Product ID"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="p_id" Display="Dynamic" ErrorMessage="Product ID Required" ForeColor="Red"></asp:RequiredFieldValidator>
							</div>		
							<div class="col-sm-6 form-group">
								<label>Bank Account</label>
								
                                 <asp:TextBox ID="bank_account" class="form-control" runat="server" placeholder="Enter your Bank Account"></asp:TextBox>

							</div>	
						</div> 
                       <div class="row">
                        <div class=" col-sm-6 form-group">
							<label>Reffer Account</label>
							
                            <asp:TextBox ID="parent" class="form-control" runat="server" placeholder="Enter your Parent"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Parent" Display="Dynamic" ErrorMessage="Parent Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                             <div class=" col-sm-6 form-group">
							<label>Direct income Account</label>
							
                            <asp:TextBox ID="D_income" class="form-control" runat="server" placeholder="Enter your Direct income Account Name"></asp:TextBox>
								    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="D_income" Display="Dynamic" ErrorMessage="Direct income Account Name Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
						</div>
                        </div>

                   <div  style="text-align:center; font-size: 20px;" class="form-group ">
					
	
                       <asp:CheckBox ID="condition" runat="server" />I agree with All the conditions and Terms.
                     	
                       
                   </div>	
                   <div  style="text-align:center; font-size: 11px;" class="form-group ">
					
	
                       
                     <asp:Button ID="Register" runat="server" class="btn btn-primary btn-lg" Text="Register" OnClick="Register_Click" />  	
                       
                   </div>			
					</div>
				
				</div>
	</div>
	</div>
    </form>
    	 
   
		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>

   <!-- Alert Message -->
    <script type="text/javascript">

        function Alert_insert() {
            if (confirm("Are you sure want to insert....?")) {

                return true;
            
            }
        else{
           return false;
        }

        }

    </script> 

  

</body>
</html>
