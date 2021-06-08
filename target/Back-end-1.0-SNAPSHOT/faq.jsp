<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Faq | Bookshop Responsive Bootstrap4 Template</title>
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
        <div class="ht__bradcaump__area bg-image--4">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">

                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
		<!-- Start Faq Area -->
		<section class="wn__faq__area bg--white pt--80 pb--60">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="wn__accordeion__content">
							<h2>Dưới đây là những câu hỏi thường gặp, bạn có thể tìm thấy câu trả lời cho mình</h2>
							<p></p>
						</div>
						<div id="accordion" class="wn_accordion" role="tablist">
						    <div class="card">
						        <div class="acc-header" role="tab" id="headingOne">
						          	<h5>
						                <a data-toggle="collapse" href="#collapseOne" role="button" aria-expanded="true" aria-controls="collapseOne">Bạn có cung cấp biên lai trùng lặp không?</a>
						          	</h5>
						        </div>
						        <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
					            	<div class="card-body">Biên lai bạn nhận được tại thời điểm mua hàng là bản sao duy nhất của chúng tôi. Nếu sách của bạn đã được chuyển đến cho bạn, thì biên nhận phải được dán vào mặt trước của văn bản được gói lại hoặc được dán vào bên trong bằng Dấu trang của Hiệu sách.</div>
						        </div>
						    </div>
						    <div class="card">
						        <div class="acc-header" role="tab" id="headingTwo">
						          	<h5>
							            <a class="collapsed" data-toggle="collapse" href="#collapseTwo" role="button" aria-expanded="false" aria-controls="collapseTwo">
											Bạn có mua lại sách giáo khoa? </a>
						          	</h5>
						        </div>
						        <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
					          		<div class="card-body">Hiệu sách chúng tôi không cung cấp chương trình mua lại</div>
						        </div>
						    </div>
						    <div class="card">
						        <div class="acc-header" role="tab" id="headingThree">
						          	<h5>
							            <a class="collapsed" data-toggle="collapse" href="#collapseThree" role="button" aria-expanded="false" aria-controls="collapseThree">
											Phí vận chuyển cho mỗi cuốn sách?</a>
						          	</h5>
						        </div>
						        <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
					          		<div class="card-body">Phí vận chuyển là cho mỗi đơn đặt hàng. Việc vận chuyển một hoặc nhiều cuốn sách là như nhau, miễn là chúng được vận chuyển trong cùng một gói. </div>
						        </div>
						    </div>
						    <div class="card">
						        <div class="acc-header" role="tab" id="headingFour">
						          	<h5>
							            <a class="collapsed" data-toggle="collapse" href="#collapseFour" role="button" aria-expanded="false" aria-controls="collapseFour">
											Tôi có thể chuyển đơn hàng của mình trong cùng một kiện hàng với một học sinh khác không? </a>
						          	</h5>
						        </div>
						        <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour" data-parent="#accordion">
					          		<div class="card-body">Việc kết hợp các đơn đặt hàng của bạn được khuyến khích với điều kiện chúng sẽ đến cùng một địa chỉ. Chỉ cần cho chúng tôi biết rằng bạn muốn sử dụng tùy chọn đó khi bạn và bạn bè của bạn gửi đơn đặt hàng của bạn. Bằng cách kết hợp các đơn đặt hàng của bạn, bạn sẽ chỉ bị tính một khoản phí vận chuyển.</div>
						        </div>
						    </div>
						    <div class="card">
						        <div class="acc-header" role="tab" id="headingFive">
						          	<h5>
							            <a class="collapsed" data-toggle="collapse" href="#collapseFive" role="button" aria-expanded="false" aria-controls="collapseFive">
											ISBN là gì?</a>
						          	</h5>
						        </div>
						        <div id="collapseFive" class="collapse" role="tabpanel" aria-labelledby="headingFive" data-parent="#accordion">
					          		<div class="card-body">Mỗi cuốn sách đã xuất bản đều được cung cấp cả ISBN 10 chữ số và 13 chữ số, là mã duy nhất cho ấn bản chính xác của văn bản. ISBN có thể được tìm thấy trên bìa sau của văn bản hoặc bên trong sách trên trang chứa thông tin bản quyền. Đối với những cuốn sách được bọc lại với nội dung bổ sung, ISBN trên màng bọc thu nhỏ sẽ khác với ISBN trên sách giáo khoa.</div>
						        </div>
						    </div>
						    <div class="card">
						        <div class="acc-header" role="tab" id="headingSix">
						          	<h5>
							            <a class="collapsed" data-toggle="collapse" href="#collapseSix" role="button" aria-expanded="false" aria-controls="collapseSix">
											Làm cách nào để trả lại sách để được hoàn lại tiền?</a>
						          	</h5>
						        </div>
						        <div id="collapseSix" class="collapse" role="tabpanel" aria-labelledby="headingSix" data-parent="#accordion">
					          		<div class="card-body">Nếu bạn có thắc mắc về việc hoàn trả sách giáo khoa, vui lòng liên hệ trực tiếp với chúng tôi. Chúng tôi làm việc trong khuôn viên trường từ Thứ Hai đến Thứ Sáu, từ 9:00 sáng đến 4:00 chiều Giờ Việt Nam. Chúng tôi chấp nhận trả lại sách giáo khoa và tài liệu trong vòng bảy ngày kể từ ngày mua, kèm theo biên lai và trong điều kiện có thể bán lại.</div>
						        </div>
						    </div>
						    <div class="card">
						        <div class="acc-header" role="tab" id="headingSeven">
						          	<h5>
							            <a class="collapsed" data-toggle="collapse" href="#collapseSeven" role="button" aria-expanded="false" aria-controls="collapseSeven">
											Bạn có bán sách giáo khoa đã qua sử dụng không?</a>
						          	</h5>
						        </div>
						        <div id="collapseSeven" class="collapse" role="tabpanel" aria-labelledby="headingSeven" data-parent="#accordion">
					          		<div class="card-body">Chúng tôi chỉ bán các bản sao mới của quyển sách.</div>
						        </div>
						    </div>
						    <div class="card">
						        <div class="acc-header" role="tab" id="headingEight">
						          	<h5>
							            <a class="collapsed" data-toggle="collapse" href="#collapseEight" role="button" aria-expanded="false" aria-controls="collapseEight">
											Bạn có vận chuyển quốc tế không? </a>
						          	</h5>
						        </div>
						        <div id="collapseEight" class="collapse" role="tabpanel" aria-labelledby="headingEight" data-parent="#accordion">
					          		<div class="card-body">Không ạ!:((</div>
						        </div>
						    </div>
						</div>
					</div> 
				</div> 
			</div> 
		</section>
		<!-- End Faq Area -->
		<!-- Footer Area -->
		<jsp:include page="footer.jsp"></jsp:include>
		</footer>
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