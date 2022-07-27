<%-- 
    Document   : detail
    Created on : Mar 3, 2022, 11:16:24 PM
    Author     : admin
--%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account #${pd.product.id}</title>
        <%@include file="headpre.jsp" %>
    </head>
    <body>
        <%@include file="head.jsp" %>
        <%@include file="header.jsp" %>

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



        <!-- Open Content -->
        <section class="bg-light">
            <div class="container pb-5">
                <div class="row">
                    <div class="col-lg-5 mt-5">
                        <div class="card mb-3">
                            <img class="card-img img-fluid" src="${pd.img1}" alt="Card image cap" id="product-detail">
                        </div>
                        <div class="row">
                            <!--Start Controls-->
                            <div class="col-1 align-self-center">
                                <a href="#multi-item-example" role="button" data-bs-slide="prev">
                                    <i class="text-dark fas fa-chevron-left"></i>
                                    <span class="sr-only">Previous</span>
                                </a>
                            </div>
                            <!--End Controls-->
                            <!--Start Carousel Wrapper-->
                            <div id="multi-item-example" class="col-10 carousel slide carousel-multi-item" data-bs-ride="carousel">
                                <!--Start Slides-->                                                      
                                <div class="carousel-inner product-links-wap" role="listbox">

                                    <!--First slide-->
                                    <div class="carousel-item active">
                                        <div class="row">

                                            <div class="col-4">
                                                <a href="#">
                                                    <img class="card-img img-fluid" src="${pd.img1}" >
                                                </a>
                                            </div>


                                            <div class="col-4">
                                                <a href="#">
                                                    <img class="card-img img-fluid" src="${pd.img2}" >
                                                </a>
                                            </div>


                                            <div class="col-4">
                                                <a href="#">
                                                    <img class="card-img img-fluid" src="${pd.img3}">
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                    <!--/.First slide-->

                                    <!--Second slide-->
                                    <div class="carousel-item">
                                        <div class="row">

                                            <div class="col-4">
                                                <a href="#">
                                                    <img class="card-img img-fluid" src="${pd.img4}" >
                                                </a>
                                            </div>


                                            <div class="col-4">
                                                <a href="#">
                                                    <img class="card-img img-fluid" src="${pd.img5}" >
                                                </a>
                                            </div>


                                            <div class="col-4">
                                                <a href="#">
                                                    <img class="card-img img-fluid" src="${pd.img6}" >
                                                </a>
                                            </div>

                                        </div>
                                    </div>
                                    <!--/.Second slide-->

                                    <!--Third slide-->
                                    <div class="carousel-item">
                                        <div class="row">

                                            <div class="col-4">
                                                <a href="#">
                                                    <img class="card-img img-fluid" src="${pd.img7}" >
                                                </a>
                                            </div>


                                            <div class="col-4">
                                                <a href="#">
                                                    <img class="card-img img-fluid" src="${pd.img8}">
                                                </a>
                                            </div> 

                                        </div>
                                    </div>
                                    <!--/.Third slide-->
                                </div>
                                <!--End Slides-->
                            </div>
                            <!--End Carousel Wrapper-->
                            <!--Start Controls-->
                            <div class="col-1 align-self-center">
                                <a href="#multi-item-example" role="button" data-bs-slide="next">
                                    <i class="text-dark fas fa-chevron-right"></i>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                            <!--End Controls-->
                        </div>
                    </div>
                    <!-- col end -->
                    <div class="col-lg-7 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h1 class="h2 text-danger">Mã account : #${pd.product.id}</h1>
                                <p class="h3 py-2"> <fmt:formatNumber type = "number" value = "${pd.product.price}" /> đồng</p>

                                <ul class="list-inline">
                                    <li class="list-inline-item">
                                        <h6>Acc :</h6>
                                    </li>
                                    <li class="list-inline-item">
                                        <p class="text-muted"><strong>Chưa đăng kí thông tin và gmail</strong></p>
                                    </li>
                                </ul>

                                <h6>Thông tin chi tiết</h6>
                                <ul class="list-unstyled pb-3">
                                    <li style="color: yellowgreen">Rank đơn đôi : ${pd.product.rankdd}</li>
                                    <li style="color: #0c63e4">Rank đấu trường chân lí : ${pd.product.rankdtcl}</li>
                                    <li style="color: #a52834">Số tướng : ${pd.product.champion}</li>
                                    <li style="color: orange">Số RP : ${pd.product.rp}</li>
                                    <li style="color: plum">Số trang phục : ${pd.product.skin}</li>
                                    <li style="color: black">Số linh thú : ${pd.product.little}</li>                                  
                                </ul>

                                <form action="" method="GET">                                                                     
                                    <div class="row pb-3">
                                        <div class="col d-grid">
                                            <a class="btn btn-success btn-lg" href="ShopPage">Back to Shop</a>
                                        </div>
                                        <c:if test="${pd.product.status==1}">
                                        <div class="col d-grid">
                                            <a class="btn btn-success btn-lg" href="CartChange?action=add&pid=${pd.product.id}">Add to cart</a>
                                        </div>
                                        </c:if>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Close Content -->

        <!-- Start Article -->
        <section class="py-5">
            <div class="container">
                <div class="row text-left p-2 pb-3">
                    <h4>Account cùng đơn giá</h4>
                </div>

                <!--Start Carousel Wrapper-->
                <div id="carousel-related-product">
                    <c:forEach items="${p}" var="p">
                        <div class="p-2 pb-3">
                            <div class="product-wap card rounded-0">
                                <div class="card rounded-0">
                                    <img class="card-img rounded-0 img-fluid" src="assets/img/darius.gif">
                                    <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                        <ul class="list-unstyled">                                        
                                            <li><a class="btn btn-success text-white mt-2" href="DetailPage?pid=${p.id}"><i class="far fa-eye"></i></a></li>
                                            <c:if test="${p.status==1}">
                                            <li><a class="btn btn-success text-white mt-2" href="CartChange?action=add&pid=${p.id}"><i class="fas fa-cart-plus"></i></a></li>
                                            </c:if>
                                        </ul>
                                    </div>
                                </div>
                                <div class="card-body">
                                   <a href="DetailPage?pid=${p.id}" class="h3 text-decoration text-danger">Mã số : #${p.id} - ${p.status==1?"Còn Hàng":"Hết hàng"}</a>
                                        <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                            <li>Rank đơn đôi : ${p.rankdd}</li>                                         
                                        </ul>
                                        <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                            <li>Rank đấu trường : ${p.rankdtcl}</li>                                       
                                        </ul>
                                        <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                            <li>Số tướng : ${p.champion}</li>                                       
                                        </ul>
                                        <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                            <li>Còn ${p.rp} RP</li>                                       
                                        </ul>
                                        <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                            <li>Trang phục : ${p.skin}</li>                                       
                                        </ul>
                                        <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                            <li>Linh thú : ${p.little}</li>                                       
                                        </ul>
                                        <p class="text-center mb-0"><fmt:formatNumber type = "number" value = "${p.price}"/> đồng</p>
                                </div>
                            </div>
                        </div>  
                    </c:forEach>
                </div>


            </div>
        </section>
        <!-- End Article -->

        <%@include file="footer.jsp" %>

        <!-- Start Script -->
        <script src="assets/js/jquery-1.11.0.min.js"></script>
        <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/templatemo.js"></script>
        <script src="assets/js/custom.js"></script>
        <!-- End Script -->

        <!-- Start Slider Script -->
        <script src="assets/js/slick.min.js"></script>
        <script>
            $('#carousel-related-product').slick({
                infinite: true,
                arrows: false,
                slidesToShow: 4,
                slidesToScroll: 3,
                dots: true,
                responsive: [{
                        breakpoint: 1024,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll: 3
                        }
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 3
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 3
                        }
                    }
                ]
            });
        </script>
        <!-- End Slider Script -->
    </body>
</html>
