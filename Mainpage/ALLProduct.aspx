<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ALLProduct.aspx.cs" Inherits="Mainpage_ALLProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>ALL Product List</title>
    <!-- Bootstrap Css -->
    <link href="css/bootstrap.min.css" type="text/css" rel="Stylesheet" />
    <link href="p.css" type="text/css" rel="Stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link href="css/default.css" rel="stylesheet" type="text/css" />
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
     <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet" type="text/css" />
    </head>
<body id="page-top" data-spy="scroll" data-target=".navbar-custom">
    <form id="form1" runat="server">
     
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="Default.aspx">
                    <h1>MUKTOBAZAR</h1>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Default.aspx">Home</a></li>
          <%-- <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Catagory <b class="caret"></b></a>
          <ul class="dropdown-menu">
            
          </ul>
        </li>--%>
        <li><a href="#Product">Product</a></li>
		
        <li><a href="../Registration/Registration.aspx">Register</a></li>
		<li><a href="../Login.aspx">Login</a></li>
      </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

        <section id="intro" class="intro">
	
		<div class="slogan">
			<h2>WELCOME TO <span class="text_color">Muktobazar</span> </h2>
			<h4>
            <br />
             All The Product Choose here.
            </h4>
		</div>
		
    </section>
  <section id="Product" class="home-section text-center">
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow fadeInUp" data-wow-delay="0.4s">
					<div class="section-heading">
					<h1>Catagory Product Search Here</h1>

                <asp:DropDownList ID="D1" class="form-control" runat ="server" AutoPostBack="True" OnSelectedIndexChanged="D1_SelectedIndexChanged">
              <asp:ListItem> Direct cool Refrigerator</asp:ListItem>  
                            <asp:ListItem> Non-Frost Refrigerator</asp:ListItem>  
                            <asp:ListItem> Freezer</asp:ListItem>  


                            <asp:ListItem>Smart Tv </asp:ListItem> 
                              <asp:ListItem>LED TV </asp:ListItem> 
                          <asp:ListItem>Air Conditioner </asp:ListItem> 
                        
                             <asp:ListItem>Smart Phone </asp:ListItem> 
                             <asp:ListItem> Feature Phone</asp:ListItem> 
                            <asp:ListItem>Air Cooler</asp:ListItem>  
                            <asp:ListItem>Air Fryer</asp:ListItem>  
                            <asp:ListItem>Blender & Juicer</asp:ListItem>  
                            <asp:ListItem>Coffee Maker</asp:ListItem>  
                            <asp:ListItem>Food Processor</asp:ListItem> 



                            <asp:ListItem> Gas Stove</asp:ListItem>  
                            <asp:ListItem>Induction Cooker </asp:ListItem>  
                            <asp:ListItem>Iron </asp:ListItem>  
                            <asp:ListItem> Kettle(Electric)</asp:ListItem>  
                            <asp:ListItem>Kitchen Cookware </asp:ListItem> 


                             <asp:ListItem>Microwave oven </asp:ListItem>  
                            <asp:ListItem>Rechargeable lamp </asp:ListItem>  
                            <asp:ListItem>Rice coocker </asp:ListItem>  
                            <asp:ListItem> Celing fan</asp:ListItem>  
                            <asp:ListItem> Table Fan</asp:ListItem> 

                          <asp:ListItem>Consumer Product </asp:ListItem>  
              </asp:DropDownList>
					<br />

					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container">
		
  <div class="row">
          <div class="col-lg-12">
                <h1>
                   Product Item</h1>
               
            </div>
      
<asp:Repeater ID="R1" runat="server">
      <itemtemplate>
            <div class="col-lg-4 col-sm-4">
                <div class="preview">
                    <div class="image">
                        <img style="max-height:180px; " class="img-responsive" src="../ProductImage/<%# Eval("image") %>" alt="The Principles of Beautiful Web Design, by Jason Beaird" height="180px"  width="360px"></a>
                    </div>
                    <div class="options">
                        
                           <h3><%#Eval("productName") %></h3>
                           <p><%#Eval("productDescription") %></p>
                           <p>Price:<%#Eval("productPrice") %></p>
                           <p>Point:<%#Eval("productPoint") %></p>
                           <p>Warinty:<%#Eval("productWarinty") %></p>
                            <p>Catagory:<%#Eval("catagory") %></p>
                        

                       
                    </div>
                </div>
            </div>
          </itemtemplate>

  </asp:Repeater>
     
 </div>     
              <div style="overflow: hidden;">

<asp:Repeater ID="rptPaging" runat="server" OnItemCommand="rptPaging_ItemCommand">
 <ItemTemplate>
  <asp:LinkButton ID="btnPage"
   style="padding:8px;margin:2px;background:#ffa100;border:solid 1px #666;font:8pt tahoma;"
   CommandName="Page" CommandArgument="<%# Container.DataItem %>"
   runat="server" ForeColor="White" Font-Bold="True">
    <%# Container.DataItem %>
  </asp:LinkButton>
 </ItemTemplate>
</asp:Repeater>

</div>	
		

    </form>

     <!-- Core JavaScript Files -->
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.easing.min.js" type="text/javascript"></script>
    <script src="js/jquery.scrollTo.js" type="text/javascript"></script>
    <script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js" type="text/javascript"></script>
</body>
</html>
