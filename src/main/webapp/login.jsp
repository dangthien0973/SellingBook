<%@ page import="java.util.ArrayList" %>

<%--<%@ page import="dao.ProductDao" %>--%>
<%--<%@ page import="model.Product" %>--%>
<%--<%@ page import="model.Img" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	<link rel="stylesheet" href="style1.css">
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
										<h2>Đăng nhập</h2>
										<form action="dangnhap" method="post">
											<div class="form-sub-w3">
											<label>SĐT/EMAIL</label><span>*</span>
												
												<input type="text" name="username" placeholder=" ">
											<div class="icon-w3">
												<i class="fa fa-user" aria-hidden="true"></i>
											</div>
											</div>
											<div class="form-sub-w3">
												<label>Mật khẩu</label> <span>*</span>
												<input type="password" name="pass" placeholder="" required="" />
											<div class="icon-w3">
												<i class="fa fa-lock" aria-hidden="true"></i>
											</div>
											</div>
											<p class="p-bottom-w3ls"><a class="mauchu" href="forgotPassword.jsp"> Quên mật khẩu?</a></p>
											<p class="p-bottom-w3ls1">Bạn chưa có tài khoản?<a class="mauchu" href="register.jsp"> Đăng ký</a></p>
											<div class="clear"></div>
											<p style="color: red;text-align: center;margin: auto;font-size: 19px;margin-top: 10px;">${mess}</p>
											<div class="submit-w3l">
												<input type="submit" value="Đăng nhập"></a>
											</div>
										</form>
										<div class="social w3layouts">
											<div style="margin:auto;text-align: center">
											<fb:login-button  scope="public_profile,email" onlogin="checkLoginState();">

                                                     Đăng nhập bằng Facebook

											</fb:login-button>
											</div>
<%--											<div class="heading">--%>


<%--												<div class="clear">--%>

<%--&lt;%&ndash;													<div id="status"></div>&ndash;%&gt;--%>
<%--												</div>--%>
<%--											</div>--%>


<%--											<div class="clear"></div>--%>
										</div>
									</div>
					</div>
				</div>			
							
			</div>
		</section>
		<!-- End My Account Area -->

<%--		<jsp:include page="footer.jsp"></jsp:include>--%>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
		<script>
			function statusChangeCallback(response) {
				console.log('statusChangeCallback');
				console.log(response);
				if (response.status === 'connected') {
					testAPI();
				} else {
					document.getElementById('status').innerHTML = 'Please log ' +
							'into this app.';
				}
			}

			function checkLoginState() {
				FB.getLoginStatus(function(response) {
					statusChangeCallback(response);
				});
				FB.api('/me',{fields: ' name, email'}, function(response) {
					console.log(response);
					window.location.href = 'Login?action=Face&name='+response.name+'&email='+response.email+'&id='+response.id;
				});
			}

			window.fbAsyncInit = function() {
				FB.init({
					appId      : '482058879720233',
					cookie     : true,
					xfbml      : true,
					version    : 'v10.0'
				});


				FB.getLoginStatus(function(response) {
					statusChangeCallback(response);
				});

			};

			(function(d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0];
				if (d.getElementById(id)) return;
				js = d.createElement(s); js.id = id;
				js.src = "//connect.facebook.net/en_US/sdk.js";
				fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));

			function testAPI() {
				console.log('Welcome!  Fetching your information.... ');
				FB.api('/me', function(response) {
					console.log('Successful login for: ' + response.name);
					document.getElementById('status').innerHTML =
							'Thanks for logging in, ' + response.name + '!';
				});
			}
		</script>
	
</body>
</html>