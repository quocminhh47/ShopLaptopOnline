<%@ page  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="<c:url value='/resources/menu/css/style.css'/>">

	</head>
	<body>
		<div class="container">
			<nav class="navbar navbar-expand-lg ftco_navbar ftco-navbar-light" id="ftco-navbar" >
		    <div class="container">
		    	<a class="navbar-brand" href="${pageContext.request.contextPath}/home/index.htm">Home</a>
		      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="fa fa-bars"></span> Menu
		      </button>
		      <div class="collapse navbar-collapse" id="ftco-nav">
		        <ul class="navbar-nav ml-auto mr-md-3">
		        <li class="nav-item"><a href="${pageContext.request.contextPath}/admin/staff-info.htm" class="nav-link">ACCOUNT</a></li>
		        	<li class="nav-item "><a href="${pageContext.request.contextPath}/admin/product-manage.htm" class="nav-link">PRODUCT</a></li>
		        	<li class="nav-item"><a href="${pageContext.request.contextPath}/admin/order-manage.htm" class="nav-link">ORDER</a></li>
		        	<li class="nav-item"><a href="${pageContext.request.contextPath}/admin/cmt-manage.htm" class="nav-link">COMMENTS</a></li>
		        	<c:if test="${pageContext.request.userPrincipal.name != null}">
		          <li class="nav-item"><a href="${pageContext.request.contextPath}/quanly/nhan-vien.htm" class="nav-link">STAFF</a></li>
		          <li class="nav-item"><a href="${pageContext.request.contextPath}/quanly/order-manage-thong-ke.htm" class="nav-link">SALE</a></li>
		          <li class="nav-item"><a href="${pageContext.request.contextPath}/logout.htm" class="nav-link">Log Out</a></li>
		          </c:if>
		        </ul>
		      </div>
		    </div>
		  </nav>
    <!-- END nav -->
  </div>


	<script src="<c:url value='/resources/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/js/popper.js'/>"></script>
  <script src="<c:url value='/resources/js/bootstrap.min.js'/>"></script>
  <script src="<c:url value='/resources/js/main.js'/>"></script>

	</body>
</html>

