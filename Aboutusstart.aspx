<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Aboutusstart.aspx.cs" Inherits="Aboutusstart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <meta name="robots" content="all,follow">
    <meta name="googlebot" content="index,follow,snippet,archive">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <meta name="keywords" content="">

    <title>
        Obaju : e-commerce template
    </title>
   
 
   <link href='https://fonts.googleapis.com/css?family=Raleway:400,200' rel='stylesheet' type='text/css'/> 
  
  <link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"/>
    <meta name="keywords" content="">

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'>

    <!-- styles -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">

    <!-- theme stylesheet -->
    <link href="css/style.default.css" rel="stylesheet" id="stylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/custom.css" rel="stylesheet">

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">

  
</head>
<body>
    <form id="form1" runat="server">
        <div>
         



    




    <!-- *** TOPBAR ***
 _________________________________________________________ -->
    <div id="top">
        <div class="container">
           <div class="col-md-6 offer" data-animate="fadeInDown">
                

                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                    <asp:Panel runat="server" ID="Panel1" Visible="true">

                        <a href="#" class="btn btn-success btn-sm" id="tag" runat="server" data-animate-hover="shake" visible="False">Update</a>  <asp:Label runat="server" ID="Label1" ></asp:Label>
                        
                    </asp:Panel>
                        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                        </ContentTemplate>
                </asp:UpdatePanel>

            </div>
            <div class="col-md-6" data-animate="fadeInDown">
                <ul class="menu">
                    <li><a href="login.aspx" >Login</a>
                    </li>
                    <li><a href="register.aspx">Register</a>
                    </li>
                    <li><a href="contact.html">Contact</a>
                    </li>
                    <li><a href="admin.aspx">Admin</a>
                    </li>
                </ul>
            </div>
        </div>
        
    </div>

    <!-- *** TOP BAR END *** -->

    <!-- *** NAVBAR ***
 _________________________________________________________ -->

    <div class="navbar navbar-default yamm" role="navigation" id="navbar">
        <div class="container">
            <div class="navbar-header">

                <a class="navbar-brand home" href="index.html" data-animate-hover="bounce">
                    <img src="images/bluelogo3.png" alt="Hijab Store Logo" class="hidden-xs">
                    <img src="images/bluelogo3.png" alt="Hijab Store Logo" class="visible-xs">
                </a>
                <div class="navbar-buttons">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-align-justify"></i>
                    </button>
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                   
                </div>
            </div>
            <!--/.navbar-header -->

            <div class="navbar-collapse collapse" id="navigation">
