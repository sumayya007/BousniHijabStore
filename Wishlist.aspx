<%@ Page Title="" Language="C#" MasterPageFile="~/my.master" AutoEventWireup="true" CodeFile="Wishlist.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="content">
            <div class="container">

                <div class="col-md-12" style="left: 0px; top: 0px">
                    <ul class="breadcrumb">
                        <li><a href="Default.aspx" style="color: #4fbfa8">Home</a>
                        </li>
                        <li>WishList&nbsp;&nbsp;&nbsp;</li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="Red" OnClick="LinkButton1_Click">Clear WishList</asp:LinkButton>
                        &nbsp;&nbsp;
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Font-Underline="True" ForeColor="#0066FF" NavigateUrl="~/newdefault.aspx">Go Back</asp:HyperLink>
                        </li>
                        
                    </ul>
                </div>

                <div class="col-md-9" id="basket">

                    <div class="box">
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" AllowPaging="True" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal"  Width="100%" BorderColor="White" OnRowDeleting="GridView1_RowDeleting">
                            <Columns>
                                <asp:BoundField DataField="productid" HeaderText="Product ID" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="productname" HeaderText="Product Name" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:BoundField DataField="price" HeaderText="Price" >
                                <ItemStyle HorizontalAlign="Center" />
                                </asp:BoundField>
                                <asp:ImageField DataImageUrlField="productimage" HeaderText="Product Image">
                                    <ControlStyle Height="100px" Width="100px" />
                                    <ItemStyle HorizontalAlign="Center" />
                                </asp:ImageField>
                                
                                <asp:CommandField DeleteText="Remove" HeaderText="Remove" ShowDeleteButton="True">
                                <ControlStyle ForeColor="Red" />
                                </asp:CommandField>
                                
                            </Columns>

                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        </div>
                    </div>
                </div>
        </div>
</asp:Content>

