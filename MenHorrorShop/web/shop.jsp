<%-- 
    Document   : shop
    Created on : Mar 3, 2022, 8:37:08 PM
    Author     : admin
--%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shop</title>
        <%@include file="headpre.jsp" %>
    </head>
    <body>
        <%@include file="head.jsp" %>
        <%@include file="header.jsp" %>
        <!-- Modal -->



        
        <!-- Start Content -->
        <div class="container py-5">
            <form action="ShopPage" method="get" id="check">
                <div class="row">
                    <div class="col-lg-3">
                        <h1 class="h2 pb-4">Danh mục và tìm kiếm</h1>
                        <ul class="list-unstyled templatemo-accordion">
                            <li class="pb-3">
                                <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                                    Sắp xếp theo giá
                                    <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                                </a>
                                <ul class="collapse show list-unstyled pl-3">
                                    <li>
                                        <div class="form-check">
                                            <label class="form-check-label" for="flexRadioDefault1">
                                                Tăng dần
                                            </label>
                                            <input class="form-check-input" type="radio" name="sort" value="increase" id="flexRadioDefault1" onclick="document.getElementById('check').submit();" ${sort eq 'increase'?"checked":""}>                                      
                                        </div>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <label class="form-check-label" for="flexRadioDefault1">
                                                Giảm dần
                                            </label>
                                            <input class="form-check-input" type="radio" name="sort" value="decrease" id="flexRadioDefault1" onclick="document.getElementById('check').submit();" ${sort eq 'decrease'?"checked":""}>                                      
                                        </div>
                                    </li>
                                </ul>
                            </li>

                            <li class="pb-3">
                                <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                                    Thể loại
                                    <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                                </a>
                                <ul class="collapse show list-unstyled pl-3">                                   
                                    <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" name="cid" onchange="this.form.submit()">                                      
                                        <option value="0" ${cid==0?"selected":""}>All</option> 
                                        <option value="1" ${cid==1?"selected":""}>Chiến trường công lí</option>
                                        <option value="2" ${cid==2?"selected":""}>Đấu trường chân lí</option>                                     
                                    </select>                                
                                </ul>
                            </li>

                            <li class="pb-3">
                                <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                                    Bộ lọc
                                    <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                                </a>

                                <ul id="collapseThree" class="collapse list-unstyled pl-3">

                                    <br>
                                    <li>
                                        <div class="row">
                                            <p style="color: #ffc720; font-weight: 600 !important">Nhập rank đơn đôi</p>
                                            <input name="rankdd" value="${rankdd}"class="form-control" id="inputEmail4" placeholder="Nhập rank (VD : vàng)">
                                        </div>
                                    </li>
                                    <br>
                                    <li>
                                        <div class="row">
                                            <p style="color: #ede861; font-weight: 600 !important">Nhập rank đấu trường chân lí</p>
                                            <label for="inputEmail4"></label>
                                            <input name="rankdtcl" value="${rankdtcl}"  class="form-control" id="inputEmail4" placeholder="Nhập rank">
                                        </div>
                                    </li>
                                    <br>
                                    <li>
                                        <div class="row">
                                            <p style="color: #bb2d3b; font-weight: 600 !important">Số tướng</p>
                                            <div class="row col-md-6">
                                                <label for="inputEmail4">Từ</label>
                                                <input name="championfrom" value="${championfrom}" class="form-control" id="inputEmail4" placeholder="0">
                                            </div>
                                            <div class="row col-md-6">
                                                <label for="inputEmail4">Đến</label>
                                                <input name="championto" value="${championto}"class="form-control" id="inputEmail4" placeholder="xxx">
                                            </div>
                                        </div>
                                    </li>
                                    <br>
                                    <li>
                                        <div class="row">
                                            <p style="color: violet; font-weight: 600 !important">Số RP</p>
                                            <div class="row col-md-6">
                                                <label for="inputEmail4">Từ</label>
                                                <input name="rpfrom" value="${rpfrom}" class="form-control" id="inputEmail4" placeholder="0">
                                            </div>
                                            <div class="row col-md-6">
                                                <label for="inputEmail4">Đến</label>
                                                <input name="rpto" value="${rpto}" class="form-control" id="inputEmail4" placeholder="xxx">
                                            </div>
                                        </div>
                                    </li>                              
                                    <br>
                                    <li>
                                        <div class="row">
                                            <p style="color: #0c63e4; font-weight: 600 !important">Số trang phục</p>
                                            <div class="row col-md-6">
                                                <label for="inputEmail4">Từ</label>
                                                <input name="skinfrom" value="${skinfrom}" class="form-control" id="inputEmail4" placeholder="0">
                                            </div>
                                            <div class="row col-md-6">
                                                <label for="inputEmail4">Đến</label>
                                                <input name="skinto" value="${skinto}" class="form-control" id="inputEmail4" placeholder="xxx">
                                            </div>
                                        </div>
                                    </li>
                                    <br>
                                    <li>
                                        <div class="row">
                                            <p style="color: #009999; font-weight: 600 !important">Số linh thú</p>
                                            <div class="row col-md-6">
                                                <label for="inputEmail4">Từ</label>
                                                <input name="littlefrom" value="${littlefrom}" class="form-control" id="inputEmail4" placeholder="0">
                                            </div>
                                            <div class="row col-md-6">
                                                <label for="inputEmail4">Đến</label>
                                                <input name="littleto" value="${littleto}" class="form-control" id="inputEmail4" placeholder="xxx">
                                            </div>
                                        </div>
                                    </li> 
                                    <br>
                                    <li>
                                        <div class="row">
                                            <p style="color: #51585e; font-weight: 600 !important">Giá</p>
                                            <div class="row col-md-6">
                                                <label for="inputEmail4">Từ</label>
                                                <input name="pricefrom" value="${pricefrom}" class="form-control" id="inputEmail4" placeholder="Tối thiểu 70k">
                                            </div>
                                            <div class="row col-md-6">
                                                <label for="inputEmail4">Đến</label>
                                                <input name="priceto" value="${priceto}" class="form-control" id="inputEmail4" placeholder="xxxxx">
                                            </div>
                                        </div>
                                    </li>
                                    <br>
                                    <li>
                                        <button type="submit" class="btn btn-secondary btn-lg btn-block">Lọc</button>
                                    </li>
                                </ul>                           
                            </li>
                        </ul>
                    </div>
                                          
                    <div class="col-lg-9">
                        <div class="row">
                            <div class="col-md-6">
                                <ul class="list-inline shop-top-menu pb-3 pt-1">
                                    <li class="list-inline-item">
                                        <a class="h3 text-decoration-none mr-3" href="ShopPage">All</a>
                                    </li>
                                </ul>
                            </div>
                            <h1></h1>
                          
                        </div>
                        <div class="row">
                            <h2 class="text-center text-danger">${mess}</h2>
                            <c:forEach items="${p}" var="p">
                                <div class="col-md-4">
                                    <div class="card mb-4 product-wap rounded-0">
                                        <div class="card rounded-0">
                                            <img class="card-img rounded-0 img-fluid" src="assets/img/darius.gif">
                                            <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                                <ul class="list-unstyled">
                                                    <li><a class="btn btn-success text-white mt-2" href="DetailPage?pid=${p.id}"><i class="far fa-eye"></i></a></li>
                                                            <c:if test="${p.status==1}">
                                                        <li><a class="btn btn-success text-white mt-2" href="CartChange?action=add&pid=${p.id}&current=ShopPage&<%=request.getQueryString()%>"><i class="fas fa-cart-plus"></i></a></li>
                                                            </c:if>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <a href="DetailPage?pid=${p.id}" class="h3 text-decoration text-danger">Mã số : #${p.id} - ${p.status==1?"Còn Hàng":"Hết Hàng"}</a>
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
                    <div div="row">
                        <ul class="pagination pagination-lg justify-content-end">
                            <c:forEach begin="1" end="${totalPage}" var="i">
                                <li class="page-item">
                                    <a class="page-link rounded-0 mr-3 shadow-sm border-top-0 border-left-0 ${i==currentPage? "active":""}" href="${link}&currentPage=${i}" tabindex="-1">${i}</a>
                                </li> 
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </form>

        </div>
        <!-- End Content -->

        <!-- Start Script -->
        <script src="assets/js/jquery-1.11.0.min.js"></script>
        <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/templatemo.js"></script>
        <script src="assets/js/custom.js"></script>
        <!-- End Script -->
        <%@include file="footer.jsp" %>
    </body>
</html>
