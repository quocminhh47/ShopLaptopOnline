<%@ page  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@include file="/WEB-INF/views/include/userViews/menu.jsp" %> 
<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="img/favicon.png" type="image/png">
	<title>Hoá đơn</title>
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="<c:url value='/resources/singleProduct/css/bootstrap.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/singleProduct/vendors/linericon/style.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/singleProduct/css/font-awesome.min.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/singleProduct/vendors/owl-carousel/owl.carousel.min.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/singleProduct/vendors/lightbox/simpleLightbox.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/singleProduct/vendors/nice-select/css/nice-select.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/singleProduct/vendors/animate-css/animate.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/singleProduct/vendors/jquery-ui/jquery-ui.css'/>">
	<!-- main css -->
	 <link rel="stylesheet" href="<c:url value='/resources/details/css/style.css'/>" type="text/css">
	<link rel="stylesheet" href="<c:url value='/resources/singleProduct/css/style.css'/>">
	<link rel="stylesheet" href="<c:url value='/resources/singleProduct/css/responsive.css'/>">
</head>

<body>


	<!--================Checkout Area =================-->
	<section class="checkout_area section_gap">
		<div class="container">
			<div class="order_box">
						
							<h2>Your Order is ${mess }</h2>
							
							<ul class="list">
							<li>
									<a href="#">Customer
										<span>${kh.hoTen }</span>
									</a>
									<a href="#">Tel
										<span>${kh.SDT }</span>
									</a>
									<a href="#">DOB
										<span>${kh.ngaySinh}</span>
									</a>
									<a href="#">Address
										<span>${kh.diaChi }</span>
									</a>
								</li>
								<img class="card-img-top mb-5 mb-md-0" src="${sp.photo }" alt="..." style="width:18%;object-fit:cover"/>
								<li>
									<a href="#">Product name
										<span>${sp.getTenSP() }</span>
									</a>
								</li>
								<li>
									<a href="#">Quantity
										<span>x ${quantity }</span>
									</a>
								</li>
								<li>
									<a href="#">Total
										<span><f:formatNumber type="currency" value="${triGia}" /></span>
									</a>
								</li>
							 <div class="payment_item active">
								<div class="radion_btn">
									<input type="radio" id="f-option6" name="selector">
									<label for="f-option6">Lưu ý: </label>
									<!-- <img src="img/product/single-product/card.jpg" alt=""> -->
									<div class="check"></div>
								</div>
								<p>Khi đặt hàng thành công, nhân viên sẽ chủ động liên hệ bạn ngay, xin giữ liên lạc cho đến lúc đó. Xin cám ơn!</p>
							</div> 
							<%-- <a class="main_btn" href="order-${maSP}-thong-tin.htm" >Đặt hàng</a> --%>
						</div>
		</div>
	</section>
	<!--================End Checkout Area =================-->

	<!--================ Subscription Area ================-->

</body>

</html>