<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="deleteproduct.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container">
    <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li ><a href="#" style="color: #4fbfa8">Admin</a>
                        </li>
                        <li>Add new Product</li>
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
                                          <asp:Label ID="Label3" runat="server" ForeColor="White" Text="PRODUCT MANAGEMENT"></asp:Label>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/addproducts.aspx">&gt;&gt;   ADD NEW PRODUCT</asp:HyperLink>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/deleteproduct.aspx">&gt;&gt;   EDIT/DELETE PRODUCT</asp:HyperLink>
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
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink9" runat="server">&gt;&gt;   ADD NEW CATEGORY</asp:HyperLink>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td>
                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink11" runat="server">&gt;&gt;   DELETE CATEGORY</asp:HyperLink>
                                      </td>
                                  </tr>
                              </table>
                            
                        </div>
                    </div>
         </div>
    <div class="col-md-9">
                    <div class="box">
   
    <asp:Label ID="Label1" runat="server" Text="Welcome Admin !!" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Manage Product Details Here.." Font-Bold="True" Font-Italic="True" ForeColor="#0066FF"></asp:Label>
    
        <br />
        
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True"  AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
                            <Columns>
                                <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
                                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                <asp:BoundField DataField="ProductImage" HeaderText="ProductImage" SortExpression="ProductImage" />
                                <asp:BoundField DataField="Totalquantity" HeaderText="Totalquantity" SortExpression="Totalquantity" />
                                <asp:BoundField DataField="Stockavailable" HeaderText="Stockavailable" SortExpression="Stockavailable" />
                                <asp:BoundField DataField="Soldout" HeaderText="Soldout" SortExpression="Soldout" />
                                <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
                                <asp:BoundField DataField="Width" HeaderText="Width" SortExpression="Width" />
                                <asp:BoundField DataField="Material" HeaderText="Material" SortExpression="Material" />
                                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                                <asp:BoundField DataField="BigDescription" HeaderText="BigDescription" SortExpression="BigDescription" />
                                <asp:BoundField DataField="Discount" HeaderText="Discount" SortExpression="Discount" />
                                <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString23 %>" SelectCommand="SELECT * FROM [ProductDetail]"></asp:SqlDataSource>
    </div>
        </div>
        </div>
        
</asp:Content>

