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
			<div class="billing_details">
				<div class="row">
					<div class="col-lg-8">
						<h3>Thông tin khách hàng:</h3>
						<form:form class="row contact_form" modelAttribute="kh"  action="order-${maSP}.htm" method="post">
							<div class="col-md-6 form-group ">
								<form:input type="text" class="form-control"  path="hoTen" placeholder="Full name" required="required"/>
									
							</div>
							<div class="col-md-6 form-group ">
								<form:input type="text" class="form-control"  path="diaChi" placeholder="Address" required="required"/>
								<!-- <span class="placeholder" data-placeholder="Last name"></span> -->
							</div>
							<div class="col-md-6 form-group ">
								<form:input type="text" class="form-control"  path="SDT" placeholder="Phone number" required="required" maxlength="11"/>
								<!-- <span class="placeholder" data-placeholder="Phone number"></span> -->
							</div>
							<div class="col-md-6 form-group ">
								<form:input type="date" class="form-control"  path="ngaySinh" placeholder="Date of birth" required="required" maxlength="10"/>
								<!-- <span class="placeholder" data-placeholder="Email Address"></span> -->
							</div>
							 <div class="product__details__button">
							<button class="cart-btn" type="submit">Đặt hàng</button>
							</div>
						</form:form>
						
					<div class="s_product_img">
						<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active">
									<img src="${sp.photo }" alt="">
								</li>
								<%-- <li data-target="#carouselExampleIndicators" data-slide-to="1">
									<img src="${sp.photo2 }" alt="">
								</li>
								<li data-target="#carouselExampleIndicators" data-slide-to="2">
									<img src="${sp.photo3 }" alt="">
								</li> --%>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img class="d-block w-100" src="${sp.photo }" alt="First slide">
								</div>
								<%-- <div class="carousel-item">
									<img class="d-block w-100" src="${sp.photo }" alt="Second slide">
								</div>
								<div class="carousel-item">
									<img class="d-block w-100" src="${sp.photo }" alt="Third slide">
								</div> --%>
							</div>
						</div>
					</div>
					
					</div>
				<%--  <section class="product-details spad">
			        <div class="col-lg-8">
			            <div class="row">
					      <div class="product__details__pic">
                        <div class="product__details__pic__left product__thumb nice-scroll">
                            <a class="pt active" href="#product-1">
                                <img src="${sp.photo }" alt="">
                            </a>
                            <a class="pt" href="#product-2">
                                <img src="${sp.photo2 }" alt="">
                            </a>
                            <a class="pt" href="#product-3">
                                <img src="${sp.photo3 }" alt="">
                            </a>
                            <a class="pt" href="#product-4">
                                <img src="${sp.photo4 }" alt="">
                            </a>
                        </div>
                        <div class="product__details__slider__content" >
                             <div class="product__details__pic__slider owl-carousel" >
                                <img data-hash="product-1" class="product__big__img" src="${sp.photo }" alt="">
                                <img data-hash="product-2" class="product__big__img" src="${sp.photo2}" alt="">
                                <img data-hash="product-3" class="product__big__img" src="${sp.photo3}" alt="">
                                <img data-hash="product-4" class="product__big__img" src="${sp.photo4}" alt="">
                            </div> 
                        </div>
                    </div>
                    </div>
                    </div>
                    </section> --%>
					<div class="col-lg-4">
						<div class="order_box">
						
							<h2>Your Order</h2>
							<img class="card-img-top mb-5 mb-md-0" src="${sp.photo }" alt="..." style="width:18%;object-fit:cover"/>
							<ul class="list">
							<li>
									<a href="#">Product ID
										<span>${sp.getMaSP() }</span>
									</a>
								</li>
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
								<p>Vui lòng check kỹ thông tin trước khi đặt hàn, bao gồm thông tin sản phẩm, số lượng và thông tin khách hàng. Xin cám ơn!</p>
							</div> 
							<%-- <a class="main_btn" href="order-${maSP}-thong-tin.htm" >Đặt hàng</a> --%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Checkout Area =================-->

	<!--================ Subscription Area ================-->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<%-- <script src="<c:url value='/resources/singleProduct/js/jquery-3.2.1.min.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/js/popper.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/js/bootstrap.min.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/js/stellar.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/vendors/lightbox/simpleLightbox.min.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/vendors/nice-select/js/jquery.nice-select.min.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/vendors/isotope/imagesloaded.pkgd.min.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/vendors/isotope/isotope-min.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/vendors/owl-carousel/owl.carousel.min.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/js/jquery.ajaxchimp.min.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/js/mail-script.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/vendors/jquery-ui/jquery-ui.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/vendors/counter-up/jquery.waypoints.min.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/vendors/counter-up/jquery.counterup.js'/>"></script>
	<script src="<c:url value='/resources/singleProduct/js/theme.js'/>"></script> --%>
</body>

</html>