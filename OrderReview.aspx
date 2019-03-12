<%@ Page Title="" Language="C#" MasterPageFile="~/my.master" AutoEventWireup="true" CodeFile="OrderReview.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li>Checkout - Payment</li>
                    </ul>
                </div>

                <div class="col-md-12" id="checkout">

                    <div class="box">
                        <form method="post" action="payment.aspx">
                            <h1>Checkout</h1>
                            <ul class="nav nav-pills nav-justified">
                                <li class="disabled"><a href="#"><i class="fa fa-map-marker"></i><br>Address</a>
                                </li>
                              
                                <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Payment</a>
                                </li>
                                <li class="active"><a href="#"><i class="fa fa-eye"></i><br>Order Review</a>
                                </li>
                                <li class=""><a href="#"><i class="fa fa-check-square-o"></i><br>Generate invoice</a>
                                </li>
                            </ul>

                            <div class="content">
                                
                          <div class="box-footer">
                                <div class="pull-left">
                                    <a href="basket.html" class="btn btn-default"><i class="fa fa-chevron-left"></i>Back to basket</a>
                                </div>
                                <div class="pull-right" >
                                    <a href="PlacedSuccessfully.aspx" style="background-color:#4fbfa8" class="btn btn-default">Generate Invoice<i class="fa fa-chevron-right"></i></a>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- /.box -->


                </div>
               

      

            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->
</asp:Content>

