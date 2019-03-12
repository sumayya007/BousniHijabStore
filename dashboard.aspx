<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="dashboard.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#" style="color:#4fbfa8">Admin Home</a>
                        </li>
                        <li>Dashboard</li>
                    </ul>

                </div>

                 <div class="col-md-3" style="left: 0px; top: 0px; height: 656px">
                    <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading" style="background-color:#4fbfa8">
                            <h2 class="panel-title" style="color:white;font-weight:bold">ADMIN HOME</h2>
                        </div>

                          <div class="panel-body" style="background-color:black" >
                            
                              <table style="height: 568px" >
                                  <tr>
                                      <td class="text-left">
                                         <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="False" ForeColor="White" NavigateUrl="~/dashboard.aspx">DASHBOARD</asp:HyperLink>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td style="height: 64px">
                                          <asp:Label ID="Label4" runat="server" ForeColor="White" Text="PRODUCT MANAGEMENT"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/addproducts.aspx">&gt;&gt;   ADD NEW PRODUCT</asp:HyperLink>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/manageproductdetails.aspx">&gt;&gt;   EDIT/DELETE PRODUCT</asp:HyperLink>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/customerdetails.aspx">CUSTOMERS</asp:HyperLink>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td style="height: 46px">
                                          <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/invoice.aspx">GENERATE INVOICE</asp:HyperLink>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td style="height: 66px">
                                          <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/orderdetails.aspx">ORDER DETAILS</asp:HyperLink>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          <asp:Label ID="Label5" runat="server" ForeColor="White" Text="CATEGORY MANAGEMENT"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td style="height: 68px">
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="addcategory.aspx">&gt;&gt;   ADD NEW CATEGORY</asp:HyperLink>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="removecategory.aspx">&gt;&gt;   DELETE CATEGORY</asp:HyperLink>
                                      </td>
                                  </tr>
                              </table>
                            
                        </div>
         </div>
                     </div>

                <div class="col-md-9">
                    <div class="box">
                      
                          <div id="advantages">

                <div class="container">
                    <div class="same-height-row">
                        <div class="col-sm-3">
                            <div class="box same-height clickable" style="background-color:#68AE00">
                                <div class="icon" style="left: 0; top: -20px; height: 100%" ><i class="fa fa-file-text-o"></i>
                                </div>
                                <br /><br /><br /><br /><br />
                                <h4><a href="#">REGISTERED USERS</a></h4>
                               <asp:Label ID="Label1" runat="server" Font-Bold="true" ForeColor="White"></asp:Label>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div class="box same-height clickable" style="background-color:#FC8213">
                                <div class="icon"><i class="fa fa-eye"> </i>
                                </div>
                                 <br /><br /><br /><br /><br />
                                <h4><a href="#">VISITOR COUNT</a></h4>
                                <asp:Label ID="Label2" runat="server" Font-Bold="true" ForeColor="White"></asp:Label>
                            </div>
                        </div>

                        <div class="col-sm-3">
                            <div class="box same-height clickable" style="background-color:#337AB7">
                                <div class="icon"><i class="fa fa-shopping-cart"></i>
                                </div>
                                <br /><br /><br /><br /><br />
                                <h4><a href="#">ORDERS</a></h4>
                                <asp:Label ID="Label3" runat="server" Font-Bold="true" ForeColor="White"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->

                </div>
                <!-- /.container -->

            </div>
            <!-- /#advantages -->
 
                    </div>
                </div>
         <div class="col-md-9">
                    <div class="box">
                       <h4 style="color:orangered; font-weight: bold;">SEND LIVE NOTIFICATION</h4><br />
                        <ble class="nav-justified" style=height": 170px">
                            <tr>
                                <td style="width: 245px">
                                    <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="#CC0066" Text="TYPE TEXT"></asp:Label>
                                <br /><br />
                                </td>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" Height="82px" TextMode="MultiLine" Width="446px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 245px">&nbsp;</td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" BackColor="#CC0066" OnClick="Button1_Click" Text="Send" />
                                    <br />
&nbsp;
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" ForeColor="#0066FF" OnClick="LinkButton2_Click">View All Updates</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF" OnClick="LinkButton1_Click" Visible="False">Clear All</asp:LinkButton>
&nbsp;
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Red" Visible="False"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="518px" Visible="False">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="notifyid" HeaderText="notifyid" InsertVisible="False" ReadOnly="True" SortExpression="notifyid" />
                                            <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                                        </Columns>
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString17 %>" SelectCommand="SELECT * FROM [Notification] ORDER BY [notifyid] DESC"></asp:SqlDataSource>
                                </td>
                            </tr>
                        </ble>

                        </div>
             </div>
     <div class="col-md-9">
                    <div class="box">
                       
                        <h4 style="color:orangered; font-weight: bold;">SEND BULK SMS</h4>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem>Registered Customer</asp:ListItem>
                            <asp:ListItem>Subscriber</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                            <div class="table-responsive">      
                                <table class="nav-justified" style="height: 193px">
                                    <tr>
                                        <td class="modal-sm" style="width: 279px; height: 36px;">TOTAL REGISTERED CUSTOMERS</td>
                                        <td style="height: 36px">
                                            <asp:Label ID="Label9" runat="server" Font-Bold="True" ForeColor="#CC0066"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="modal-sm" style="width: 279px; height: 49px;">EMAIL SUBJECT</td>
                                        <td style="height: 49px">
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="modal-sm" style="width: 279px">YOUR MESSAGE</td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" Height="163px" TextMode="MultiLine" Width="474px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="modal-sm" style="width: 279px">&nbsp;</td>
                                        <td>
                                            <asp:Button ID="Button2" runat="server" BackColor="#CC0066" Font-Bold="True" ForeColor="White" OnClick="Button2_Click" Text="SEND" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="modal-sm" style="width: 279px">&nbsp;</td>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        
       
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingDataConnectionString2 %>" SelectCommand="SELECT [orderid], [sno], [productid], [productname], [price], [quantity], [dateoforder] FROM [OrderDetails] ORDER BY [dateoforder] DESC"></asp:SqlDataSource>
                                    
    </div>
       
          
            <!-- /.container -->
   </div>    



</asp:Content>

