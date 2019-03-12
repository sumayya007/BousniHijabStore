<%@ Page Title="" Language="C#" MasterPageFile="~/my.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        .social {
  text-align: left;
}
 .social h4 {
  font-weight: 300;
  margin-bottom: 10px;
}
.social p {
  line-height: 26px;
}
 .social p a {
  margin: 0 10px 0 0;
  color: #fff;
  display: inline-block;
  width: 26px;
  height: 26px;
  border-radius: 13px;
  line-height: 26px;
  font-size: 15px;
  text-align: center;
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
  vertical-align: bottom;
}
 .social p a i {
  vertical-align: bottom;
  line-height: 26px;
}
 .social p a.facebook {
  background-color: #4460ae;
}
 .social p a.gplus {
  background-color: #c21f25;
}
 .social p a.twitter {
  background-color: #3cf;
}
 .social p a.instagram {
  background-color: #cd4378;
}
 .social p a.email {
  background-color: #4a7f45;
}
@media (max-width: 991px) {
  .social {
    text-align: center;
  }
}
        .auto-style1 {
            width: 532px
        }
    </style>
    <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#" style="color: #4fbfa8">Home</a>
                        </li>
                        <li>Shopping cart</li>
                         <li>View Details</li>
                    </ul>
                </div>
               
                
        
                <div class="col-md-9" id="basket">

                    <div class="box">
                        <h3 style="font-family: 'Bodoni MT'; text-decoration: underline;">PRODUCT DETAILS</h3>
                        <div class="table-responsive">
                            <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource1" OnItemCommand="DataList1_ItemCommand" Width="100%" OnItemDataBound="DataList1_ItemDataBound" RepeatDirection="Horizontal">
                                <FooterStyle Font-Bold="True" Font-Italic="False" />
                                <ItemTemplate>
                                    <br />
                                    <table class="nav-justified" style="width: 96%; height: 321px">
                                        
                                        <tr style="border-bottom-color:black">
                                            <td class="text-center" colspan="2" style="height: 69px">
                                                <asp:Label ID="Label3" runat="server" Font-Bold="True" Text='<%# Eval("ProductName") %>' Font-Size="X-Large" ForeColor="Red"></asp:Label>
                                                <hr>
                                            </td>
                                        </tr>
                                       
                                        <tr>
                                            <td rowspan="8" style="text-align: center;" class="auto-style1">
                                               
                                                <asp:Image ID="Image1" runat="server" Height="550px" ImageUrl='<%# Eval("ProductImage") %>' Width="400px" BorderColor="#666666" />
                                               
                                                 </td>
                                            <td><asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("ProductID") %>' Visible="False"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td><strong>Price: </strong><asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Red" Text='<%# Request.QueryString["price"] %>'></asp:Label>
                                                
                                                &nbsp;<strike><asp:Label ID="Label13" runat="server" Font-Bold="True" Text='<%# Eval("Price") %>'></asp:Label></strike>
                                                
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                 <h4>Product Description:</h4>
                                                    <ul>
                                                        <li>Length:<asp:Label ID="Label7" runat="server" Font-Bold="True" Text='<%# Eval("Length") %>'></asp:Label></li>
                                                       <li>Width:<asp:Label ID="Label8" runat="server" Font-Bold="True" Text='<%# Eval("Width") %>'></asp:Label></li>
                                                        <li>Material:<asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("Material") %>'></asp:Label></li>
                                                        <li>Color:<asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("Color") %>'></asp:Label></li>
                                                    </ul>
                                               
                                                
                                            </td>
                                        </tr>
                                       
                                        <tr>
                                            <td><strong>Quantity:</strong><asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                </asp:DropDownList>
                                                &nbsp;
                                                <asp:Label ID="Label11" runat="server" Text='<%# Eval("Stockavailable") %>' Visible="False"></asp:Label>
                                                &nbsp;
                                                <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-left" style="height: 70px">
                                                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Height="24px" ImageUrl="~/images/addtomycart.jpg" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 373px" class="modal-sm">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString19 %>" SelectCommand="SELECT * FROM [ProductDetail] WHERE ([ProductID] = @ProductID)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ProductID" QueryStringField="id" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            </div>
                        <hr>
                            <div class="social">
                                <h4>Show it to your friends</h4>
                                <p>
                                    <a href="http://www.facebook.com" class="external facebook" data-animate-hover="pulse" style="opacity: 1;"><i class="fa fa-facebook"></i></a>
                                    <a href="http://www.googleplus.com" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>
                                    <a href="http://www.twitter.com" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>
                                    <a href="http://www.gmail.com" class="external email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>
                                   
                                </p>
                            </div>
                         <div class="box-footer">
                                <div class="pull-left col-md-6">
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-default form-control" Width="200" PostBackUrl="~/Default.aspx"><i class="fa fa-chevron-left"></i> Continue Shopping</asp:LinkButton>
                                </div>
                                <div class="pull-right col-md-6">
                                </div>
                                <br />
                                <br />
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                            </div>

                        </div>
                    </div>
    </div>
</asp:Content>

