<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="hitcounter.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="container"> 
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
                                          <asp:Label ID="Label6" runat="server" ForeColor="White" Text="CATEGORY MANAGEMENT"></asp:Label>
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
    <div class="col-md-6">
                    <div class="box">
    
    <asp:Label ID="Label2" runat="server" Text="Welcome Admin !!" ForeColor="Red" Font-Size="X-Large" Font-Bold="True"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Onine visitors on your Website.." Font-Bold="True" Font-Italic="True" ForeColor="#333333"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <table align="center" border="0" class="nav-justified" style=" height: 117px; width: 41%">
            <tr>
                <td class="text-center" style=" background-color: #4fbfa8; height: 86px ">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="White" Text="Hit Counter"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 67px; border-right-style: solid; border-bottom-style: solid; border-left-style: solid; border-right-width: thin; border-bottom-width: thin; border-left-width: thin; border-right-color: #666666; border-bottom-color: #666666; border-left-color: #666666;" class="text-center">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black"></asp:Label>
                </td>
            </tr>
        </table>
    <br />
    <br />
    

   
    </div>
        </div>
</div>
</asp:Content>

