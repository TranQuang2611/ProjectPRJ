<%-- 
    Document   : header
    Created on : Mar 3, 2022, 8:43:57 PM
    Author     : admin
--%>
<%@page import="model.Account"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%  
    int total = 0;
    if (session != null && session.getAttribute("cart") != null) {
        total = ((ArrayList<Product>) session.getAttribute("cart")).size();
    }
    Account a = null;
    if (session != null && session.getAttribute("logged") != null) {
        a = (Account) session.getAttribute("logged");
    }
    request.setAttribute("a", a);

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav class="navbar navbar-expand-lg navbar-light shadow">
    <div class="container d-flex justify-content-between align-items-center">

        <p class="navbar-brand text-success logo h1 align-self-center">
            MenHorrorShop
        </p>

        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
            <div class="flex-fill">
                <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="HomePage">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.jsp">Giới thiệu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="ShopPage">Shop</a>
                    </li>
                    <li class="nav-item">
                        <h3 class="text-danger">Hello ${a.name}</h3>
                    </li>
                </ul>
            </div>
            <div class="navbar align-self-center d-flex">
                <a class="nav-icon position-relative text-decoration-none" href="CartPage">
                    <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>                   
                    <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"><%=total%></span>
                </a>
                <%if (session.getAttribute("logged") == null) {%>
                <a class="nav-icon position-relative text-decoration-none" href="LoginPage">
                    <i class="fa fa-fw fa-user text-dark mr-3"></i>
                    <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                </a>
                <%}%>
                <%if (session != null && session.getAttribute("logged") != null) {%>
                <a class="nav-icon position-relative text-decoration-none" href="InfomationPage">
                    <i class="fa fa-fw fa-user text-dark mr-3"></i>
                    <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                </a>
                <%}%>
            </div>
        </div>

    </div>
</nav>
