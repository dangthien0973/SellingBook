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
	<link rel="stylesheet" href="style.css">

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
<!-- 		<jsp:include page="header.jsp"></jsp:include> -->

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
				<div class="row2">
				
					<div class="main-agileits">
							<!--form-stars-here-->
									<div class="form-w3-agile">
										<h2>Đăng ký</h2>
											<form action="XuLyDangKy" method="post">
												<h4 style="color: red;margin: auto">${mess}</h4>
												<div class="form-sub-w3">
													<label>Họ tên</label><span>*</span>

													<input type="text" name="name" placeholder=" ">

												</div>
													`
												<div class="form-sub-w3">
													<label>Email</label>
													<input type="text" name="email" placeholder=" " value="" >

												</div>
												<div class="form-sub-w3">
													<label>Tên Đăng Nhập</label>

													<input type="text" name="User" placeholder=" " >

												</div>
												<div class="form-sub-w3">
													<label>Mật khẩu</label> <span>*</span>
													<input type="password" name="Password" placeholder="" required="" />

												</div>
												<div class="form-sub-w3">
													<label>Nhập lại mật khẩu</label> <span>*</span>
													<input type="password" name="repass" placeholder="" required="" />

												</div>

												<div class="form-sub-w3">
													<label>Địa chỉ</label>
													<input type="text" name="address" >

												</div>
												<div class="input-name>">
													<input type="checkbox" class="check">
													<label>Nhận các thông tin và chương trình khuyến mãi của BookStore qua email</label>
												</div>





												<div class="clear"></div>
												<div class="submit-w3l">
													<input type="submit" value="Đăng ký"></a>
												</div>
											</form>
										
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
	<script type="text/javascript">
		function checkEmail() {
			var email = document.getElementById('email');
			var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			if (!filter.test(email.value)) {
				alert('Hay nhap dia chi email hop le.\nExample@gmail.com');
				email.focus;
				return false;
			}
			else{
				alert('OK roi day, Email nay hop le.');
			}
		}
	</script>

	<script>
		window.fbAsyncInit = function() {
			FB.init({
				appId      : '482058879720233',
				cookie     : true,
				xfbml      : true,
				version    : 'v10.0'
			});

			FB.AppEvents.logPageView();

		};

		(function(d, s, id){
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {return;}
			js = d.createElement(s); js.id = id;
			js.src = "https://connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	
</body>
</html>