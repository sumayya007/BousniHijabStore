<%@ Page Title="" Language="C#" MasterPageFile="~/my.master" AutoEventWireup="true" CodeFile="PlacedSuccessfully.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>Checkout - Generate Invoice</li>
                    </ul>
                </div>

                <div class="col-md-12" id="checkout">

                    <div class="box">
                        
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</p>
                            <h1>Checkout</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li class="disabled"><a href="#"><i class="fa fa-map-marker"></i><br>Address</a>
                                </li>
                              
                                <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Payment</a>
                                </li>
                               
                                <li class="active"><a href="#"><i class="fa fa-check-square-o"></i><br>Generate invoice</a>
                                </li>
                            </ul>
                            <div class="content">
                                <div class="row">
                                   
                                         <div class="form-group">
                                             <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Your Order has been successfully placed!!"></asp:Label>
                                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                             <br />
                                             <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="#4FBFA8" Text="ORDER ID:"></asp:Label>
&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
                                             <br />
                                             <br />
                                             
                                             <asp:Button ID="Button1" runat="server" BackColor="#4FBFA8" Text="Download Invoice" OnClick="Button1_Click"  />
                                             <br />
                                             <br />
                                              
                                             <asp:Panel ID="Panel2" runat="server" Height="782px">
                                                 <br />
                                                 <table border="1" class="nav-justified">
                                                <tr>
                                                    <td class="text-center" style="height: 38px; width: 772px;">
                                                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Large" Text="Retail Invoice"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 85px; width: 772px;">Order No :<asp:Label ID="Label4" runat="server"></asp:Label>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                                        <br />
                                                        <br />
                                                        Order Date :<asp:Label ID="Label5" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 772px">
                                                        <table class="nav-justified" style="height: 106px" border="1">
                                                            <tr>
                                                                <td class="text-center" style="width: 383px; height: 201px;">Buyer Address<br />
                                                                    <asp:Label ID="Label6" runat="server" ForeColor="#006600"></asp:Label>
                                                                </td>
                                                                <td class="text-center" style="height: 201px">Seller Address<br />
                                                                    <asp:Label ID="Label7" runat="server" ForeColor="#006600">The Hijab Store,kannur,kerala</asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 772px">
                                                        <asp:GridView ID="GridView1" runat="server" Height="256px" Width="764px" AutoGenerateColumns="False" style="margin-top: 0px">
                                                            <Columns>
                                                                <asp:BoundField DataField="sno" HeaderText="S.No">
                                                                <ItemStyle HorizontalAlign="Center" />
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="productid" HeaderText="Product ID">
                                                                <ItemStyle HorizontalAlign="Center" />
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="productname" HeaderText="Product Name">
                                                                <ItemStyle HorizontalAlign="Center" />
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                                                <ItemStyle HorizontalAlign="Center" />
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="price" HeaderText="Price">
                                                                <ItemStyle HorizontalAlign="Center" />
                                                                </asp:BoundField>
                                                                <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                                                <ItemStyle HorizontalAlign="Center" />
                                                                </asp:BoundField>
                                                            </Columns>
                                                        </asp:GridView>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 30px; width: 772px;">Grand Total :<asp:Label ID="Label8" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 109px; width: 772px;">Declaration:We declare that this invoice shows actual price of the goods described inclusive of taxes and that all particulars are true and correct.Incase you find Selling price on this invoice to be more than MRP mentioned on product,please inform us at <a href="mailto:wrongMRP@sajna.com">wrongMRP@sajna.com</a><br />
                                                        <br />
                                                        THIS IS A COMPUTER GENERATED INVOICE AND DOES NOT REQUIRE SIGNATURE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                </tr>
                                            </table>
                                             </asp:Panel>
                                      
                                        
                                    </div>
                                   
                                        
                                   </div>
                                <!-- /.row -->
                                
                            <div class="content">
                                
                          <div class="box-footer">
                                <div class="pull-left">
                                    <a href="home.aspx" class="btn btn-default"><i class="fa fa-chevron-left"></i>Back to home</a>
                                </div>
                            </div>
                                </div>
                                </div>
                       
                    </div>
                    <!-- /.box -->


                </div>
               

      

            </div>
            <!-- /.container -->
</asp:Content>

