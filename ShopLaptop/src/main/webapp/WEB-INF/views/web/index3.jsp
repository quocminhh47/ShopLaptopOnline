<%@ page  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@include file="/WEB-INF/views/include/userViews/menu.jsp" %> 
<%@taglib uri="http://java.sun.com/jstl/fmt_rt"  prefix="f"%>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %>
<!DOCTYPE html>

<html lang="en">
<head>
	
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Trang chủ</title>

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
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
	<!-- Banner Section Begin -->
 <section class="banner set-bg" data-setbg="<c:url value='/resources/details/img/banner/banner-6.jpg'/>">
   <div class="container">
        <div class="row">
            <div class="col-xl-7 col-lg-8 m-auto">
                <div class="banner__slider owl-carousel">
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>LAPTOP CHẤT LƯỢNG CAO</span>
                            <h1>The MT COMPUTER</h1>
                            <a href="home/index.htm">Shop now</a>
                        </div>
                    </div>
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>LO LẮNG VẬN CHUYỂN?</span>
                            <h1>FREE SHIP</h1>
                            <a href="home/index.htm">Shop now</a>
                        </div>
                    </div>
                    <div class="banner__item">
                        <div class="banner__text">
                            <span>NHÂN VIÊN TẬN TÌNH</span>
                            <h1>HỖ TRỢ 24/24</h1>
                            <a href="home/index.htm">Shop now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section> 
${mess }
<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                
                    <h5>${type } (${dsLaptop.size() })</h5>
                </div>
            </div>
            <div class="col-lg-8 col-md-8">
                <ul class="filter__controls">
           Lọc theo hãng : &nbsp;       <a href="filter-by-all.htm"><li  class="active">ALL</li></a>  &nbsp; &nbsp;
                  <a href="filter-by-dell.htm" ><li>DELL</li  class="active"></a> &nbsp; &nbsp;
                  <a  href="filter-by-asus.htm"> <li>ASUS</li  class="active"></a>  &nbsp; &nbsp;
                  <a href="filter-by-msi.htm"><li >MSI</li  class="active"></a>&nbsp; &nbsp;
                  <a href="filter-by-acer.htm"><li >ACER</li  class="active"></a>  &nbsp; &nbsp;
                </ul>
            </div> </br>
            <div class="col-lg-8 col-md-8" style="text-align:center;">
                <ul class="filter__controls">
           Lọc theo giá : &nbsp;       <a href="filter-by-gia-duoi-10-trieu.htm"><li  class="active">Dưới 10 triệu</li></a>  &nbsp; &nbsp;
                  <a href="filter-by-gia-10-20-trieu.htm" ><li  class="active">10 - 20 triệu</li></a> &nbsp; &nbsp;
                  <a  href="filter-by-gia-20-30-trieu.htm"> <li  class="active">20 - 30 triệu</li></a>  &nbsp; &nbsp;
                  <a href="filter-by-gia-tren-30-trieu.htm"><li  class="active"> Trên 30 triệu</li></a>&nbsp; &nbsp;
                </ul>
            </div>
        </div>
        <div class="row property__gallery">
        <c:forEach var="d" items="${dsLaptop }" varStatus="x">
            <div class="col-lg-3 col-md-4 col-sm-6 mix women " style="rounded;">
            	<span></span>
		        <span></span>
		        <span></span>
		        <span></span>
		        <span></span>
                <div class="product__item">
                <%-- <c:url value='/resources/details/img/product/product-4.jpg'/> --%>
                    <div class="product__item__pic set-bg"  data-setbg="${d.photo }">
                        <div class="label new">${d.status }</div>
                        <ul class="product__hover">
                            <li><a href="${d.photo }" class="image-popup"><span class="arrow_expand"></span></a></li>
                            <li><a href="#"><span class="icon_heart_alt"></span></a></li>
                            <li><a href="detail-item-${d.maSP}.htm"><span class="icon_bag_alt"></span></a></li>
                        </ul>
                    </div>
                    <div class="product__item__text">
                        <h6><a>Mã SP: ${d.maSP }</a></h6>
                        <h5><a  href="detail-item-${d.maSP}.htm">${d.tenSP }</a></h5>
                        <h6><a>Hãng: ${d.hangSX }</a></h6>
                        <h6><a>Tình trạng: ${d.status }</a></h6>
                        <h6><a>Chip: ${d.chip }</a></h6>
                        <h6><a>RAM: ${d.ram }</a></h6>
                        <!-- <div class="rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div> -->
                        <div class="text-center">
                       		<p>Giá rẻ: <span class="product__price"> <f:formatNumber type="currency" value=" ${d.gia*(1-d.discount)	}" /></span>
                        	</br>Giá gốc:  <span class="text-muted text-decoration-line-through"><f:formatNumber type="currency" value=" ${d.gia}" /></span></p>
                         </div>
                         
                          <div class="product__details__button" style="margin-bottom: 0px; margin-left:75px;";>
                         <a href="detail-item-${d.maSP}.htm" class="cart-btn"><span class="icon_bag_alt"></span> Mua</a>
                         </div>
                    </div>
                </div>
            </div>
             </c:forEach>
        </div>
    </div>
</section>
<!-- Product Section End -->




<!-- Discount Section Begin -->
 <section class="discount">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 p-0">
                <div class="discount__pic">
                    <img src="<c:url value='/resources/details/img/discount2.jpg'/>" alt="">
                </div>
            </div>
            <div class="col-lg-6 p-0">
                <div class="discount__text">
                    <div class="discount__text__title">
                        <span>Discount</span>
                        <h2>Spring 2022</h2>
                        <h5><span>Sale</span> 50%</h5>
                    </div>
                    <div class="discount__countdown" id="countdown-time">
                        <div class="countdown__item">
                            <span>22</span>
                            <p>Days</p>
                        </div>
                        <div class="countdown__item">
                            <span>18</span>
                            <p>Hour</p>
                        </div>
                        <div class="countdown__item">
                            <span>46</span>
                            <p>Min</p>
                        </div>
                        <div class="countdown__item">
                            <span>05</span>
                            <p>Sec</p>
                        </div>
                    </div>
                    <a href="#">Shop now</a>
                </div>
            </div>
        </div>
    </div>
</section> 
<!-- Discount Section End -->

<!-- Services Section Begin -->
<section class="services spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-car"></i>
                    <h6>Free Shipping</h6>
                    <p>For all oder over $99</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-money"></i>
                    <h6>Money Back Guarantee</h6>
                    <p>If good have Problems</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-support"></i>
                    <h6>Online Support 24/7</h6>
                    <p>Dedicated support</p>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <div class="services__item">
                    <i class="fa fa-headphones"></i>
                    <h6>Payment Secure</h6>
                    <p>100% secure payment</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Services Section End -->

<!-- Instagram Begin -->

<!-- Footer Section Begin -->
<%@include file="/WEB-INF/views/include/footer.jsp" %>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search End -->

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

</html>