<%@ Page Title="" Language="C#" MasterPageFile="~/pay.master" AutoEventWireup="true" CodeFile="purchase.aspx.cs" Inherits="Default2" UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

             <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#" style="color: #4fbfa8">Home</a>
                        </li>
                        <li>Checkout - Payment</li>
                    </ul>
                </div>
                <div class="col-md-12" id="checkout">

                   

                    <div class="box">
                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;</p>
                            <h1>Checkout</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li class="disabled"><a href="#"><i class="fa fa-map-marker"></i><br>Address</a>
                                </li>
                              
                                <li class="active"><a href="#"><i class="fa fa-money"></i><br>Payment</a>
                                </li>
                                <li class="disabled"><a href="#"><i class="fa fa-check-square-o"></i><br>Generate invoice</a>
                                </li>
                            </ul>
                      </div>
                      <table class="nav-justified">
            <tr>
                <td style="width: 192px">Your Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your name" Font-Bold="True" ForeColor="Red"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 192px; height: 25px;">Email Address</td>
                <td style="height: 25px">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter your email ID" Font-Bold="True" ForeColor="Red"></asp:CustomValidator>
&nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a valid Email ID" Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 192px">Mobile Number</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
               <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter your phone number" Font-Bold="True" ForeColor="Red"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 192px">Price<td>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <input type="hidden" runat="server" id="key" name="key" value="gtKFFx" />
        <input type="hidden" runat="server" id="salt" name="salt" value="eCwWELxi" />
        <input type="hidden" runat="server" id="hash" name="hash" value=""  />
        <input type="hidden" runat="server" id="txnid" name="txnid" value="" />

        <asp:Button ID="Button1" runat="server" Text="Buy" OnClick="Button1_Click"></asp:Button>
               
                        </div>
                
             </div>

</asp:Content>

