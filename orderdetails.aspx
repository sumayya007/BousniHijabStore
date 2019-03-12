<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="orderdetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="dashboard.aspx" style="color: #4fbfa8">Home</a>
                        </li>
                        <li>Customer Details</li>
                    </ul>
                </div>
                
                 <div class="col-md-12">

                    <div class="box">
                        <h3>REGISTERED USERS</h3>
                        <div class="table-responsive">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" Width="100%" Height="520px">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" />
                                    <asp:BoundField DataField="sno" HeaderText="sno" SortExpression="sno" />
                                    <asp:BoundField DataField="productid" HeaderText="productid" SortExpression="productid" />
                                    <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
                                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                                    <asp:BoundField DataField="dateoforder" HeaderText="dateoforder" SortExpression="dateoforder" />
                                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShoppingDataConnectionString3 %>" SelectCommand="SELECT * FROM [OrderDetails] ORDER BY [orderid] DESC"></asp:SqlDataSource>
                            </div>
                       
                    </div>
                  </div>
                </div>
         </div>
</asp:Content>

