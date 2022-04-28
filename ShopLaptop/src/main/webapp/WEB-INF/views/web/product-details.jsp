<%@ page  pageEncoding="utf-8"%>
<!DOCTYPE html>
<%-- <%@include file="/WEB-INF/views/include/userViews/header.jsp" %> --%>
<%@include file="/WEB-INF/views/include/userViews/menu.jsp" %> 
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thông tin sản phẩm</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="<c:url value='/resources/details/css/bootstrap.min.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/resources/details/css/font-awesome.min.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/resources/details/css/elegant-icons.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/resources/details/css/jquery-ui.min.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/resources/details/css/magnific-popup.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/resources/details/css/owl.carousel.min.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/resources/details/css/slicknav.min.css'/>" type="text/css">
    <link rel="stylesheet" href="<c:url value='/resources/details/css/style.css'/>" type="text/css">
</head>

<body>
    <!-- Header Section End -->
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="${pageContext.request.contextPath}/home/index.htm"><i class="fa fa-home"></i> Home</a>
                        <a href="#">Thông tin Laptop </a>
                        <span>${sp.tenSP }</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Breadcrumb End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__left product__thumb nice-scroll">
                            <a class="pt active" >
                                <img src="${sp.photo }" alt="">
                            </a>
                            <a class="pt" >
                                <img src="${sp.photo2 }" alt="">
                            </a>
                            <a class="pt">
                                <img src="${sp.photo3 }" alt="">
                            </a>
                            <a class="pt">
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
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <h3>${sp.tenSP } <span>Mã SP: ${maSP}</span></h3>
                        <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <span>( 138 reviews )</span>
                        </div>
                        <div class="product__details__price"><f:formatNumber type="currency" value="${sp.gia*(1-sp.discount)}" /> <span><f:formatNumber type="currency" value="${sp.gia}" /></span></div>
                        <p>      • Nhấn order để đặt hàng </br>
                        		 • Điến thông tin , số lượng sản phẩm cần đặt</br>
                        		 • Điền thông tin cá nhân</br>
                        		   và sau đó nhân viên sẽ chủ động liên hệ bạn để xác nhận đơn hàng <3.</p>
                        <div class="product__details__button">
                        <form action="order-${maSP}.htm">
                        <ul>
                        		<input name="sl" class="form-control text-center me-3" min="1" max="100" type="number" value="1" style="max-width: 3rem"  required="required"/>
                        		</br>
                        		<button class="cart-btn" type="submit">Order</button>
                                <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                                <li><a href="#"><span class="icon_adjust-horiz"></span></a></li>
                            </ul>
						 	
						 	 
						 </form>
                        </div>
                        
                        <div class="product__details__widget">
                            <ul>
                                <li>
                                    <span>Cấu hình:</span>
                                    <p>${sp.chip }</p>
                                </li>
                                <li>
                                    <span>Thông tin RAM::</span>
                                    <p>${sp.ram }</p>
                                </li>
                                <li>
                                    <span>Ổ cứng</span>
                                    <p>${sp.oCung }</p>
                                </li>
                                <li>
                                    <span>Trạng thái:</span>
                                    <p>${sp.status }</p>
                                </li>
                                <li>
                                    <span>Giao hàng tận nơi</span>
                                    <p>Free shipping</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                ${mess }
               	${cmtSP } 
                <div class="col-lg-12">
               
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">Description</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">Comments</a>
                            </li>
                           <!--  <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">Reviews ( 2 )</a>
                            </li> -->
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <h6>Description</h6>
                                <p>${sp.description }</p>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <h6>Comments</h6>
                                
                                <%@include file="/WEB-INF/views/include/cmtBoxForm.jsp" %>
                                <%-- ${ cmtSP} --%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

  <!-- Js Plugins -->
    <script src="<c:url value='/resources/details/js/jquery-3.3.1.min.js'/>"></script>
    <script src="<c:url value='/resources/details/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/resources/details/js/jquery.magnific-popup.min.js'/>"></script>
    <script src="<c:url value='/resources/details/js/jquery-ui.min.js'/>"></script>
    <script src="<c:url value='/resources/details/js/mixitup.min.js'/>"></script>
    <script src="<c:url value='/resources/details/js/jquery.countdown.min.js'/>"></script>
    <script src="<c:url value='/resources/details/js/jquery.slicknav.js'/>"></script>
    <script src="<c:url value='/resources/details/js/owl.carousel.min.js'/>"></script>
    <script src="<c:url value='/resources/details/js/jquery.nicescroll.min.js'/>"></script>
    <script src="<c:url value='/resources/details/js/main.js'/>"></script> 
</body>
<!-- Footer Section Begin -->
<%@include file="/WEB-INF/views/include/footer.jsp" %>
<!-- Footer Section End -->
</html>