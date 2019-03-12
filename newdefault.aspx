<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newdefault.aspx.cs" Inherits="newdefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8"/>
    <meta name="robots" content="all,follow"/>
    <meta name="googlebot" content="index,follow,snippet,archive"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
   
    <meta name="keywords" content=""/>

    <title>
        Obaju : e-commerce template
    </title>
   
 
   <link href='https://fonts.googleapis.com/css?family=Raleway:400,200' rel='stylesheet' type='text/css'/> 
  
  <link href="//netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet"/>
    <meta name="keywords" content=""/>

    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100' rel='stylesheet' type='text/css'/>

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

  
    <style type="text/css">
        .red-sticker {
    position:absolute;
    left: 15px;
    top:0px;
    display: block;
    width: 32px;
    height: 32px;
    padding-top: 5px;
    font-size: 12px;
    line-height: 12px;
    text-align: center;
    float: left;
    color: #fff;
    -webkit-border-radius: 50%;
    -moz-border-radius: 50%;
    -ms-border-radius: 50%;
    border-radius: 50%;
    background-color: #a50200;
    background-image: -webkit-gradient(linear,left top,left bottom,from(#cb0400),to(#a50200));
    background-image: -webkit-linear-gradient(to bottom,#cb0400,#a50200);
    background-image: -moz-linear-gradient(to bottom,#cb0400,#a50200);
    background-image: -ms-linear-gradient(to bottom,#cb0400,#a50200);
    background-image: -o-linear-gradient(to bottom,#cb0400,#a50200);
    background-image: linear-gradient(to bottom,#cb0400,#a50200);
}
    .shadow
        {
           
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #ccc;
    border: 1px solid rgba(0,0,0,.15);
    
    -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
    box-shadow: 0 6px 12px rgba(0,0,0,.175);
        }   
   
    </style>

  
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
                    <asp:Panel runat="server" ID="Panel4" Visible="true">

                        <a href="#" class="btn btn-success btn-sm" id="tag" runat="server" data-animate-hover="shake" visible="False">Update</a>  <asp:Label runat="server" ID="Label2" ></asp:Label>
                        
                    </asp:Panel>
                        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
                        </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div class="col-md-6" data-animate="fadeInDown">
                <ul class="menu">
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl="~/logout.aspx">Logout</asp:HyperLink>
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
                    <div class="MenuBar">
	<asp:Menu ID="menuBar" runat="server" ForeColor="#777777" Font-Size="14px" Font-Bold="true" Orientation ="Horizontal" Width="100%">
		<DynamicHoverStyle CssClass="DynamicHover" ForeColor="#4fbfa8"/>
		<DynamicMenuItemStyle CssClass="DynamicMenuItem  shadow" HorizontalPadding="15px" VerticalPadding="10px" BackColor="White" Width="250px" Font-Bold="false" />
		<DynamicSelectedStyle CssClass="DynamicHover" />
        
		<StaticHoverStyle CssClass="staticHover" BackColor="#4fbfa8" />
		<StaticMenuItemStyle CssClass="StaticMenuItem" ItemSpacing="100px" HorizontalPadding="15px" VerticalPadding="25px" />
		
		<StaticSelectedStyle CssClass="staticHover" />
	</asp:Menu>
</div>
          </ul>
                </div>
            <!--/.nav-collapse -->

            <div class="navbar-buttons">

                <div class="navbar-collapse collapse right" id="basket-overview">
                    <br />
                    <br />
                    
                </div>
                <!--/.nav-collapse -->

                <div class="navbar-collapse collapse right" id="search-not-mobile">
                    <button type="button" class="btn navbar-btn btn-primary" data-toggle="collapse" data-target="#search">
                        <span class="sr-only">Toggle search</span>
                        <i class="fa fa-search"></i>
                    </button>
                </div>

            </div>

            <div class="collapse clearfix" id="search">

                <div class="navbar-form" role="search">
                    <div class="input-group">
                        <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="What are you looking for?"></asp:TextBox>
                       
                        <span class="input-group-btn">
                            <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" Font-Bold="True" CssClass="btn btn-default" ForeColor="#4FBFA8" Height="34px" Width="85px" />
			

		    </span>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                    </div>
                </div>

            </div>
            <!--/.nav-collapse -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /#navbar -->
    <div id="all">
            <div id="content">
            <div class="container">

                <div class="col-md-12" style="left: 0px; top: 0px">
                    <ul class="breadcrumb">
                        <li><a href="#" style="color: #4fbfa8">Home</a>
                        </li>
                        <li>Shopping cart&nbsp;&nbsp;&nbsp;</li>
                        <li>
                            Welcome&nbsp;&nbsp;&nbsp;<asp:Label ID="Label20" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                            
                        </li>
                    </ul>
                </div>

                <div class="col-md-12" id="basket">

                    <div class="box">

                        
                            
                            <h1>Shopping cart</h1>
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString18 %>" SelectCommand="SELECT [ProductID], [ProductName], [Price], [ProductImage] FROM [ProductDetail] WHERE ([ProductName] LIKE '%' + @ProductName + '%')">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox1" Name="ProductName" PropertyName="Text" Type="String" />
                            </SelectParameters>
                            </asp:SqlDataSource>
                            <p >
                                
                                You currently have 
                                <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
                                &nbsp;item(s) in your cart
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="False" Font-Underline="True" ForeColor="Red" PostBackUrl="~/Wishlist.aspx">View WishList</asp:LinkButton>
                               &nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/addtocartnew.aspx" Font-Bold="True" Font-Underline="True">View Cart</asp:LinkButton>
                           </p>    
                          <div class="col-md-6">
                               
                                       Sort by Category :
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString8 %>" SelectCommand="SELECT DISTINCT [ProductName] FROM [ProductDetail]"></asp:SqlDataSource>
                                            
                                       
                                           
                                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" Width="188px" Height="33px" DataSourceID="SqlDataSource2" DataTextField="ProductName" DataValueField="ProductName" >
                                    
                                </asp:DropDownList>
                                           <br />
                                                                                        
                                       <asp:Button ID="Button3" runat="server" Text="Search" CssClass="btn btn-warning" OnClick="Button3_Click"/>
                                       
                                 </div>
                                 <div class="col-md-6">
                                 
                                           
                                            Sort by Price :
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString9 %>" SelectCommand="SELECT * FROM [ProductDetail] ORDER BY [Price]"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString10 %>" SelectCommand="SELECT * FROM [ProductDetail] ORDER BY [Price] DESC"></asp:SqlDataSource>
                                            
                                       
                                           
                                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control" Width="183px" Height="33px"  >
                                                <asp:ListItem>Low to High</asp:ListItem>
                                                <asp:ListItem>High to Low </asp:ListItem>
                                            </asp:DropDownList>
                                            
                                     <br />
                                            <asp:Button ID="Button4" runat="server" Text="Sort" CssClass="btn btn-warning" OnClick="Button4_Click"/>
                                      
                                    
&nbsp;                     </div>
                          
                            
                                <asp:Panel ID="Panel1" runat="server">
                                    <div class="table-responsive">
                                 <asp:DataList ID="DataList1" runat="server"  OnItemCommand="DataList1_ItemCommand" RepeatColumns="4" cssClass="row" RepeatLayout="Flow" RepeatDirection="Horizontal" BackColor="white" Height="100%"  width="100%" DataSourceID="SqlDataSource1" OnItemDataBound="DataList1_ItemDataBound">
                                     <ItemTemplate>
                                        <%-- <div class="row">--%>
                                         
                                         <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3"><!--THUMBNAIL#2-->
                                             
                                         <div class="panel-body">
                                                    
                                                   <asp:Label ID="Label5" runat="server" Font-Bold="True" class="label label-warning" Visible="False" Text='<%# Eval("ProductID") %>'></asp:Label>
                                              <div class="thumbnail label-success">
                                                   <asp:HyperLink href="#" id="sticker" runat="server" Visible="False"><span class="red-sticker"><asp:Label ID="Label21" runat="server"></asp:Label></span></asp:HyperLink>
                                                   <asp:Image ID="Image1" runat="server" Height="200px" ImageAlign="Middle" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" />
                                             <div class="caption"> 
                                                     
                                                     <h4>#<small><asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("ProductName") %>'></asp:Label></small></h4>
                                                     <small>Price: <strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("Price") %>' ForeColor="Red"></asp:Label>
                                                          &nbsp;<strike><asp:Label ID="Label22" runat="server" Text="Label"></asp:Label></strike><small>Dhms</small></strong></small>
                                                                 <p>
                                                              
                                                                 <small>Quantity <strong>
                                                                     <asp:DropDownList ID="DropDownList1" runat="server">
                                                                         <asp:ListItem>1</asp:ListItem>
                                                                         <asp:ListItem>2</asp:ListItem>
                                                                         <asp:ListItem>3</asp:ListItem>
                                                                         <asp:ListItem>4</asp:ListItem>
                                                                         <asp:ListItem>5</asp:ListItem>
                                                                     </asp:DropDownList></strong> </small> 
                                                                     <p>
                                                                          <small>
                                                                         <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                                                                         </small>
                                                                         <asp:Button ID="Button5" runat="server" BackColor="White" BorderColor="White" CommandArgument='<%# Eval("productid")%>' CommandName="viewdetails" CssClass="btn " Font-Bold="True" Font-Size="Small" Font-Underline="True" ForeColor="Black" Text="View details" Height="70px" />
                                                                         &nbsp;<asp:Label ID="Label8" runat="server" Visible="False"></asp:Label>
                                                                      
                                                                         <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Height="24px" ImageUrl="~/images/addtomycart.jpg" Width="80px" />
                                                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtowishlist" Height="15px" Width="15px" />
                                                                     </p>
                                                             
                                       
                                                                    </div>
                                                                     </div>
                                                                     </div>
                                                                     </div> 
                                                                 <%--</div>--%>
                                     </ItemTemplate>
                                 </asp:DataList>
                                 </div>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString7 %>" SelectCommand="SELECT * FROM [ProductDetail] WHERE ([ProductName] = @ProductName)">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="DropDownList4" Name="ProductName" PropertyName="SelectedValue" Type="String" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                               </asp:Panel>
                               
                                <asp:Panel ID="Panel2" runat="server">
                                    <div class="table-responsive">
<asp:DataList ID="DataList2" runat="server"  OnItemCommand="DataList2_ItemCommand" RepeatColumns="4" cssClass="row" RepeatLayout="Flow" RepeatDirection="Horizontal" BackColor="white" Height="100%"  width="100%" OnItemDataBound="DataList2_ItemDataBound" >
                                     <ItemTemplate>
                                         
                                        <%-- <div class="row">--%>
                                         
                                         <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3"><!--THUMBNAIL#2-->
                                             
                                         <div class="panel-body">
                                                    
                                                     <asp:Label ID="Label9" runat="server" Font-Bold="True"  class="label label-warning" Visible="False" Text='<%# Eval("ProductID") %>'></asp:Label>
                                                 <div class="thumbnail label-success">
                                                      <asp:HyperLink href="#" id="sticker" runat="server" Visible="False"><span class="red-sticker"><asp:Label ID="Label23" runat="server"></asp:Label></span></asp:HyperLink>
                                                      <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" ImageAlign="Middle" />
                                                      <div class="caption"> 
                                                     
                                                     <h4>#<small><asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("ProductName") %>'></asp:Label></small></h4>
                                                     
                                                 <small>Price: <strong><asp:Label ID="Label11" runat="server" Text='<%# Eval("Price") %>' ForeColor="Red"></asp:Label>
                                                                     <strike><asp:Label ID="Label24" runat="server"></asp:Label></strike><small>Dhms</small></strong></small>
                                                            <p>
                                                              
                                                                 <small>Quantity <strong><asp:DropDownList ID="DropDownList5" runat="server">
                                                                         <asp:ListItem>1</asp:ListItem>
                                                                         <asp:ListItem>2</asp:ListItem>
                                                                         <asp:ListItem>3</asp:ListItem>
                                                                         <asp:ListItem>4</asp:ListItem>
                                                                         <asp:ListItem>5</asp:ListItem>
                                                                     </asp:DropDownList></strong> </small> 
                                                                     <small> <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label></small>
                                                                       <asp:Button ID="Button6" runat="server" BackColor="White" BorderColor="White" CommandArgument='<%# Eval("productid")%>' CommandName="viewdetails" Font-Underline="True" ForeColor="Black"  CssClass="btn " Font-Bold="True" Font-Size="Small" Text="View Details" Height="70px" />
                                                                     &nbsp;<asp:Label ID="Label12" runat="server" Visible="False"></asp:Label>
                                                                   <br />
                                                                <asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Height="24px" ImageUrl="~/images/addtomycart.jpg" Width="80px" />
                                                                   
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" CommandName="addtowishlist" CommandArgument='<%# Eval("productid")%>' Height="15px" Width="15px" />
                                                                 </div>
                                                                     </div>
                                                                     </div>
                                                                     </div> 
                                                                 <%--</div>--%>
<br />
                                     </ItemTemplate>
                                 </asp:DataList>
                                        </div>
                                </asp:Panel>
                                    
                                
                                <asp:Panel ID="Panel3" runat="server">
                                    <div class="table-responsive">
<asp:DataList ID="DataList3" runat="server"  OnItemCommand="DataList3_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal" style="margin-right: 0px" BackColor="White" Height="778px"   Width="100%" OnItemDataBound="DataList3_ItemDataBound" >
                                     <ItemTemplate>
                                         
                                         <table border="0" class="nav-justified" style="border: thin solid #000000; background-color:white;width:200px">
                                             <tr>
                                                 <td class="text-center" style="height: 21px">
                                                     <br />
                                                     <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Product ID"></asp:Label>
                                                     &nbsp;<asp:Label ID="Label15" runat="server" Font-Bold="True" Text='<%# Eval("ProductID") %>'></asp:Label>
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="text-center" style="height: 21px">
                                                      <asp:HyperLink href="#" id="sticker" runat="server" Visible="False"><span class="red-sticker"><asp:Label ID="Label25" runat="server"></asp:Label></span></asp:HyperLink>
                                                     <asp:Label ID="Label16" runat="server" Font-Bold="True" Text='<%# Eval("ProductName") %>'></asp:Label>
                                                 </td>
                                             </tr>
                                                
                                                             <tr>
                                                                 <td class="text-center">
                                                                     <asp:Image ID="Image3" runat="server" Height="300px" ImageAlign="Middle" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" />
                                                                    
                                                                 </td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="text-center">&nbsp;Price:
                                                                     <asp:Label ID="Label17" runat="server" Text='<%# Eval("Price") %>' ForeColor="Red"></asp:Label>
                                                                     <strike><asp:Label ID="Label26" runat="server"></asp:Label></strike>
                                                                 </td>
                                             </tr>
                                                             <tr>
                                                                 <td class="text-center">&nbsp;Quantity:<asp:DropDownList ID="DropDownList6" runat="server">
                                                                     <asp:ListItem>1</asp:ListItem>
                                                                     <asp:ListItem>2</asp:ListItem>
                                                                     <asp:ListItem>3</asp:ListItem>
                                                                     <asp:ListItem>4</asp:ListItem>
                                                                     <asp:ListItem>5</asp:ListItem>
                                                                     </asp:DropDownList>
                                                                 </td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="text-center" style="height: 38px">
                                                                     <asp:Button ID="Button7" runat="server" BackColor="White" BorderColor="White" CommandArgument='<%# Eval("productid")%>' CommandName="viewdetails" ForeColor="Black" Height="18px" Text="View Details" Width="100px" />
                                                                     <asp:Label ID="Label18" runat="server" Visible="False"></asp:Label>
                                                                 </td>
                                             </tr>
                                                             <tr>
                                                                 <td class="text-center" style="height: 38px">&nbsp;<asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                                                                 </td>
                                                             
                                                        
                                                 </tr>
                                             
                                             <tr>
                                                 <td class="text-center" style="height: 28px">&nbsp;<asp:ImageButton ID="ImageButton5" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Height="24px" ImageUrl="~/images/addtomycart.jpg" Width="88px" />
                                                     &nbsp;
                                                     <asp:ImageButton ID="ImageButton6" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtowishlist" Height="24px" Width="24px" />
                                                 </td>
                                             </tr>
                                             
                                         </table>
                                       
                                         <br />
<br />
                                     </ItemTemplate>
                                 </asp:DataList>
                                        </div>
                                </asp:Panel>
                        
                           
                            <!-- /.table-responsive -->

                            <div class="box-footer">
                                <div class="pull-right">
                                    <asp:Button ID="Button2" runat="server" Text="Proceed to Checkout" class="btn btn-primary" OnClick="Button2_Click"/>
                                   
                                   
                                </div>
                            </div>

                      

                    </div>
                    <!-- /.box -->


                    <div class="row same-height-row">
                        <div class="col-md-3 col-sm-6">
                            <div class="box same-height">
                                <h3>You may also like these productshese products</h3>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product2_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product1_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>


                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product3_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>

                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                    </div>


                </div>
                <!-- /.col-md-9 -->

               


                    
                </div>
                <!-- /.col-md-3 -->

            </div>
            <!-- /.container -->
      
        <!-- /#content -->
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


