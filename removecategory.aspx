<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="removecategory.aspx.cs" Inherits="Default2" %>

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
                                          <asp:Label ID="Label4" runat="server" ForeColor="White" Text="CATEGORY MANAGEMENT"></asp:Label>
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

    <div class="col-md-9" style="left: 0px; top: -21px; height: 795px" >
                    <div class="box" style="height:650px">
   
    <asp:Label ID="Label1" runat="server" Text="REMOVE CATEGORY" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <br />
    <br />
        <table class="nav-justified" style="width: 101%; height: 201px">
                       
                    
            <tr>
                <td style="width: 228px">CATEGORY NAME</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;
                    <asp:Label ID="Label8" runat="server" Font-Bold="True" ForeColor="Red" Text="* USE CAPITAL LETTERS ONLY(WITH SPACE BETWEEN WORDS)"></asp:Label>
                </td>
            </tr>
           
                    
            <tr>
                <td style="width: 228px"></td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Remove Category" CssClass="btn btn-primary" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
   
    </div>
        </div>
        </div>

</asp:Content>

