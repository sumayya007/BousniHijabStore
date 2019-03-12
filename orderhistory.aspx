<%@ Page Title="" Language="C#" MasterPageFile="~/my.master" AutoEventWireup="true" CodeFile="orderhistory.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#" style="color: #4fbfa8">Home</a>
                        </li>
                        <li><a href="#" style="color: #4fbfa8">My orders</a>
                        </li>
                        <li>Order # 1735</li>
                    </ul>

                </div>

                <div class="col-md-3">
                    <!-- *** CUSTOMER MENU ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Customer section</h3>
                        </div>

                        <div class="panel-body">

                            <ul class="nav nav-pills nav-stacked">
                                <li class="active">
                                    <a href="orderhistory.aspx"><i class="fa fa-list"></i> My orders</a>
                                </li>
                                <li>
                                    <a href="Wishlist.aspx" style="color: #4fbfa8"><i class="fa fa-heart"></i> My wishlist</a>
                                </li>
                                <li>
                                    <a href="resetpassword.aspx" style="color: #4fbfa8"><i class="fa fa-user"></i> My account</a>
                                </li>
                                <li>
                                    <a href="logout.aspx" style="color: #4fbfa8"><i class="fa fa-sign-out"></i> Logout</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- /.col-md-3 -->

                    <!-- *** CUSTOMER MENU END *** -->
                </div>

                <div class="col-md-9" id="customer-order">
                    <div class="box">
                        <h1>Order History</h1>

                        <p class="text-muted">If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.</p>

                        <hr>

                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="100%" Width="100%">
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>

                        </div>
                        <!-- /.table-responsive -->

                        <div class="row addresses">
                        </div>

                    </div>
                </div>

            </div>
            <!-- /.container -->
</asp:Content>

