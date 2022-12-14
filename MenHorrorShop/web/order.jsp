<%-- 
    Document   : order
    Created on : Mar 16, 2022, 6:25:56 PM
    Author     : admin
--%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mua hàng</title>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/G4F.ico">
    </head>
    <body>
        <div class="receipt-content">
            <div class="container bootstrap snippets bootdey">
                <div class="row">
                    <div class="col-md-12">
                        <div class="invoice-wrapper">
                            <div class="intro">
                                Chào <strong>${a1.realname}</strong>, 
                                <br>
                                Số tiền bạn cần thanh toán là <strong> <fmt:formatNumber type = "number" value = "${total}"/> đồng</strong>
                            </div>

                            <div class="payment-details">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <span>Thông tin thanh toán</span>
                                        <br>
                                        <p>
                                            Người nhận <br>
                                            Số điện thoại <br>							
                                            Email							
                                        </p>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <br>
                                        <br>

                                        <p>

                                            ${a1.realname} <br>
                                            ${a1.phone} <br>
                                            <c:if test="${a1.gmail!=null}">
                                                ${a1.gmail}
                                            </c:if>
                                            <c:if test="${empty a1.gmail}">
                                                  <a href="EditProfile" style="color: red">Cập nhật gmail để nhận thông tin account</a>
                                            </c:if>
                                            
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <div class="line-items">
                                <div class="headers clearfix">
                                    <div class="row">
                                        <div class="col-xs-4">Chi tiết</div>
                                        <div class="col-xs-3">Số lượng</div>
                                        <div class="col-xs-5 text-right">Giá tiền</div>
                                    </div>
                                </div>
                                <div class="items">
                                    <c:forEach items="${p}" var="p">
                                        <div class="row item">
                                            <div class="col-xs-4 desc">
                                                Mã ID : #${p.id}
                                            </div>
                                            <div class="col-xs-3 qty">
                                                1
                                            </div>
                                            <div class="col-xs-5 amount text-right">
                                                <fmt:formatNumber type = "number" value = "${p.price}"/> đồng
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="total text-right">
                                    <p class="extra-notes">
                                        <strong style="color: red;">Lưu ý</strong>
                                        Sau khi nhận được tài khoản và mật khẩu vui 
                                        lòng đổi mật khẩu.
                                    </p>
                                    <div class="field grand-total">
                                        Số dư ví <span> <fmt:formatNumber type = "number" value = "${a1.accountbalance}"/> đồng</span>
                                    </div>
                                    <div class="field grand-total">
                                        Tổng tiền thanh toán <span style="color: red;"> - <fmt:formatNumber type = "number" value = "${total}"/> đồng</span>
                                    </div>
                                    <div class="field grand-total">
                                        Số dư còn lại <span> <fmt:formatNumber type = "number" value = "${a1.accountbalance-total}"/> đồng</span>
                                    </div>

                                </div>

                                <div class="print">
                                    <c:if test="${a1.accountbalance>=total && !empty a1.gmail}">
                                        <a href="OrderProcess?total=${total}">
                                            <i class="fa fa-print"></i>
                                            Đồng ý thanh toán
                                        </a>
                                    </c:if>
                                    <c:if test="${a1.accountbalance<total}">
                                        <h2 style="color: red">Bạn không đủ số dư trong ví</h2>
                                        <a href="InfomationPage">
                                            <i class="fa fa-print"></i>
                                            Nạp tiền vào ví
                                        </a>
                                    </c:if>
                                        <c:if test="${empty a1.gmail}">
                                        <h2 style="color: red">Vui lòng thêm thông tin gmail</h2>
                                        <a href="EditProfile">Thêm gmail</a>
                                    </c:if>    
                                        <a href="CartPage">
                                            <i class="fa fa-print"></i>
                                            Quay lại
                                        </a>
                                </div>
                            </div>
                        </div>

                        <div class="footer">
                            Copyright © 2022. MenHorrorShop 
                        </div>
                    </div>
                </div>
            </div>
        </div>                    

        <style type="text/css">
            .receipt-content .logo a:hover {
                text-decoration: none;
                color: #7793C4; 
            }

            .receipt-content .invoice-wrapper {
                background: #FFF;
                border: 1px solid #CDD3E2;
                box-shadow: 0px 0px 1px #CCC;
                padding: 40px 40px 60px;
                margin-top: 40px;
                border-radius: 4px; 
            }

            .receipt-content .invoice-wrapper .payment-details span {
                color: #A9B0BB;
                display: block; 
            }
            .receipt-content .invoice-wrapper .payment-details a {
                display: inline-block;
                margin-top: 5px; 
            }

            .receipt-content .invoice-wrapper .line-items .print a {
                display: inline-block;
                border: 1px solid #9CB5D6;
                padding: 13px 13px;
                border-radius: 5px;
                color: #708DC0;
                font-size: 13px;
                -webkit-transition: all 0.2s linear;
                -moz-transition: all 0.2s linear;
                -ms-transition: all 0.2s linear;
                -o-transition: all 0.2s linear;
                transition: all 0.2s linear; 
            }

            .receipt-content .invoice-wrapper .line-items .print a:hover {
                text-decoration: none;
                border-color: #333;
                color: #333; 
            }

            .receipt-content {
                background: #ECEEF4; 
            }
            @media (min-width: 1200px) {
                .receipt-content .container {width: 900px; } 
            }

            .receipt-content .logo {
                text-align: center;
                margin-top: 50px; 
            }

            .receipt-content .logo a {
                font-family: Myriad Pro, Lato, Helvetica Neue, Arial;
                font-size: 36px;
                letter-spacing: .1px;
                color: #555;
                font-weight: 300;
                -webkit-transition: all 0.2s linear;
                -moz-transition: all 0.2s linear;
                -ms-transition: all 0.2s linear;
                -o-transition: all 0.2s linear;
                transition: all 0.2s linear; 
            }

            .receipt-content .invoice-wrapper .intro {
                line-height: 25px;
                color: #444; 
            }

            .receipt-content .invoice-wrapper .payment-info {
                margin-top: 25px;
                padding-top: 15px; 
            }

            .receipt-content .invoice-wrapper .payment-info span {
                color: #A9B0BB; 
            }

            .receipt-content .invoice-wrapper .payment-info strong {
                display: block;
                color: #444;
                margin-top: 3px; 
            }

            @media (max-width: 767px) {
                .receipt-content .invoice-wrapper .payment-info .text-right {
                    text-align: left;
                    margin-top: 20px; } 
            }
            .receipt-content .invoice-wrapper .payment-details {
                border-top: 2px solid #EBECEE;
                margin-top: 30px;
                padding-top: 20px;
                line-height: 22px; 
            }


            @media (max-width: 767px) {
                .receipt-content .invoice-wrapper .payment-details .text-right {
                    text-align: left;
                    margin-top: 20px; } 
            }
            .receipt-content .invoice-wrapper .line-items {
                margin-top: 40px; 
            }
            .receipt-content .invoice-wrapper .line-items .headers {
                color: #A9B0BB;
                font-size: 13px;
                letter-spacing: .3px;
                border-bottom: 2px solid #EBECEE;
                padding-bottom: 4px; 
            }
            .receipt-content .invoice-wrapper .line-items .items {
                margin-top: 8px;
                border-bottom: 2px solid #EBECEE;
                padding-bottom: 8px; 
            }
            .receipt-content .invoice-wrapper .line-items .items .item {
                padding: 10px 0;
                color: #696969;
                font-size: 15px; 
            }
            @media (max-width: 767px) {
                .receipt-content .invoice-wrapper .line-items .items .item {
                    font-size: 13px; } 
            }
            .receipt-content .invoice-wrapper .line-items .items .item .amount {
                letter-spacing: 0.1px;
                color: #84868A;
                font-size: 16px;
            }
            @media (max-width: 767px) {
                .receipt-content .invoice-wrapper .line-items .items .item .amount {
                    font-size: 13px; } 
            }

            .receipt-content .invoice-wrapper .line-items .total {
                margin-top: 30px; 
            }

            .receipt-content .invoice-wrapper .line-items .total .extra-notes {
                float: left;
                width: 40%;
                text-align: left;
                font-size: 13px;
                color: #7A7A7A;
                line-height: 20px; 
            }

            @media (max-width: 767px) {
                .receipt-content .invoice-wrapper .line-items .total .extra-notes {
                    width: 100%;
                    margin-bottom: 30px;
                    float: none; } 
            }

            .receipt-content .invoice-wrapper .line-items .total .extra-notes strong {
                display: block;
                margin-bottom: 5px;
                color: #454545; 
            }

            .receipt-content .invoice-wrapper .line-items .total .field {
                margin-bottom: 7px;
                font-size: 14px;
                color: #555; 
            }

            .receipt-content .invoice-wrapper .line-items .total .field.grand-total {
                margin-top: 10px;
                font-size: 16px;
                font-weight: 500; 
            }

            .receipt-content .invoice-wrapper .line-items .total .field.grand-total span {
                color: #20A720;
                font-size: 16px; 
            }

            .receipt-content .invoice-wrapper .line-items .total .field span {
                display: inline-block;
                margin-left: 20px;
                min-width: 85px;
                color: #84868A;
                font-size: 15px; 
            }

            .receipt-content .invoice-wrapper .line-items .print {
                margin-top: 50px;
                text-align: center; 
            }



            .receipt-content .invoice-wrapper .line-items .print a i {
                margin-right: 3px;
                font-size: 14px; 
            }

            .receipt-content .footer {
                margin-top: 40px;
                margin-bottom: 110px;
                text-align: center;
                font-size: 12px;
                color: #969CAD; 
            }                    
        </style>

        <script type="text/javascript">


        </script>
    </body>
</html>
