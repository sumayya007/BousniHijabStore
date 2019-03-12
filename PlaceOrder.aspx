<%@ Page Title="" Language="C#" MasterPageFile="~/pay.master" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="Default2" UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#" style="color: #4fbfa8">Home</a>
                        </li>
                        <li>Checkout - Address</li>
                    </ul>
                </div>

                <div class="col-md-12" id="checkout">

                    <div class="box">
                         
                             <div class="col-md-12">
                                 </div>
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                
                                &nbsp;</p>
                            <h1>Checkout</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li class="active"><a href="#"><i class="fa fa-map-marker"></i><br>Address</a>
                                </li>
                              
                                <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Payment</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-check-square-o"></i><br>Generate invoice</a>
                                </li>
                            </ul>

                                  </div><div class="content col-md-12 box">
                                <div class="row">
                                   
                                    <div class="col-sm-4 col-md-4 col-lg-4">
                                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                         <div >
                                           Order ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                         </div>
                                         <div >
                                           Order Date:&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </div>
                                      

                                        
                                        <div >
                                            <label for="address">Address&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                                            &nbsp;<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                                        &nbsp;</div>
                                        <div >
                                            <label for="telephone">Telephone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                                            &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                            <br />
                                            <br />
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                <ContentTemplate>
<br />
                                                    <table class="nav-justified">
                                                        <tr>
                                                            <td style="width: 121px">Enter Pincode:</td>
                                                            <td style="width: 213px">
                                                                <asp:TextBox ID="TextBox3" runat="server" Width="113px"></asp:TextBox>
                                                                <asp:Button ID="Button2" runat="server" BackColor="#FFCC00" OnClick="Button2_Click" Text="Check" />
                                                            </td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                    <asp:Label ID="Label5" runat="server" Font-Bold="True"></asp:Label>
<br />
                                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click1" Text="Buy" />
                                                </ContentTemplate>
                                            
                                            </asp:UpdatePanel>

                                        </div>
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <br />
                                         <br />
                                         You have
                                         <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
&nbsp;items in your cart&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
                                        <br />
                                        <br />
                                    </div>
                                     </div>
                                      <div class="row">
                                    <div class="col-sm-12">
                                        <div class="table-responsive">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowFooter="True" Height="227px" Width="720px" AllowPaging="True" BorderColor="White">
                                            <Columns>
                                                <asp:BoundField DataField="sno" HeaderText="S.No" />
                                                <asp:BoundField DataField="productid" HeaderText="Product ID" />
                                                <asp:BoundField DataField="productname" HeaderText="Product Name" />
                                                <asp:ImageField DataImageUrlField="productimage" HeaderText="Product">
                                                    <ControlStyle Height="100px" Width="100px" />
                                                </asp:ImageField>
                                                <asp:BoundField DataField="price" HeaderText="Price" />
                                                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                                                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
                                            </Columns>
                                        </asp:GridView>
                                       </div>
                                    </div>
                                     
                                
                          
                       
                    </div>
                    <!-- /.box -->


                </div>
               

      </div>

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
</asp:Content>

