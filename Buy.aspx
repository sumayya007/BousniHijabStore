<%@ Page Title="" Language="C#" MasterPageFile="~/pay.master" AutoEventWireup="true" CodeFile="Buy.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>Checkout - Address</li>
                    </ul>
                </div>

                <div class="col-md-12" id="checkout">

                    <div class="box">
                        <form method="post" action="payment.aspx">
                            <h1>Checkout</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li class="active"><a href="#"><i class="fa fa-map-marker"></i><br>Address</a>
                                </li>
                              
                                <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Payment</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-check-square-o"></i><br>Generate invoice</a>
                                </li>
                            </ul>

                            <div class="content">
                              <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Fill in your details.." Font-Size="Large" ForeColor="#FF9933"></asp:Label>
        <br />
        <br />
        <br />
        <table class="nav-justified">
            <tr>
                <td style="width: 192px">Your Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 192px">Email Address</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 192px">Mobile Number</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 192px">Price</td>
                <td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
        <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
        <input type="hidden" runat="server" id="hash" name="hash" value=""  />
        <input type="hidden" runat="server" id="txnid" name="txnid" value="" />
       
        <br />
    </form>
  
                          <div class="box-footer">
                                <div class="pull-left">
                                    <a href="AddToCart.aspx" class="btn btn-default"><i class="fa fa-chevron-left"></i>Back to Shopping</a>
                                </div>
                                <div class="pull-right" >
                                     <asp:Button ID="Button1" runat="server" Text="Pay" OnClick="Button1_Click" />
                                   
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- /.box -->


                </div>
               

      

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
    <br />
    <br />
    <br />
</asp:Content>

