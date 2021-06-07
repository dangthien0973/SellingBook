<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>My Account | Bookshop Responsive Bootstrap4 Template</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Favicons -->
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="apple-touch-icon" href="images/icon.png">

	<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
	<link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/plugins.css">
	<link rel="stylesheet" href="style2.css">
	<link rel="stylesheet" href="css/login.css">

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
		<div class="brown--color box-search-content search_active block-bg close__top">
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
        <div class="ht__bradcaump__area bg-image--6">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
		<!-- Start My Account Area -->
		<section class="my_account_area pt--80 pb--55 bg--white">
			<div class="container">
				<div class="row1">
				
					<div class="main-agileits">
							<!--form-stars-here-->
									<div class="form-w3-agile">
										<div class="container padding-bottom-3x mb-2 mt-5">
											<div class="row justify-content-center">
												<div class="col-lg-8 col-md-10">
													<div class="forgot">
														<h2>Forgot your password?</h2>
														<!-- <p>Change your password in three easy steps. This will help you to secure your password!</p> -->
														<ol class="list-unstyled">
															<li><span class="text-primary text-medium">1. </span>Nào! Hãy Nhập email của bạn vào </li>
															<!-- <li><span class="text-primary text-medium">2. </span>Our system will send you a temporary link</li>
															<li><span class="text-primary text-medium">3. </span>Use the link to reset your password</li> -->
														</ol>
													</div>
													<form  action="XuLyQuenMK" class="card mt-4">
														<div class="card-body">
															<div class="form-group"> <label for="email-for-pass">Enter your email address</label> <input class="form-control" type="text" id="email-for-pass"  name ="email" required=""><small class="form-text text-muted">Enter the email address you used during the registration on BBBootstrap.com. Then we'll email a link to this address.</small> </div>
														</div>
														<div class="card-footer"> <button class="btn btn-success" type="submit">Get New Password</button> </div>
													</form>
												</div>
											</div>
										</div>
										
										<div class="social w3layouts">
											<div class="heading">
												
												<div class="clear"></div>
											</div>
											<!-- <div class="icons">
												<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
												<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
												<a href="#"><i class="fa fa-google" aria-hidden="true"></i>
												<a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
												<div class="clear"></div>
											</div> -->
											<div class="clear"></div>
										</div>
									</div>
					</div>
				</div>			
							
			</div>
		</section>
		<!-- End My Account Area -->
		<!-- Footer Area -->
<%--		<jsp:include page="footer.jsp"></jsp:include>--%>
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