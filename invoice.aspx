<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="invoice.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="dashboard.aspx" style="color: #4fbfa8">Home</a>
                        </li>
                        <li>Invoice Bill</li>
                    </ul>
                </div>

              
                 <div class="col-md-12">

                    <div class="box">
                        <div class="row">
                            <div class="col-md-9 table table-responsive">
                                
                                <br />
                                <br />
                                 <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Height="475px" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" />
                                <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" />
                                <asp:BoundField DataField="productid" HeaderText="productid" SortExpression="productid" />
                                <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                                <asp:BoundField DataField="dateoforder" HeaderText="dateoforder" SortExpression="dateoforder" />
                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                                <asp:CommandField ShowSelectButton="True"  ItemStyle-CssClass="btn btn-primary" >
                               
                                <ControlStyle ForeColor="White" Height="10px" />
<ItemStyle CssClass="btn btn-primary" Height="25px"></ItemStyle>
                               
                                </asp:CommandField>
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                     <PagerSettings Mode="NumericFirstLast" />
                            <PagerStyle BackColor="White" ForeColor="#4FBFA8" HorizontalAlign="Right" Font-Bold="True" Font-Size="Large" Wrap="True" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                                <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingDataConnectionString %>" SelectCommand="SELECT * FROM [OrderDetails] ORDER BY [dateoforder] DESC"></asp:SqlDataSource>
                            </div>
                           
                        </div>
                       
                        <br />
                        <br />
                        <asp:Panel ID="Panel1" runat="server">
                            <div class="table table-responsive">
                              <table border="0" class="nav-justified">
                                                
                                  <tr>
                                      <td style="width: 535px" >
                                                        <asp:Image ID="Image2" runat="server" ImageUrl="http://localhost:49278/images/bluelogo2.png"/>

                                      </td>
                                 
                                      <td >
                                                        <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="RETAIL INVOICE"></asp:Label>

                                      </td>

                                  </tr>
                                                <tr >
                                                    <td style="height: 85px; width: 535px; border-right-style: none; border-right-color: inherit; border-right-width: medium;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <br />
                                                        <br />
                                                        <br />
                                                        Order No :<asp:Label ID="Label4" runat="server"></asp:Label>
                                                        <br />
                                                        <br />
                                                        Order Date :<asp:Label ID="Label5" runat="server"></asp:Label>
                                                    </td>

                                                    <td class="text-center" style="height: 85px; width: 772px;border-left:none;">
                                                        <asp:Image ID="Image1" runat="server" ImageAlign="Right" ImageUrl="http://localhost:49278/images/finalqr.jpg" />
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td style="width: 772px" colspan="2">
                                                        <table class="nav-justified" style="height: 106px" border="1">
                                                            <tr>
                                                                <td class="text-center" style="width: 383px; height: 201px;">Buyer Address<br />
                                                                    <br />
                                                                    <asp:Label ID="Label10" runat="server" ForeColor="#006600"></asp:Label>
                                                                </td>
                                                                <td class="text-center" style="height: 201px">Seller Address<br />
                                                                    <asp:Label ID="Label7" runat="server" ForeColor="#006600">The Hijab Store,kannur,kerala</asp:Label>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 772px" colspan="2">
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
                                                    <td style="height: 30px; width: 772px;" colspan="2">Grand Total :<asp:Label ID="Label8" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 109px; width: 772px;" colspan="2">Declaration:We declare that this invoice shows actual price of the goods described inclusive of taxes and that all particulars are true and correct.Incase you find Selling price on this invoice to be more than MRP mentioned on product,please inform us at <a href="mailto:wrongMRP@sajna.com">wrongMRP@sajna.com</a><br />
                                                        <br />
                                                        THIS IS A COMPUTER GENERATED INVOICE AND DOES NOT REQUIRE SIGNATURE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                                </tr>
                                            </table>
                                </div>
                        </asp:Panel>
                    </div>
                  </div>
                </div>
         </div>
</asp:Content>

