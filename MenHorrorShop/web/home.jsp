<%-- 
    Document   : home.jsp
    Created on : Mar 2, 2022, 11:57:20 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <%@include file="headpre.jsp" %>

    </head>
    <body>
        <!-- Start Top Nav -->
        <%@include file="head.jsp" %>
        <!-- Close Top Nav -->

        <!-- Header -->
        <%@include file="header.jsp" %>
        <!-- Close Header -->

        <!-- Modal -->
        <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="w-100 pt-1 mb-5 text-right">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="" method="get" class="modal-content modal-body border-0 p-0">
                    <div class="input-group mb-2">
                        <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                        <button type="submit" class="input-group-text bg-success text-light">
                            <i class="fa fa-fw fa-search text-white"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>



        <!-- Start Banner Hero -->
        <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
            <ol class="carousel-indicators">
                <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
                <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="container">
                        <div class="row p-5">
                            <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                                <img class="img-fluid" src="./assets/img/yasuo.gif" alt="">
                            </div>
                            <div class="col-lg-6 mb-0 d-flex align-items-center">
                                <div class="text-align-left align-self-center">
                                    <h3 class="h2 text-success"><b>League of Legends</b></h3>
                                    <h4 class="h4">Liên Minh Huyền Thoại</h4>
                                    <p>
                                        Liên Minh Huyền thoại đã trở nên rất quen thuộc, thu hút người chơi game ở nhiều độ tuổi khác nhau. Nó được đánh giá không chỉ là môn giải trí mà nó là ông trùm trong tất cả các loại game- một môn thể thao điện tử
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container">
                        <div class="row p-5">
                            <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                                <img class="img-fluid" src="./assets/img/zed.gif" alt="">
                            </div>
                            <div class="col-lg-6 mb-0 d-flex align-items-center">
                                <div class="text-align-left">
                                    <h3 class="h2">Summoner's Rift</h3>
                                    <h4 class="h4">Chiến trường công lý</h4>
                                    <p>
                                        Chiến trường Công Lý (hoặc bản đồ) là một đấu trường, nơi diễn ra những trận chiến khốc liệt giữa các tướng trong Liên Minh Huyền Thoại với nhau để giành lấy chiến thắng
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container">
                        <div class="row p-5">
                            <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                                <img class="img-fluid" src="./assets/img/leesin.gif" alt="">
                            </div>
                            <div class="col-lg-6 mb-0 d-flex align-items-center">
                                <div class="text-align-left">
                                    <h1 class="h2">Teamfight Tactics</h1>
                                    <h3 class="h4">Đấu trường chân lí</h3>
                                    <p>
                                        Đấu Trường Chân Lý (ĐTCL) là một trò chơi chiến thuật theo
                                        vòng đãu, nơi ban së đői đâu với 7 người chơi khác, xây dựng
                                        một đội hình mạnh më nhất để chiến đấu với nhau. Mục tiêu ư?
                                        Hãy là người chơi cuối cùng sống sót.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
                <i class="fas fa-chevron-left"></i>
            </a>
            <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
                <i class="fas fa-chevron-right"></i>
            </a>
        </div>
        <!-- End Banner Hero -->


        <!-- Start Categories of The Month -->
        <section class="container py-5">
            <div class="row text-center pt-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Danh mục game</h1>
                    <p>
                        Shop có hàng nghìn tài khoản từ rẻ đến đắt từ dân cày chay cho đến vip tha hồ cho các bạn lựa chọn
                    </p>
                </div>
            </div>
            <div class="row d-flex justify-content-center">
                <c:forEach items="${c}" var="c">
                    <div class="col-12 col-md-4 p-5 mt-3">
                        <a href="#"><img src="${c.note}" class="rounded-circle img-fluid border"></a>
                        <h5 class="text-center mt-3 mb-3">${c.name}</h5>
                        <c:if test="${c.id == 1}"><p class="text-center">Hiện còn ${countProduct1} tài khoản</p></c:if>
                        <c:if test="${c.id == 2}"><p class="text-center">Hiện còn ${countProduct2} tài khoản</p></c:if>
                        <p class="text-center"><a class="btn btn-success" href="ShopPage">Mua hàng</a></p>
                    </div>                   
                </c:forEach>
            </div>
        </section>
        <!-- End Categories of The Month -->


        <!-- Start Featured Product -->
        <section class="bg-light">
            <div class="container py-5">
                <div class="row text-center py-3">
                    <div class="col-lg-6 m-auto">
                        <h1 class="h1">Legend Never Die</h1>
                    </div>
                </div>
                <div class="row d-flex justify-content-center">
                    <div class="col-12 col-md-4 mb-4 ">
                        <div class="card h-100">                           
                            <video controls autoplay>
                                <source src="imgproduct/y2meta.com - Legends Never Die (ft. Against The Current) _ Worlds 2017 - League of Legends-(1080p).mp4">
                            </video>
                        </div>                       
                    </div>


                </div>
            </div>
        </section>
        <!-- End Featured Product -->


        <!-- Start Footer -->
        <%@include file="footer.jsp" %>
        <!-- End Footer -->

        <!-- Start Script -->
        <script src="assets/js/jquery-1.11.0.min.js"></script>
        <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/templatemo.js"></script>
        <script src="assets/js/custom.js"></script>
        <!-- End Script -->
    </body>
</html>
