<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ page  pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
    <%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %>
  	<title>Thống kê doanh thu</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="<c:url value='/resources/doanhThu/css/style.css'/>">
	       <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
         <link href="<c:url value = '/resources/srcAdmin/css/styles.css'/>" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
     <%--    <%@include file="/WEB-INF/views/include/adminViews/menuQuanLy.jsp" %> --%>
         <%@include file="/WEB-INF/views/include/adminViews/menuAD.jsp" %>
        <!-- Google Font -->
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
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Thống kê doanh thu</h2>
					${mess }
				</div>
			</div>
			<form action="order-manage-thong-ke.htm" method="post">
			  <div class="row">
			    <div class="col">
			    <label>Từ ngày:</label>
			      <input type="date" class="form-control"  maxlength="10" name = "dateStart" placeholder="yyyy-mm-dd" required>
			    </div>
			    <div class="col">
			     <label>Đến ngày</label>
			      <input type="date" class="form-control" maxlength="10" name = "dateEnd" placeholder="yyyy-mm-dd" required>
			    </div>
			  </div>
			  </br>
			<button type="submit" class="btn btn-primary">Check</button>
			</form>
			</br>
			
			 <%@include file="/WEB-INF/views/include/adminViews/tableThongKe.jsp" %>
		</div>
	</section>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
       <!--  <script src="js/scripts.js"></script> -->
        <script src="<c:url value = '/resources/srcAdmin/js/scripts.js'/>"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="<c:url value='/resources/srcAdmin/js/datatables-simple-demo.js'/>"></script>
	<script src="<c:url value='/resources/doanhThu/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/doanhThu/js/popper.js'/>"></script>
  <script src="<c:url value='/resources/doanhThu/js/bootstrap.min.js'/>"></script>
  <script src="<c:url value='/resources/doanhThu/js/main.js'/>"></script>
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

