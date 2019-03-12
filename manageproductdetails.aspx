<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="manageproductdetails.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li ><a href="#" style="color: #4fbfa8">Admin</a>
                        </li>
                        <li>Manage Product Details</li>
                    </ul>

                </div>
    
    
    <div class="col-md-12">
                    <div class="box">
                       
        <asp:Label ID="Label1" runat="server" Text="Welcome Admin !!" ForeColor="Red" Font-Size="X-Large"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF" NavigateUrl="~/dashboard.aspx">Go back to Admin home</asp:HyperLink>
                        <br />

        <asp:Label ID="Label2" runat="server" Text="Manage your Product Details here.." ForeColor="#0099FF" Font-Italic="True"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
                        <br />
        <asp:Label ID="Label3" runat="server" Font-Size="Larger" Font-Bold="True" ForeColor="Red"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                       <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" style="margin-right: 5px" GridLines="None" CellPadding="4" Width="100%" ForeColor="#333333" Height="579px" >
                            <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID">
                            <ItemStyle  />
                            </asp:BoundField>
                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName">
                            <ItemStyle  />
                            </asp:BoundField>
                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price">
                            <ItemStyle />
                            </asp:BoundField>
                            <asp:BoundField DataField="ProductImage" HeaderText="ProductImage" SortExpression="ProductImage">
                            <ItemStyle />
                            </asp:BoundField>
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

                            <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />

<HeaderStyle HorizontalAlign="Justify" BackColor="#990000" Font-Bold="True" ForeColor="White"></HeaderStyle>
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <br />
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString12 %>" DeleteCommand="DELETE FROM [ProductDetail] WHERE [ProductID] = @ProductID" InsertCommand="INSERT INTO [ProductDetail] ([ProductName], [Price], [ProductImage],[TotalQuantity], [Stockavailable],[Soldout],[Length],[Width],[Material],[Color],[BigDescription],[Discount]) VALUES (@ProductName, @Price, @ProductImage,@Totalquantity,@Stockavailable,@Soldout,@Length,@Width,@Material,@Color,@BigDescription,@Discount)" SelectCommand="SELECT * FROM [ProductDetail]" UpdateCommand="UPDATE [ProductDetail] SET [ProductName] = @ProductName, [Price] = @Price, [ProductImage] = @ProductImage,[TotalQuantity]=@TotalQuantity, [Stockavailable] = @Stockavailable,[Soldout]=@Soldout,[Length]=@Length,[Width]=@Width,[Material]=@Material,[Color]=@Color,[BigDescription]=@BigDescription,[Discount]=@Discount WHERE [ProductID] = @ProductID">
                        <DeleteParameters>
                            <asp:Parameter Name="ProductID" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Price" Type="Int64" />
                            <asp:Parameter Name="ProductImage" Type="String" />
                            <asp:Parameter Name="Stockavailable" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ProductName" Type="String" />
                            <asp:Parameter Name="Price" Type="Int64" />
                            <asp:Parameter Name="ProductImage" Type="String" />
                            <asp:Parameter Name="Stockavailable" Type="String" />
                            <asp:Parameter Name="ProductID" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                           </div>
    </div>
        </div>
  
</asp:Content>

