
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Shopping Cart | Bookshop Responsive Bootstrap4 Template</title>
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
	<div class="wrapper" id="wrapper">
		
		<!-- Header -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- //Header -->
		<!-- Start Search Popup -->
        <<div class="brown--color box-search-content search_active block-bg close__top">
        <form id="search_mini_form" class="minisearch" action="SearchControl?index=2" >
            <div class="field__search">
                <input type="text" name="search" placeholder="Search entire store here...">
                <div class="action">
                    <button type="submit"><i class="zmdi zmdi-search"></i></button>
                </div>
            </div>
        </form>
        <div class="close__wrap">
            <span>close</span>
        </div>
    </div>
		<!-- End Search Popup -->
        <!-- Start Bradcaump area -->
        <div class="ht__bradcaump__area bg-image--3">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
<%--        <!-- cart-main-area start -->--%>
        <c:if test="${sessionScope.cart.list.size()!=0}">
        <div class="cart-main-area section-padding--lg bg--white">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-sm-12 ol-lg-12">
                        <form action="#">               
                            <div class="table-content wnro__table table-responsive">
                                <table>
                                    <thead>
                                        <tr class="title-top">
                                            <th class="product-thumbnail">Hình Ảnh</th>
                                            <th class="product-name">Sản Phẩm</th>
                                            <th class="product-price">Giá</th>
                                            <th class="product-quantity">Số Lượng</th>
                                            <th class="product-subtotal">Tổng Cộng</th>
                                            <th class="product-remove">Xóa</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${order.getList()}" var="d">
                                        <tr>
                                            <td class="product-thumbnail"><a href="#"><img src="${d.product.img}" alt="product img"></a></td>
                                            <td class="product-name"><a href="detail1?pid=${d.product.ID}">${d.product.name}</a></td>
                                            <td class="product-price"><span class="amount">${d.product.price}</span></td>
                                            <td class="product-quantity"><input type="number" value="${d.soLuong}"></td>
                                            <td class="product-subtotal">${d.price}</td>
                                            <td class="product-remove"><a href="xoagiohang?productID=${d.product.ID}">Xóa</a></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </form> 

                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6 offset-lg-6">
                        <div class="cartbox__total__area">
                            <div class="cartbox-total d-flex justify-content-between">
                                <ul class="cart__total__list">
                                    <li>TỔNG</li>
                                    <li>Phi Ship</li>
                                </ul>
                                <ul class="cart__total__tk">
                                    <li>${sessionScope.order.total} vnd</li>
                                    <li>30.000 vnđ</li>
                                </ul>
                            </div>
                            <div class="cart__total__amount">
                                <span>Total</span>
                                <span>${total} vnd </span>
                            </div>
                            <div class="cart__total__amount">
                                <span>Thanh Toán</span>

                            </div>
                        </div>
                    </div>
                </div>
            </div>  
        </div>
       </c:if>
        <!-- cart-main-area end -->
		<!-- Footer Area -->
<%--		 <jsp:include page="footer.jsp"></jsp:include>--%>
		<!-- //Footer Area -->

	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	
</body>
</html>