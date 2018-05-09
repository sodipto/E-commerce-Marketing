<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Mainpage_Default" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>MUKTOBAZAR BD</title>
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
    <form id="form2" runat="server">
    <div id="preloader">
        <div id="load">
        </div>
    </div>
    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.aspx">
                    <h1>MUKTOBAZAR</h1>
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#intro">Home</a></li>
        <li><a href="#Product">Product</a></li>
		<li><a href="#Catagory">Catagory</a></li>
		<li><a href="#contact">Contact</a></li>
        <li><a href="../Registration/Registration.aspx">Register</a></li>
		<li><a href="../Login.aspx">Login</a></li>
      </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Section: intro -->
    <section id="intro" class="intro">
	
		<div class="slogan">
			<h2>WELCOME TO <span class="text_color">Muktobazar</span> </h2>
			<h4>
            <br />
             All The Product Choose here.
            </h4>
		</div>
		<div class="page-scroll">
			<a href="#Product" class="btn btn-circle">
				<i class="fa fa-angle-double-down animated"></i>
			</a>
		</div>
    </section>
    <!-- /Section: intro -->
    <section id="feature">
        <div class="container">
           <div class="center wow fadeInDown">
                <h2>About</h2>
                <p class="lead">Masum Vai About Koi</p>
               <p class="lead">About Details here </p>
               <p class="lead">About Details here </p>
            </div>

            <div class="row">
             
            </div><!--/.row-->    
        </div><!--/.container-->
    </section>
    <!--/#feature-->
    <!-- Section: about -->
    <section id="Product" class="home-section text-center">
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow fadeInUp" data-wow-delay="0.4s">
					<div class="section-heading">
					<h1>Product</h1>
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
           <%-- <div class="col-lg-4 col-sm-4">
                <div class="preview">
                    <div class="image">
                        <a>
                            <img class="img-responsive" src="images/htmlandcss.png" alt="HTML and CSS: Design and Build Websites, by Jon Duckett"></a>
                    </div>
                    <div class="options">
                        <h3>
                            HTML &amp; CSS</h3>
                        <p>
                            Jon Duckett</p>
                        <div>
                            <div class="btn-group">
                                <a class="btn btn-primary" href="#" target="_blank">Details</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-4">
                <div class="preview">
                    <div class="image">
                        <a href="#" target="_blank">
                            <img class="img-responsive" src="images/eloquentjavascript.png" alt="Eloquent JavaScript, by Marijn Haverbeke"></a>
                    </div>
                    <div class="options">
                        <h3>
                            Eloquent Android</h3>
                        <p>
                            Marijn Haverbeke</p>
                        <div>
                            <div class="btn-group">
                                <a class="btn btn-primary" href="#" target="_blank">Details</a></div>
                        </div>
                    </div>
                </div>
            </div>--%>
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
      <%-- <div class="col-lg-4 col-sm-4">
                <div class="preview">
                    <div class="image">
                        <a>
                            <img class="img-responsive" src="images/htmlandcss.png" alt="HTML and CSS: Design and Build Websites, by Jon Duckett"></a>
                    </div>
                    <div class="options">
                        <h3>
                            HTML &amp; CSS</h3>
                        <p>
                            Jon Duckett</p>
                        <div>
                            <div class="btn-group">
                                <a class="btn btn-primary" href="#" target="_blank">Details</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-4">
                <div class="preview">
                    <div class="image">
                        <a href="#" target="_blank">
                            <img class="img-responsive" src="images/eloquentjavascript.png" alt="Eloquent JavaScript, by Marijn Haverbeke"></a>
                    </div>
                    <div class="options">
                        <h3>
                            Eloquent Android</h3>
                        <p>
                            Marijn Haverbeke</p>
                        <div>
                            <div class="btn-group">
                                <a class="btn btn-primary" href="#" target="_blank">Details</a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-4">
                <div class="preview">
                    <div class="image">
                        <img class="img-responsive" src="images/beautifulwebdesign.png" alt="The Principles of Beautiful Web Design, by Jason Beaird"></a>
                    </div>
                    <div class="options">
                        <h3>
                            Beautiful  Web Design</h3>
                        <p>
                            Jason Beaird</p>
                        <div>
                            <div class="btn-group">
                                <a class="btn btn-primary" href="#" target="_blank">Details</a></div>
                        </div>
                    </div>
                </div>
            </div>--%>

      <div>

    <asp:Button ID="Button1" class="btn btn-primary" Text="View More" runat="server" OnClick="Button1_Click"></asp:Button>
      </div>



        </div>		
		</div>
	</section>
    <!-- /Section: about -->
    <!-- Section: services -->
    <section id="Catagory" class="home-section text-center bg-gray">		
		<div class="heading-about">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h1>Product Catagory</h1>					
					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container">
		
        <div class="row">
            <div class="col-sm-3 col-md-3">
				<div class="wow fadeInLeft" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-1.png" alt="" />
					</div>
					<div class="service-desc">
						<a href="ALLProduct.aspx"><h5>Electronics</h5></a>
						<p>Details here</p>
					</div>
                </div>
				</div>
            </div>
			<div class="col-sm-3 col-md-3">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-2.png" alt="" />
					</div>
					<div class="service-desc">
						<a href="ALLProduct.aspx"><h5>Mobile</h5></a>
						<p>Details here</p>
					</div>
                </div>
				</div>
            </div>
			<div class="col-sm-3 col-md-3">
				<div class="wow fadeInUp" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-3.png" alt="" />
					</div>
					<div class="service-desc">
						<a href="ALLProduct.aspx"><h5>Refrigerator</h5></a>
						<p>Details here</p>
					</div>
                </div>
				</div>
            </div>
			<div class="col-sm-3 col-md-3">
				<div class="wow fadeInRight" data-wow-delay="0.2s">
                <div class="service-box">
					<div class="service-icon">
						<img src="img/icons/service-icon-4.png" alt="" />
					</div>
					<div class="service-desc">
						<a href="ALLProduct.aspx"><h5>Other</h5></a>
						<p>Details here</p>
					</div>
                </div>
				</div>
            </div>
        </div>		
		</div>


	</section>
    <!-- /Section: services -->
    <!-- Section: contact -->
    <section id="contact" class="home-section text-center">
		<div class="heading-contact">
			<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<div class="wow bounceInDown" data-wow-delay="0.4s">
					<div class="section-heading">
					<h2>Conatct</h2>					
					</div>
					</div>
				</div>
			</div>
			</div>
		</div>
		<div class="container">		
    <div class="row">
        <div class="col-lg-8">
            <div class="boxed-grey">
                <form id="contact-form">
                <div class="row">
                    <div class="col-md-10">
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Name" CssClass="labelnew"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter name" ValidationGroup="con"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Email Address" CssClass="labelnew"></asp:Label>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Enter email" ValidationGroup="con" ></asp:TextBox>
                        
                    </div>
                    
                          <div class="form-group">
                            <asp:Label ID="lblmsg" runat="server" Text="Message" CssClass="labelnew"></asp:Label>
                              <asp:TextBox ID="TextBox2" runat="server" placeholder="Message" CssClass="form-control"  ValidationGroup="con" TextMode="MultiLine" Rows="9" Columns="25" ></asp:TextBox>
                           </div>
                      
                   
                    <div class="col-md-12">
                     <%--   <button type="submit" class="btn btn-skin pull-right" id="btnContactUs">--%>
                     <asp:Button ID="Button2" class="btn btn-skin pull-right" runat="server" ValidationGroup="con"  Text=" Send Message"></asp:Button>

                           
                    </div>
                </div>
                </div>
                </form>
            </div>
        </div>
		
		<div class="col-lg-4">
			<div class="widget-contact">
				<h5>Chage Here</h5>
				
				<address>
				  <strong>State</strong><br>
				Place<br>
				  Adress Here<br>
				  <abbr title="Phone">Ph:</abbr> 01111111
				</address>

				<address>
				  <strong>Email</strong><br>
				  <a href="mailto:#">mutobazar@example.com</a>
				</address>	
				<address>
				  <strong>We're on social networks also</strong><br>
                       	<ul class="company-social">
                            <li class="social-facebook"><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                            <li class="social-twitter"><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                            <li class="social-dribble"><a href="#" target="_blank"><i class="fa fa-dribbble"></i></a></li>
                            <li class="social-google"><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                        </ul>	
				</address>					
			
			</div>	
		</div>
    </div>	

		</div>
	</section>
    <!-- /Section: contact -->
    <footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="wow shake" data-wow-delay="0.4s">
					<div class="page-scroll marginbot-30">
						<a href="#intro" id="totop" class="btn btn-circle">
							<i class="fa fa-angle-double-up animated"></i>
						</a>
					</div>
					</div>
					<p>&copy;Copyright 2017 - MUKTOBAZARBD All rights reserved.</p>
				</div>
			</div>	
		</div>
	</footer>
    <!-- Core JavaScript Files -->
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.easing.min.js" type="text/javascript"></script>
    <script src="js/jquery.scrollTo.js" type="text/javascript"></script>
    <script src="js/wow.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js" type="text/javascript"></script>
    </form>
</body>
</html>

