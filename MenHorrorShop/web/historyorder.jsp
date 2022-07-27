<%-- 
    Document   : historyorder
    Created on : Mar 19, 2022, 9:48:35 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lịch sử</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
        <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/G4F.ico">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Lato&family=Poppins&display=swap');

            * {
                padding: 0;
                margin: 0;
                box-sizing: border-box
            }

            body {
                background-color: #777;
                font-family: 'Poppins', sans-serif
            }

            .wrapper {
                background-color: #222;
                min-height: 100px;
                max-width: 800px;
                margin: 10px auto;
                padding: 10px 30px
            }

            .dark,
            .input:focus {
                background-color: #222
            }

            .navbar {
                padding: 0.5rem 0rem
            }

            .navbar .navbar-brand {
                font-size: 30px
            }

            #income {
                border-right: 1px solid #bbb
            }

            .notify {
                display: none
            }

            .nav-item .nav-link .fa-bell-o,
            .fa-long-arrow-down,
            .fa-long-arrow-up {
                padding: 10px 10px;
                background-color: #444;
                border-radius: 50%;
                position: relative;
                font-size: 18px
            }

            .nav-item .nav-link .fa-bell-o::after {
                content: '';
                position: absolute;
                width: 7px;
                height: 7px;
                border-radius: 50%;
                background-color: #ffc0cb;
                right: 10px;
                top: 10px
            }

            .nav-item input {
                border: none;
                outline: none;
                box-shadow: none;
                padding: 3px 8px;
                width: 75%;
                color: #eee
            }

            .nav-item .fa-search {
                font-size: 18px;
                color: #bbb;
                cursor: pointer
            }

            .navbar-nav:last-child {
                display: flex;
                align-items: center;
                width: 40%
            }

            .navbar-nav .nav-item {
                padding: 0px 0px 0px 10px
            }

            .navbar-brand p {
                display: block;
                font-size: 14px;
                margin-bottom: 3px
            }

            .text {
                color: #bbb
            }

            .money {
                font-family: 'Lato', sans-serif
            }

            .fa-long-arrow-down,
            .fa-long-arrow-up {
                padding-left: 12px;
                padding-top: 8px;
                height: 30px;
                width: 30px;
                border-radius: 50%;
                font-size: 1rem;
                font-weight: 100;
                color: #28df99
            }

            .fa-long-arrow-up {
                color: #ffa500
            }

            .nav.nav-tabs {
                border: none
            }

            .nav.nav-tabs .nav-item .nav-link {
                color: #bbb;
                border: none
            }

            .nav.nav-tabs .nav-link.active {
                background-color: #222;
                border: none;
                color: #fff;
                border-bottom: 4px solid #fff
            }

            .nav.nav-tabs .nav-item .nav-link:hover {
                border: none;
                color: #eee
            }

            .nav.nav-tabs .nav-item .nav-link.active:hover {
                border-bottom: 4px solid #fff
            }

            .nav.nav-tabs .nav-item .nav-link:focus {
                border-bottom: 4px solid #fff;
                color: #fff
            }

            .table-dark {
                background-color: #222
            }

            .table thead th {
                text-transform: uppercase;
                color: #bbb;
                font-size: 12px
            }

            .table thead th,
            .table td,
            .table th {
                border: none;
                overflow: auto auto
            }

            td .fa-briefcase,
            td .fa-bed,
            td .fa-exchange,
            td .fa-cutlery {
                color: #ff6347;
                background-color: #444;
                padding: 5px;
                border-radius: 50%
            }

            td .fa-bed,
            td .fa-cutlery {
                color: #40a8c4
            }

            td .fa-exchange {
                color: #b15ac7
            }

            tbody tr td .fa-cc-mastercard,
            tbody tr td .fa-cc-visa {
                color: #bbb
            }

            tbody tr td.text-muted {
                font-family: 'Lato', sans-serif
            }

            tbody tr td .fa-long-arrow-up,
            tbody tr td .fa-long-arrow-down {
                font-size: 12px;
                padding-left: 7px;
                padding-top: 3px;
                height: 20px;
                width: 20px
            }

            .results span {
                color: #bbb;
                font-size: 12px
            }

            .results span b {
                font-family: 'Lato', sans-serif
            }

            .pagination .page-item .page-link {
                background-color: #444;
                color: #fff;
                padding: 0.3rem .75rem;
                border: none;
                border-radius: 0
            }

            .pagination .page-item .page-link span {
                font-size: 16px
            }

            .pagination .page-item.disabled .page-link {
                background-color: #333;
                color: #eee;
                cursor: crosshair
            }

            @media(min-width:768px) and (max-width: 991px) {
                .wrapper {
                    margin: auto
                }

                .navbar-nav:last-child {
                    display: flex;
                    align-items: start;
                    justify-content: center;
                    width: 100%
                }

                .notify {
                    display: inline
                }

                .nav-item .fa-search {
                    padding-left: 10px
                }

                .navbar-nav .nav-item {
                    padding: 0px
                }
            }

            @media(min-width: 300px) and (max-width: 767px) {
                .wrapper {
                    margin: auto
                }

                .navbar-nav:last-child {
                    display: flex;
                    align-items: start;
                    justify-content: center;
                    width: 100%
                }

                .notify {
                    display: inline
                }

                .nav-item .fa-search {
                    padding-left: 10px
                }

                .navbar-nav .nav-item {
                    padding: 0px
                }

                #income {
                    border: none
                }
            }

            @media(max-width: 400px) {
                .wrapper {
                    padding: 10px 15px;
                    margin: auto
                }

                .btn {
                    font-size: 12px;
                    padding: 10px
                }

                .nav.nav-tabs .nav-link {
                    padding: 10px
                }
            }
        </style>
    </head>
    <body>
        <div class="wrapper rounded">
            <nav class="navbar navbar-expand-lg navbar-dark dark d-lg-flex align-items-lg-start"> 
                <a class="navbar-brand" href="#" style="padding-right: 340px">Lịch sử mua hàng </a>
                <a class="btn btn-danger" href="InfomationPage" style="margin-top: 20px;padding-left: 20px;padding-right: 20px">Quay lại</a>
            </nav>
            <form>
                <div class="row mt-2 pt-2">
                    <div class="col-md-6" id="income">
                        <div class="d-flex justify-content-start align-items-center">
                            <p class="text mx-3">Từ ngày</p>
                            <input type="date" name="datefrom" value="${datefrom}">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="d-flex justify-content-md-end align-items-center">
                            <div class="text mx-3">Tới ngày</div>
                            <input type="date" name="dateto" value="${dateto}">
                        </div>
                    </div>
                </div>
                <div class="d-flex text-center mt-3">
                    <button class="btn btn-primary" type="submit" style="text-align: center;margin-left: 330px">Tra cứu</button>
                </div>
            </form>       
            <div class="table-responsive mt-3">
                <table class="table table-dark table-borderless">
                    <thead>
                        <tr>
                            <th scope="col">Mã Account</th>
                            <th scope="col">OrderID</th>
                            <th scope="col">Ngày mua hàng</th>
                            <th scope="col" class="text-right">Giá tiền</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${od}" var="od">
                            <tr>
                                <td scope="row">#${od.product.id}</td>
                                <td>${od.order.id}</td>
                                <td class="text-muted">${od.order.  date}</td>
                                <td class="d-flex justify-content-end align-items-center"> <span class="fa fa-money mr-1"></span>${od.product.price}</td>
                            </tr>                    
                        </c:forEach>       
                    </tbody>
                </table>
            </div>
            <div class="d-flex justify-content-between align-items-center results"> <span class="pl-md-3">Showing<b class="text-white"> maximum 7 order / page </b></span>
                <div class="pt-3">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item"> <a class="page-link" href="${link}&currentPage=${currentPage>1?currentPage-1:currentPage}" aria-label="Previous"> <span aria-hidden="true">&lt;</span> </a> </li>
                            <li class="page-item"> <a class="page-link" href="${link}&currentPage=${currentPage==totalPage?totalPage:currentPage+1}" aria-label="Next"> <span aria-hidden="true">&gt;</span> </a> </li>
                        </ul>
                    </nav>
                   
                </div>
            </div>
        </div>
    </body>
</html>
