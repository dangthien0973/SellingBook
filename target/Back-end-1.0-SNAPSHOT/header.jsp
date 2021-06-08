<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 1/4/2021
  Time: 11:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home | Bookshop Responsive Bootstrap4 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicons -->
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="images/icon.png">

    <!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/plugins.css">
    <link rel="stylesheet" href="style.css">

    <!-- Cusom css -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer js -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
</head>
<body>
<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Main wrapper -->

    <!-- Header -->
    <header id="wn__header" class="oth-page header__area header__absolute sticky__header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-7 col-lg-2">
                    <div class="logo">
                        <a href="XuLySanPham">
                            <img src="images/logo/logo.png" alt="logo images">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8 d-none d-lg-block">
                    <nav class="mainmenu__nav">
                        <ul class="meninmenu d-flex justify-content-start">
                            <li class="drop with--one--item"><a href="XuLySanPham">Trang chủ</a></li>
<%--                            <li class="drop"><a href="XuLySanPham">Siêu Khuyến Mãi</a>--%>

                            </li>
                            <li class="drop"><a href="XuLySanPham">Danh mục</a>
                                <div class="megamenu mega03">
                                    <ul class="item item03">
                                        <li class="title">Thể Loại</li>
                                        <li><a href="catory?cid=1">Văn Học  </a></li>
                                        <li><a href="catory?cid=2">Thiếu nhi </a></li>
                                        <li><a href="catory?cid=3">Kĩ năng sống </a></li>
                                        <li><a href="catory?cid=4">Lịch sử </a></li>
                                        <li><a href="catory?cid=5">Kinh tế</a></li>
                                    </ul>
                                </div>
                            </li>




                        </ul>
                    </nav>
                </div>

                <div class="col-md-8 col-sm-8 col-5 col-lg-2">
                    <ul class="header__sidebar__right d-flex justify-content-end align-items-center">
                        <li class="shop_search"><a class="search__active" href="SearchControl"></a></li>
                        <li class="shopcart"><a class="cartbox_active" href="cartController"><span class="product_qun">3</span></a>
                            <div class="block-minicart minicart__active">

                            </div>
                            <!-- End Shopping Cart -->
                        </li>
                        <li class="setting__bar__icon"><a class="setting__active" href="#"></a>
                            <div class="searchbar__content setting__block">
                                <div class="content-inner">

                                    <div class="switcher-currency">
                                        <strong class="label switcher-label">
                                            <c:if test="${sessionScope.user!=null}">
                                            <span>Xin Chào Khách hàng ${sessionScope.user.name}</span>
                                            </c:if>
                                        </strong>
                                        <div class="switcher-options">
                                            <div class="switcher-currency-trigger">
                                                <div class="setting__menu">
                                                    <!--<span><a href="#">Compare Product</a></span>-->
                                                    <                                                    <c:if test="${sessionScope.user!=null}">

                                                    <span><a href="cartController">Giỏ Hàng của cậu</a></span>
                                                    </c:if>
                                                    <c:if test="${sessionScope.user==null}">
                                                    <span><a href="login.jsp">Đăng Nhập</a></span>
                                                    <span><a href="register.jsp">Tạo Tài Khoản</a></span>
                                                    <span><a href="forgotPassword.jsp">Quên mật Khẩu ?</a></span>
                                                    </c:if>
                                                    <c:if test="${sessionScope.user!=null}">
                                                    <span><a href="XuLyDangXuat">Đăng Xuất</a></span>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- Start Mobile Menu -->
            <div class="row d-none">
                <div class="col-lg-12 d-none">
                    <nav class="mobilemenu__nav">
                        <ul class="meninmenu">
                            <li><a href="XuLySanPham">Home</a></li>
                            <li><a href="faq.jsp">Pages</a>

                            </li>
                            <li><a href="XuLySanPham">Shop</a>
                                <ul>
                                    <li><a href="XuLySanPham">Shop Grid</a></li>

                                </ul>
                            </li>


                            </li>

                        </ul>
                    </nav>
                </div>
            </div>
            <!-- End Mobile Menu -->
            <div class="mobile-menu d-block d-lg-none">
            </div>
            <!-- Mobile Menu -->
        </div>

    </header>

    </body>
</html>