<ul class="nav navbar-nav navbar-left">
                    <li class="active"><a href="startpage.aspx">Home</a>
                    </li>
                    <li class="dropdown yamm-fw">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Our Products <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <div class="yamm-content">
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <h5 style="color:black">Hijab Store</h5>
                                            <ul>
                                                <li><a href="category.html">Pleated Hijab</a>
                                                </li>
                                                <li><a href="category.html">Crinkled Hijab</a>
                                                </li>
                                                <li><a href="category.html">Cotton Hijab</a>
                                                </li>
                                                <li><a href="category.html"></a>
                                                </li>
                                                
                                            </ul>
                                        </div>
                                        <div class="col-sm-3">
                                            <h5 style="color:black">Party Store</h5>
                                            <ul>
                                                <li><a href="category.html">Cotton linen with sequins</a>
                                                </li>
                                                <li><a href="category.html">StoneMesh Hijab</a>
                                                </li>
                                                <li><a href="category.html">Embroidered Hijab</a>
                                                </li>
                                                <li><a href="category.html">Beaded Hijab</a>
                                                </li>
                                            </ul>
                                        </div>
                                
                                        
                                        <div class="col-sm-3">
                                            <div class="banner">
                                                <a href="#">
                                                    <img src="img/banner.jpg" class="img img-responsive" alt="">
                                                </a>
                                            </div>
                                            <div class="banner">
                                                <a href="#">
                                                    <img src="img/banner2.jpg" class="img img-responsive" alt="">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- /.yamm-content -->
                            </li>
                        </ul>
                    </li>

                   <li class="dropdown yamm-fw">
                       <a href="Aboutusstart.aspx" data-hover="dropdown" data-delay="200">About Us</a>
                   </li> 
                   
                   <li class="dropdown yamm-fw">
                       <a href="Contactusstart.aspx" data-hover="dropdown" data-delay="200">Contact Us</a>
                   </li> 
                    <li class="dropdown yamm-fw">
                       <a href="Faqstart.aspx" data-hover="dropdown" data-delay="200">Faq</a>
                   </li> 
                </ul>

            </div>
            <!--/.nav-collapse -->

            <div class="navbar-buttons">

                <div class="navbar-collapse collapse right" id="basket-overview">
                   
                </div>
                <!--/.nav-collapse -->

                

            </div>

            <div class="collapse clearfix" id="search">

                

            </div>
            <!--/.nav-collapse -->

        </div>
        <!-- /.container -->
    </div>
    <!-- /#navbar -->
    <div id="all">
            <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#" style="color: #4fbfa8">Home</a>
                        </li>
                        <li>Text page</li>
                    </ul>
                </div>

                <div class="col-md-3">
                    <!-- *** PAGES MENU ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Pages</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked">
                                <li>
                                    <a href="Aboutusstart.aspx" style="color: #4fbfa8">About Us</a>
                                </li>
                                <li>
                                    <a href="Contactusstart.aspx" style="color: #4fbfa8">Contact Us</a>
                                </li>
                                <li>
                                    <a href="Faqstart.aspx" style="color: #4fbfa8">FAQ</a>
                                </li>

                            </ul>

                        </div>
                    </div>

                    <!-- *** PAGES MENU END *** -->


                    <div class="banner">
                        <a href="#">
                            <img src="img/banner.jpg" alt="sales 2014" class="img-responsive">
                        </a>
                    </div>
                </div>

                <div class="col-md-9">

                    <div class="box" id="text-page">
                        <h1>Text formatting - Header level 1</h1>

                        <p class="lead">This page aim is to show you the most common HTML elements appearance on the website. For further reference please visit official <a href="http://getbootstrap.com/css/" class="external">Bootstrap website</a>.</p>

                        <p><strong>Pellentesque habitant morbi tristique</strong> senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. <em>Aenean ultricies mi vitae est.</em> Mauris
                            placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, <code>commodo vitae</code>, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum
                            rutrum orci, sagittis tempus lacus enim ac dui. <a href="#">Donec non enim</a> in turpis pulvinar facilisis. Ut felis.</p>

                        <h2>Header Level 2</h2>

                        <ol>
                            <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                            <li>Aliquam tincidunt mauris eu risus.</li>
                        </ol>

                        <blockquote>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus magna. Cras in mi at felis aliquet congue. Ut a est eget ligula molestie gravida. Curabitur massa. Donec eleifend, libero at sagittis mollis, tellus est malesuada
                                tellus, at luctus turpis elit sit amet quam. Vivamus pretium ornare est.</p>
                        </blockquote>

                        <h3>Header Level 3</h3>

                        <ul>
                            <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                            <li>Aliquam tincidunt mauris eu risus.</li>
                        </ul>

                        <hr>

                        <h2>Images</h2>

                        <div class="row">
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="img/detailsquare.jpg" class="img-circle img-responsive" alt="">
                                </p>
                                <p class="text-center">circle</p>
                            </div>
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="img/detailsquare.jpg" class="img-thumbnail  img-responsive" alt="">
                                </p>
                                <p class="text-center">thumbnail</p>
                            </div>
                            <div class="col-md-4">
                                <p class="text-center">
                                    <img src="img/detailsquare.jpg" class="img-rounded img-responsive" alt="">
                                </p>
                                <p class="text-center">rounded</p>
                            </div>
                        </div>

                    </div>


                </div>
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
                 <div id="copyright">
            <div class="container">
                <div class="col-md-5"></div>
                <div class="col-md-4">
                    <p >Website designed by <span style="color: #4fbfa8">Sumayya Kp</span> @2018</p>

                </div>
              
            </div>
        </div>
        <!-- *** COPYRIGHT END *** -->



    </div>
    <!-- /#all -->


    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.cookie.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/bootstrap-hover-dropdown.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/front.js"></script>

        </div>
            </div>
    </form>
</body>
</html>
