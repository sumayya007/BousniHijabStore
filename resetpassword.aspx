<%@ Page Title="" Language="C#" MasterPageFile="~/my.master" AutoEventWireup="true" CodeFile="resetpassword.aspx.cs" Inherits="Default2" UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
           <div class="container">

                <div class="col-md-12">

                    <ul class="breadcrumb">
                        <li><a href="#" style="color: #4fbfa8">Home</a>
                        </li>
                        <li>My account</li>
                    </ul>

                </div>

                <div class="col-md-3">
                    <!-- *** CUSTOMER MENU ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Customer section</h3>
                        </div>

                        <div class="panel-body">

                            <ul class="nav nav-pills nav-stacked">
                                <li >
                                    <a href="orderhistory.aspx" style="color: #4fbfa8"><i class="fa fa-list"></i> My orders</a>
                                </li>
                                <li>
                                    <a href="Wishlist.aspx" style="color: #4fbfa8"><i class="fa fa-heart"></i> My wishlist</a>
                                </li>
                                <li class="active">
                                    <a href="resetpassword.aspx" style="color:white"><i class="fa fa-user"></i> Reset Password</a>
                                </li>
                                <li>
                                    <a href="logout.aspx" style="color: #4fbfa8"><i class="fa fa-sign-out"></i> Logout</a>
                                </li>
                            </ul>
                        </div>

                    </div>
                    <!-- /.col-md-3 -->

                    <!-- *** CUSTOMER MENU END *** -->
                </div>

                <div class="col-md-9">
                    <div class="box">
                        <h1>My account</h1>
                       
                        <p class="text-muted">Welcome
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            </p>
                            <p class="text-muted">Change your password here..</p>

                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="password_old">Old password</label>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                        <br />
                                        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter your old password" Font-Bold="True" ForeColor="Red"></asp:CustomValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="password_1">New password</label>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                        <br />
                                        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter your new password" Font-Bold="True" ForeColor="Red"></asp:CustomValidator>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="password_2">Retype new password</label>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                        <br />
                                        <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Re-enter your new password" Font-Bold="True" ForeColor="Red"></asp:CustomValidator>
                                    </div>
                                </div>
                            </div>
                            <!-- /.row -->

                            <div class="col-sm-12 text-center">
                                <asp:Button ID="Button1" runat="server" Text="Save new Password" class="btn btn-primary" OnClick="Button1_Click"/>
                                <br />
                                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Red"></asp:Label>
                            </div>
                      

                        <hr>

                      
                    </div>
                </div>

            </div>
            <!-- /.container -->

</asp:Content>

