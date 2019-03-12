<%@ Page Title="" Language="C#" MasterPageFile="~/my.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div id="content">
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

                <div class="col-md-12" id="basket">

                    <div class="box">

                        
                            
                            <h1>Shopping cart</h1>
                            <p >
                                
                              You currently have 
                                <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" ForeColor="Red"></asp:Label>
&nbsp;item(s) in your cart.
                               <div class="col-sm-6" >
                                Sort by Category :
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString8 %>" SelectCommand="SELECT DISTINCT [ProductName] FROM [ProductDetail]"></asp:SqlDataSource>
                                            
                                     
                                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control" Width="188px" Height="33px" DataSourceID="SqlDataSource2" DataTextField="ProductName" DataValueField="ProductName" >
                                    
                                </asp:DropDownList>
                                            
                                            <br />
                                            
                                        &nbsp;<asp:Button ID="Button3" runat="server" Text="Search" CssClass="btn btn-warning" OnClick="Button3_Click" style="text-align:center" Width="90px"/>
                                       
                                        
                                  </div>
                                 <div class="col-sm-6" >
                                            Sort by Price :<br />
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString9 %>" SelectCommand="SELECT * FROM [ProductDetail] ORDER BY [Price]"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString10 %>" SelectCommand="SELECT * FROM [ProductDetail] ORDER BY [Price] DESC"></asp:SqlDataSource>
                                    
                                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control" Width="183px" Height="33px"  >
                                                <asp:ListItem>Low to High</asp:ListItem>
                                                <asp:ListItem>High to Low </asp:ListItem>
                                            </asp:DropDownList>
                                            <br />
                                            
                                            <asp:Button ID="Button4" runat="server" Text="Sort" CssClass="btn btn-warning" OnClick="Button4_Click"/>
                                            
                                </div>
                            </p>
                            <div class="table-responsive">
                                <asp:Panel ID="Panel1" runat="server">
                                <asp:DataList ID="DataList1" runat="server"  OnItemCommand="DataList1_ItemCommand" RepeatColumns="3" cssClass="row" RepeatLayout="Flow" RepeatDirection="Horizontal" BackColor="white" Height="100%"  width="100%" DataSourceID="SqlDataSource1"  OnItemDataBound="DataList1_ItemDataBound">
                                     <ItemTemplate>
                                       <%-- <div class="row">--%>
    <div class="col-xs-6 col-sm-4 col-md-3 col-lg-3"><!--THUMBNAIL#2-->
    <div class="panel-body">
       
       <asp:Label ID="Label5" runat="server" Font-Bold="True" Text='<%# Eval("ProductID") %>' class="label label-warning" Visible="False"></asp:Label>
      <div class="thumbnail label-success">
         <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProductImage") %>' Width="200px" Height="200px" />
        <div class="caption"><h4>#<small> <asp:Label ID="Label6" runat="server" Font-Bold="True" Text='<%# Eval("ProductName") %>'></asp:Label></small></h4>
          <strong><asp:Label ID="Label7" runat="server" Text='<%# Eval("Price") %>'></asp:Label><small>Dhms</small></strong>
          <p>
          <small>Available Stock:<strong> <asp:Label ID="Label8" runat="server"></asp:Label></strong> </small> <br />
          <small>Quantity : <strong> <asp:DropDownList ID="DropDownList1" runat="server">
                                                                         <asp:ListItem>1</asp:ListItem>
                                                                         <asp:ListItem>2</asp:ListItem>
                                                                         <asp:ListItem>3</asp:ListItem>
                                                                         <asp:ListItem>4</asp:ListItem>
                                                                         <asp:ListItem>5</asp:ListItem>
                                                                     </asp:DropDownList></strong> </small> <br />
         <small><asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label></small>
        
          </p>
          <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Height="24px" ImageUrl="~/images/addtomycart.jpg" Width="88px" />
        </div>
      </div>
     </div>
     </div> 
      <%--</div>--%>
                                       
                                     </ItemTemplate>
                                 </asp:DataList>
                                  
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HaritiShoppingConnectionString7 %>" SelectCommand="SELECT * FROM [ProductDetail] WHERE ([ProductName] = @ProductName)">
                                     <SelectParameters>
                                         <asp:ControlParameter ControlID="DropDownList4" Name="ProductName" PropertyName="SelectedValue" Type="String" />
                                     </SelectParameters>
                                 </asp:SqlDataSource>
                               </asp:Panel>
                                <asp:Panel ID="Panel2" runat="server">
