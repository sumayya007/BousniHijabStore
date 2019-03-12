<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="customerdetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#" style="color: #4fbfa8">Home</a>
                        </li>
                        <li>Customer Details</li>
                    </ul>
                </div>
                <div class="col-md-3">
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
                                          <asp:Label ID="Label1" runat="server" ForeColor="White" Text="PRODUCT MANAGEMENT"></asp:Label>
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
                                          <asp:Label ID="Label2" runat="server" ForeColor="White" Text="CATEGORY MANAGEMENT"></asp:Label>
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
                        <h3>REGISTERED USERS</h3>
                        <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" Width="100%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="regid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="524px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="regid" HeaderText="regid" InsertVisible="False" ReadOnly="True" SortExpression="regid" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                            </Columns>
                            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                            </div>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString18 %>" SelectCommand="SELECT DISTINCT * FROM [Registration]"></asp:SqlDataSource>
                    </div>
                  </div>
                </div>
         </div>

</asp:Content>

