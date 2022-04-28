<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ page  pageEncoding="utf-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Trang Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
         <link href="<c:url value = '/resources/srcAdmin/css/styles.css'/>" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
   <%@include file="/WEB-INF/views/include/adminViews/menuAD.jsp" %>
     <%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %>
        <div id="layoutSidenav">
      
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                         <h1 class="mt-4">Nhân viên: ${pageContext.request.userPrincipal.name}</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Admin</a></li>
                            <li class="breadcrumb-item active">Product-Insert</li>
                        </ol>
                   		${mess }
							<!-- Gutter g-5 -->
							 <form:form action="product-insert.htm" method="post" modelAttribute = "sp"  >
							  <div class="form-row"> 
							  	<div class="col">
								    <!-- Name 	input -->
								    <label >Mã SP nè</label>
								      <form:input type="text" placeholder="Mã sản phẩm" class="form-control" path="maSP" required="required"/>
								 </div>
								 <div class="col">
								    <!-- tên input -->
								    <label >Tên</label>
								      <form:input type="text"  placeholder="Tên sản phẩm" class="form-control"  path="tenSP" required="required" />
								 </div>
							  </div>
							  	 
							   <div class="form-row">
							  	<div class="col">
								    <!-- hangSX 	input -->
								   <label >Hãng SX</label>
								      <form:input type="text"  placeholder="Hãng" class="form-control" path="hangSX" required="required" />
								 </div>
								 <div class="col">
								    <!-- ram input -->
								    <label >RAM</label>
								      <form:input type="text" placeholder="Thông tin RAM" class="form-control" path="ram" required="required" />
								 </div>
							  </div>
							   <div class="form-row">
							  	<div class="col">
								    <!-- chip 	input -->
								  <label >Chip</label>
								      <form:input type="text"  placeholder="Chip" class="form-control" path="chip" required="required" />
								 </div>
								 <div class="col">
								    <!-- ocung input -->
								    <label>Ổ cứng</label>
								      <form:input type="text"  placeholder="Thông tin ổ cứng" class="form-control" path="oCung" required="required"/>
								 </div>
							  </div>
							  
							  <div class="form-row">
							  	<div class="col">
								    <!-- status 	input -->
								  <label  >Trạng thái</label>
								      <form:input type="text"  placeholder="Trạng thái" class="form-control" path="status" required="required" />
								 </div>
								 <div class="col">
								    <!-- gia input -->
								    <label >Giá</label>
								      <form:input type="text"  placeholder="VNĐ" class="form-control" path="gia" required="required" />
								 </div>
							  </div>
								    <!-- photo input -->
								    <label >Ảnh</label>
								      <form:input type="text" placeholder="Nhập URL ảnh"  class="form-control" path="photo" required="required" />
									<br/>
								<button type="submit" class="btn btn-primary">Thêm SP</button>
							</form:form> 
								<br/>

 					<!--  </div> -->
                      <%@include file="/WEB-INF/views/include/adminViews/tableSP.jsp" %>
                    </div>
                </main>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
       <!--  <script src="js/scripts.js"></script> -->
        <script src="<c:url value = '/resources/srcAdmin/js/scripts.js'/>"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="<c:url value='/resources/srcAdmin/js/datatables-simple-demo.js'/>"></script>
    </body>
    <!-- Footer Section Begin -->
<%@include file="/WEB-INF/views/include/footer.jsp" %>
<!-- Footer Section End -->
</html>
