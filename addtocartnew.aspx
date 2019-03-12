<%@ Page Title="" Language="C#" MasterPageFile="~/my.master" AutoEventWireup="true" CodeFile="addtocartnew.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#" style="color: #4fbfa8">Home</a>
                        </li>
                        <li>Shopping cart</li>
                    </ul>
                </div>

                <div class="col-md-9" id="basket">

                    <div class="box">
                        <h1>Shopping Cart</h1>
                        <p>
                            You currently have <asp:Label ID="Label1" runat="server" Text="" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label> items in your cart&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" ForeColor="#0066FF" OnClick="LinkButton1_Click">Clear Cart</asp:LinkButton>
                        </p>
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True"  Width="100%" BorderColor="White" OnRowDeleting="GridView1_RowDeleting">
                                 <Columns>
                                         <asp:BoundField DataField="sno" HeaderText="  S.No">
                                         <HeaderStyle HorizontalAlign="Justify" />
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="productid" HeaderText="  Product ID">
                                         <HeaderStyle HorizontalAlign="Center" />
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>
                                         <asp:ImageField DataImageUrlField="productimage" HeaderText="  Product Image">
                                             <ControlStyle Height="100px" Width="100px" />
                                             <HeaderStyle HorizontalAlign="Center" />
                                             <ItemStyle HorizontalAlign="Center" />
                                         </asp:ImageField>
                                         <asp:BoundField DataField="productname" HeaderText="  Product Name">
                                         <HeaderStyle HorizontalAlign="Center" />
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="price" HeaderText="  Price">
                                         <HeaderStyle HorizontalAlign="Center" />
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="quantity" HeaderText="  Quantity">
                                         <HeaderStyle HorizontalAlign="Center" />
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>
                                         <asp:BoundField DataField="totalprice" HeaderText="  Total Price" >
                                         <HeaderStyle HorizontalAlign="Center" />
                                         <ItemStyle HorizontalAlign="Center" />
                                         </asp:BoundField>
                                         <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" DeleteImageUrl="~/images/deleteicon.png" HeaderText="Remove" >
                                         <HeaderStyle HorizontalAlign="Center" />
                                         <ItemStyle ForeColor="#0099CC" />
                                         </asp:CommandField>
                                     </Columns>
                                     <HeaderStyle Height="50px" BackColor="#F7F7F7" />
                            </asp:GridView>
                            </div>
                         <div class="box-footer">
                                <div class="pull-left col-md-6">
                                    <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn btn-default form-control" Width="200" PostBackUrl="~/newdefault.aspx"><i class="fa fa-chevron-left"></i> Continue Shopping</asp:LinkButton>
                                </div>
                                <div class="pull-right col-md-6">
                                    <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btn form-control" Width="200" PostBackUrl="~/PlaceOrder.aspx" BackColor="#4FBFA8" OnClick="LinkButton2_Click" >Proceed to checkout<i class="fa fa-chevron-right"></i></asp:LinkButton>
                                </div>
                                <br />
                                <br />
                                <br />
                                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
                            </div>

                        </div>
                    </div>
    </div>
</asp:Content>

