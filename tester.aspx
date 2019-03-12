<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tester.aspx.cs" Inherits="tester" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
    <link href="css/style.default.css" rel="stylesheet" id="themestylesheet">

    <!-- your stylesheet with modifications -->
    <link href="css/custom.css" rel="stylesheet">

    <script src="js/respond.min.js"></script>

    <link rel="shortcut icon" href="favicon.png">
    <style>
        #pan{
          
            background-color:dodgerblue;
           
            display:grid;
            grid-gap:5px;
            grid-template-columns:repeat(3,50px);
            grid-auto-rows:400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
       
 
            <!--<asp:DataList ID="DataList1" runat="server"   RepeatColumns="3" cssClass="row" RepeatLayout="Flow" RepeatDirection="Horizontal" BackColor="white" Height="100%"  width="100%" DataSourceID="SqlDataSource1"  >
                                     <ItemTemplate>
                                      
                                         <table border="0" class="nav-justified col-xs-6 col-sm-4 col-md-3 col-lg-3" style="border: thin solid #000000; background-color:white;width:28%;margin:10px" >
                                             <tr>
                                                 <td class="text-center" style="height: 21px; width: 250px;">
                                                     <br />
                                                     <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Product ID"></asp:Label>
                                                     &nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("ProductID") %>'></asp:Label>
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="text-center" style="height: 21px; width: 250px;">
                                                     <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("ProductName") %>'></asp:Label>
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="text-center" style="width: 250px">
                                                     <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" ImageAlign="Middle" />
                                                 
                                                 </td>
                                     
                                              </tr>                                 
                                                 <tr>
                                                     
                                                                 <td class="text-center" style="height: 28px; width: 250px;">&nbsp;&nbsp;&nbsp;&nbsp;Price:
                                                                     <asp:Label ID="Label7" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                                 </td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="text-center" style="height: 28px; width: 250px;">&nbsp;Available Stock:
                                                                     <asp:Label ID="Label8" runat="server"></asp:Label>
                                                                 </td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="text-center" style="height: 38px; width: 250px;">Quantity
                                                                     <asp:DropDownList ID="DropDownList1" runat="server">
                                                                         <asp:ListItem>1</asp:ListItem>
                                                                         <asp:ListItem>2</asp:ListItem>
                                                                         <asp:ListItem>3</asp:ListItem>
                                                                         <asp:ListItem>4</asp:ListItem>
                                                                         <asp:ListItem>5</asp:ListItem>
                                                                     </asp:DropDownList>
                                                                 </td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="text-center" style="height: 38px; width: 250px;">
                                                                     <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                                                                 </td>
                                             </tr>
                                                             <tr>
                                                                 <td class="text-center" style="width: 250px">&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Height="24px" ImageUrl="~/images/addtomycart.jpg" Width="88px" />
                                                                 </td>
                                                             
                                                        
                                                 </tr>
                                             
                                         </table>
                                      
                                         <br />
<br />
                                     </ItemTemplate>
                                 </asp:DataList>-->
            <asp:DataList ID="DataList2" runat="server" DataKeyField="ProductID" RepeatDirection="Horizontal" RepeatLayout ="Flow" CssClass="row" DataSourceID="SqlDataSource1">
    <ItemTemplate>
   <%-- <div class="row">--%>
    <div class="col-sm-4"><!--THUMBNAIL#2-->
    <div class="panel-body">
       
       <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("ProductID") %>' class="label label-warning" Visible="False"></asp:Label>
      <div class="thumbnail label-success">
         <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" Height="200px" />
        <div class="caption"><h4>#<small> <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("ProductName") %>'></asp:Label></small></h4>
          <strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("Price") %>'></asp:Label><small>Dhms</small></strong>
          <p>
          <small>Available Stock:<strong> <asp:Label ID="Label8" runat="server"></asp:Label></strong> </small> <br />
          <small>Quantity : <strong> <asp:DropDownList ID="DropDownList1" runat="server">
                                                                         <asp:ListItem>1</asp:ListItem>
                                                                         <asp:ListItem>2</asp:ListItem>
                                                                         <asp:ListItem>3</asp:ListItem>
                                                                         <asp:ListItem>4</asp:ListItem>
                                                                         <asp:ListItem>5</asp:ListItem>
                                                                     </asp:DropDownList></strong> </small> <br />
         <small><asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label></small>
        
          </p>
          <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Height="24px" ImageUrl="~/images/addtomycart.jpg" Width="88px" />
        </div>
      </div>
     </div>
     </div> 
      <%--</div>--%>
      </ItemTemplate>
</asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString19 %>" SelectCommand="SELECT * FROM [ProductDetail]"></asp:SqlDataSource>
        </div>
            
    </form>
</body>
</html>