<asp:DataList ID="DataList2" runat="server"  OnItemCommand="DataList2_ItemCommand" RepeatColumns="3" RepeatDirection="Horizontal" style="margin-right: 0px" BackColor="White" Height="778px"   Width="783px" OnItemDataBound="DataList2_ItemDataBound" >
                                     <ItemTemplate>
                                         
                                         <table border="0" class="nav-justified" style="border: thin solid #000000; background-color:white;width:200px">
                                             <tr>
                                                 <td class="text-center" style="height: 21px">
                                                     <br />
                                                     <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Product ID"></asp:Label>
                                                     &nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Text='<%# Eval("ProductID") %>'></asp:Label>
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="text-center" style="height: 21px">
                                                     <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("ProductName") %>'></asp:Label>
                                                 </td>
                                             </tr>
                                             <tr>
                                                 <td class="text-center">
                                                     <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl='<%# Eval("ProductImage") %>' Width="255px" ImageAlign="Middle" />
                                                 
                                                 </td>
                                     
                                              </tr>                                 
                                                 <tr>
                                                     
                                                                 <td class="text-center" style="height: 28px ">&nbsp;&nbsp;&nbsp;&nbsp;Price:
                                                                     <asp:Label ID="Label11" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                                 </td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="text-center" style="height: 28px">&nbsp;Available Stock:
                                                                     <asp:Label ID="Label12" runat="server"></asp:Label>
                                                                 </td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="text-center" style="height: 38px">Quantity
                                                                     <asp:DropDownList ID="DropDownList5" runat="server">
                                                                         <asp:ListItem>1</asp:ListItem>
                                                                         <asp:ListItem>2</asp:ListItem>
                                                                         <asp:ListItem>3</asp:ListItem>
                                                                         <asp:ListItem>4</asp:ListItem>
                                                                         <asp:ListItem>5</asp:ListItem>
                                                                     </asp:DropDownList>
                                                                 </td>
                                                             </tr>
                                                             <tr>
                                                                 <td class="text-center" style="height: 38px">
                                                                     <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                                                                 </td>
                                             </tr>
                                                             <tr>
                                                                 <td class="text-center">&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Height="24px" ImageUrl="~/images/addtomycart.jpg" Width="88px" />
                                                                 </td>
                                                             
                                                        
                                                 </tr>
                                             
                                         </table>
                                       
                                         <br />
<br />
                                     </ItemTemplate>
                                 </asp:DataList>
                                </asp:Panel>
                            </div>
                            <!-- /.table-responsive -->

                            <div class="box-footer">
                                <div class="pull-right">
                                    <asp:Button ID="Button2" runat="server" Text="Proceed to Checkout" class="btn btn-primary" OnClick="Button2_Click"/>
                                   
                                   
                                </div>
                            </div>

                      

                    </div>
                    <!-- /.box -->


                    <div class="row same-height-row">
                        <div class="col-md-3 col-sm-6">
                            <div class="box same-height">
                                <h3>You may also like these products</h3>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product2_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product1_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>


                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.html">
                                                <img src="img/product1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.html">
                                                <img src="img/product1_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.html" class="invisible">
                                    <img src="img/product3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>

                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                    </div>


                </div>
                <!-- /.col-md-9 -->

               


                    
                </div>
                <!-- /.col-md-3 -->

            </div>
            <!-- /.container -->
      
        <!-- /#content -->
</asp:Content>

