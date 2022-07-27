<%-- 
    Document   : cart
    Created on : Mar 7, 2022, 9:21:40 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ hàng của bạn</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/G4F.ico">
        <!------ Include the above in your HEAD tag ---------->
        <style>
            .table>tbody>tr>td, .table>tfoot>tr>td{
                vertical-align: middle;
            }
            @media screen and (max-width: 600px) {
                table#cart tbody td .form-control{
                    width:20%;
                    display: inline !important;
                }
                .actions .btn{
                    width:36%;
                    margin:1.5em 0;
                }

                .actions .btn-info{
                    float:left;
                }
                .actions .btn-danger{
                    float:right;
                }

                table#cart thead { display: none; }
                table#cart tbody td { display: block; padding: .6rem; min-width:320px;}
                table#cart tbody tr td:first-child { background: #333; color: #fff; }
                table#cart tbody td:before {
                    content: attr(data-th); font-weight: bold;
                    display: inline-block; width: 8rem;
                }



                table#cart tfoot td{display:block; }
                table#cart tfoot td .btn{display:block;}

            }
        </style>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <table id="cart" class="table table-hover">
                <thead>
                    <tr>
                        <th style="width:60%" class="h3">Account</th>
                        <th style="width:10%" class="h3">Giá</th>
                        <th style="width:20%" class="text-center h3">Số lượng</th>
                        <th style="width:10%"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="p" items="${products}">
                        <tr>
                            <td data-th="Product">
                                <div class="row">
                                    <div class="col-sm-2 hidden-xs"><img src="https://sieupet.com/sites/default/files/pictures/images/1-1473150685951-5.jpg" alt="..." class="img-responsive"/></div>
                                    <div class="col-sm-10">
                                        <h4 class="nomargin">Mã ID</h4>
                                        <a class="text-danger" href="">#${p.getId()}</a>
                                    </div>
                                </div>
                            </td>
                            <td data-th="Price"><fmt:formatNumber type = "number" value = "${p.price}"/> đồng</td>
                            <td data-th="Quantity" class="text-center">1</td>
                            <td class="actions" data-th="">
                                <a class="btn btn-danger btn-sm" href="CartChange?action=delete&pid=${p.id}&current=CartPage"><i class="fa fa-trash-o"></i></a>								
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
                <tfoot>
                    <tr>
                        <td><a href="ShopPage" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
                        <td colspan="2" class="hidden-xs"></td>
                        <td class="hidden-xs text-center"><strong><fmt:formatNumber type = "number" value = "${total}"/> đồng</strong></td>
           
                    <c:if test="${sessionScope.logged!=null && total!=0}">
                        <td><form action="Order"><input type="hidden" value="${total}" name="total"><button class="btn btn-success btn-block" type="submit">Đi tới thanh toán</button></form></td>
                    </c:if>
            
                </tr>
                </tfoot>
            </table>
            <h4 class="text-danger">Sau khi thanh toán tài khoản và mật khẩu account sẽ được gửi vào mail của bạn</h4>
            <h4 class="text-danger">Vào mail kiểm tra tài khoản và đổi mật khẩu sau. Sau khi nhận được account nếu </h4>
            <h4 class="text-danger">không đổi mật khẩu thì mọi rủi ro shop sẽ không chịu trách nhiệm ! Xin cảm ơn !</h4>
        </div>
        <script>
            (function ($) {
                showSwal = function (type) {
                    'use strict';
                    if (type === 'success-message') {
                        swal({
                            title: 'Thanh toán thành công!',
                            text: 'Bạn có thể xem lịch sử thanh toán trong trang cá nhân',
                            type: 'success',
                            button: {
                                text: "Continue",
                                value: true,
                                visible: true,
                                className: "btn btn-primary"
                            }
                        })

                    } else {
                        swal("Error occured !");
                    }
                }

            })(jQuery);
        </script>
    </body>
</html>

