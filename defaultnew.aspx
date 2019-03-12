<%@ Page Title="" Language="C#" MasterPageFile="~/my.master" AutoEventWireup="true" CodeFile="defaultnew.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
            <div class="container">

                <div class="col-md-12" style="left: 0px; top: 0px">
                    <ul class="breadcrumb">
                        <li><a href="#" style="color: #4fbfa8">Home</a>
                        </li>
                        <li>Shopping cart&nbsp;&nbsp;&nbsp;</li>
                        <li>
                            Welcome&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                        </li>
                    </ul>
                </div>

                <div class="col-md-9" id="basket">

                    <div class="box">
   <h1>Shopping Cart</h1>
    <p>
      
        You currently have <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label> items in your cart

    </p>
   <div class="col-md-12">
    <table class="nav-justified">
        <tr>
            <td class="text-left" style="width:80px">Search by :</td>
            <td style="width: 210px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="ProductName" DataValueField="ProductName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control" Width="150px"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString13 %>" SelectCommand="SELECT DISTINCT [ProductName] FROM [ProductDetail]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
            <td class="text-right" style="width: 307px">Sort by :</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" CssClass="form-control" Width="150px">
                    <asp:ListItem>Low to High</asp:ListItem>
                    <asp:ListItem>High to Low</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
    </table>
    </div>   
    <br />
   <div class="table-responsive">
    <asp:Panel ID="Panel1" runat="server" >
        <asp:DataList ID="DataList1" runat="server" DataKeyField="ProductID" DataSourceID="SqlDataSource2" RepeatColumns="3" cssClass="row" RepeatLayout="Flow" RepeatDirection="Horizontal" BackColor="white" Height="100%"  width="100%" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                  <%-- <div class="row">--%>
    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3"><!--THUMBNAIL#2-->
    <div class="panel-body">
                               
                               <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" class="label label-warning" Visible="False" Text='<%# Eval("ProductID") %>'></asp:Label>
                           <div class="thumbnail label-success">
                                <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" ImageUrl='<%# Eval("ProductImage") %>' />
                               <div class="caption"><h4>#<small><asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("ProductName") %>'></asp:Label></small></h4>
                                    <strong> <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("Price") %>'></asp:Label><small>Dhms</small></strong>
                                  <p>
                              <small>Available Stock:<strong> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></strong> </small> <br />
                                
                            <small>Quantity : <strong> <asp:DropDownList ID="DropDownList3" runat="server">
                                                                 <asp:ListItem>1</asp:ListItem>
                                                                         <asp:ListItem>2</asp:ListItem>
                                                                         <asp:ListItem>3</asp:ListItem>
                                                                         <asp:ListItem>4</asp:ListItem>
                                                                         <asp:ListItem>5</asp:ListItem>

                                                       </asp:DropDownList></strong> </small> <br />
                                <small>
                                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label></small>
                                      </p>
                           
                             
                               
                                <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Height="24px" ImageUrl="~/images/addtomycart.jpg" Width="88px" />
                            
                </div>
      </div>
     </div>
     </div> 
      <%--</div>--%>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString14 %>" SelectCommand="SELECT * FROM [ProductDetail] WHERE ([ProductName] = @ProductName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="ProductName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList2" runat="server" DataKeyField="ProductID" RepeatColumns="3" cssClass="row" RepeatLayout="Flow" RepeatDirection="Horizontal" BackColor="white" Height="100%"  width="100%" OnItemCommand="DataList2_ItemCommand">

            <ItemTemplate>
                <div class="text-center">
                    <table align="center" class="nav-justified" style="border: thin solid #000000; background-color:white;width:200px">
                        <tr>
                            <td>
                                <asp:Label ID="Label15" runat="server" Font-Bold="True" Font-Size="Large" Text="Product ID:"></asp:Label>
                                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("ProductID") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("ProductName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px">
                                <asp:Label ID="Label18" runat="server" Font-Bold="True" Font-Size="Large" Text="Price :"></asp:Label>
                                <asp:Label ID="Label19" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="24px" ImageUrl="~/images/addtomycart.jpg" Width="88px" />
                            </td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>

        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString15 %>" SelectCommand="SELECT * FROM [ProductDetail] ORDER BY [Price]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString16 %>" SelectCommand="SELECT * FROM [ProductDetail] ORDER BY [Price] DESC"></asp:SqlDataSource>
    </asp:Panel>
       </div>
  <div class="box-footer">
             <div class="pull-right">
              
                 <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-primary" NavigateUrl="~/addtocartnew.aspx">Proceed to CheckOut</asp:HyperLink>                 
                                   
              </div>
  </div>

</div>
</div>
</div>


</asp:Content>

