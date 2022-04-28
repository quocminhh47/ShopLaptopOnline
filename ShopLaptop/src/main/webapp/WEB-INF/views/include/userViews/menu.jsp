<%@ page  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@include file="/WEB-INF/views/include/navbar.jsp" %>  --%>
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
		    	<div class="social-media order-lg-last">
		    		<p class="mb-0 d-flex">
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
		    		</p>
	        </div>
		      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
		        <span class="fa fa-bars"></span> Menu
		      </button>
		      <div class="collapse navbar-collapse" id="ftco-nav">
		        <ul class="navbar-nav ml-auto mr-md-3">
		        <c:if test="${pageContext.request.userPrincipal.name != null}">
		            <li class="nav-item"><a href="${pageContext.request.contextPath}/admin/product-manage.htm" class="nav-link">Admin Page</a></li>
		            </c:if>
		        	<li class="nav-item "><a href="${pageContext.request.contextPath}/home/filter-by-all.htm" class="nav-link">ALL PRODUCTS</a></li>
		        	<c:if test="${pageContext.request.userPrincipal.name == null}">
		        	<li class="nav-item"><a href="${pageContext.request.contextPath}/login.htm" class="nav-link">LOGIN</a></li>
		        	</c:if>
		        	 <c:if test="${pageContext.request.userPrincipal.name == null}">
		        	<li class="nav-item"><a href="${pageContext.request.contextPath}/home/user-contact.htm" class="nav-link">CONTACT US</a></li>
		        	</c:if>
		          <li class="nav-item"><a href="#" class="nav-link">ABOUT US</a></li>
		          <c:if test="${pageContext.request.userPrincipal.name != null}">
		            <li class="nav-item"><a href="${pageContext.request.contextPath}/logout.htm" class="nav-link">Logout</a></li>
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

