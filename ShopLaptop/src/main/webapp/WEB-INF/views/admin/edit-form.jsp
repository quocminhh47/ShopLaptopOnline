<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
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
      <%--  <%@include file="/WEB-INF/views/include/adminViews/navLayout.jsp" %>  --%>
      
            <div id="layoutSidenav_content">
                <main>
                    <div class="container">
                        <h1 class="mt-4">Nhân viên: ${pageContext.request.userPrincipal.name}</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Admin</a></li>
                            <li class="breadcrumb-item active">Product-Insert</li>
                        </ol>
                   		${mess }
							<!-- Gutter g-5 -->
							 <form:form action="${maSP}.htm?linkEdit" method="post" modelAttribute = "sp" >
							  <div class="form-row" style="display:flex" >
							  	<div class="form-group col-md-6"style="width:48%">
								    <!-- Name 	input -->
								    <label >Mã SP </label> 
								      <form:input id="maSP" type="text" value="${sp.maSP }" class="form-control" path="maSP" readonly="true" />
								 </div>
								 <div class="form-group col-md-6 " style="width:48%;">
								    <!-- tên input -->
								    <label >Tên</label>
								     <form:input id="tenSP" type="text"  value="${sp.tenSP }" class="form-control"  path="tenSP" required="required" />
								 </div>
							  </div>
							  	 
							   <div class="form-row" style="display:flex">
							  	<div class="form-group col-md-6" style="width:48%">
								    <!-- hangSX 	input -->
								   <label >Hãng SX</label>
								     <form:input type="text"  value="${sp.hangSX }" class="form-control" path="hangSX" required="required" />
								 </div>
								 <div class="form-group col-md-6" style="width:48%;margin-left:20px">
								    <!-- ram input -->
								    <label >RAM</label>
								      <form:input type="text" value="${sp.ram }" class="form-control" path="ram" required="required" />
								 </div>
							  </div>
							   <div class="form-row" style="display:flex" >
							  	<div class="form-group col-md-6" style="width:48%">
								    <!-- chip 	input -->
								  <label >Chip</label>
								     <form:input type="text"  value="${sp.chip }" class="form-control" path="chip" required="required" />
								 </div>
								 <div class="form-group col-md-6" style="width:48%;margin-left:20px">
								    <!-- ocung input -->
								    <label>Ổ cứng</label>
								      <form:input type="text"  value="${sp.oCung }" class="form-control" path="oCung" required="required"/>
								 </div>
							  </div>
							  
							  <div class="form-row" style="display:flex" >
							  	<div class="form-group col-md-6" style="width:48%">
								    <!-- status 	input -->
								  <label  >Trạng thái</label>
								      <form:input type="text"  placeholder="Trạng thái" class="form-control" path="status" required="required" />
								 </div>
								 <div class="form-group col-md-6" style="width:48%;margin-left:20px">
								    <!-- gia input -->
								    <label >Giá</label>
								      <form:input type="text"  value="${sp.gia }" class="form-control" path="gia" required="required" />
								 </div>
							  </div>
							  
							  <div class="form-row" style="display:flex" >
							  	<%-- <div class="form-group col-md-6" style="width:48%">
								    <!-- status 	input -->
								  <label  >Trạng thái xoá</label>
								       <c:if test="${sp.status_del == 'False' }">  <form:input type="text"  value="0" class="form-control" path="status_del" required="required" /> </c:if>
								     <c:if test="${sp.status_del == 'True' }">  <form:input type="text"  value="1" class="form-control" path="status_del" required="required" /> </c:if>
								 </div> --%>
								 <div class="form-group col-md-6" style="width:48%">
								    <!-- status 	input -->
								  <label  >Trạng thái hiển thị hiện tại:</label> 
								  <c:if test="${sp.status_del == 'False' }"> Hiển thị </br>Edit: &nbsp;
								  	&nbsp; Xoá <form:radiobutton path="status_del" value="1" /> &nbsp;
								  	Hiển thị <form:radiobutton path="status_del" value="0" checked="true"/> 
										 <%--  <form:radiobuttons class="form-check-input"  path="status_del" />
										  <label class="form-check-label" for="flexRadioDefault1">
										    Xoá
										  </label>
										  <form:radiobuttons class="form-check-input"  path="status_del"  />
										  <label class="form-check-label" for="flexRadioDefault2">
										  Hiển thị
										  </label> --%>
								  </c:if>
								  <c:if test="${sp.status_del == 'True' }"> Xoá </br>
								  &nbsp; Xoá <form:radiobutton path="status_del" value="1"  checked="true" /> &nbsp;
								  	Hiển thị <form:radiobutton path="status_del" value="0"/> 
										 <%--  <form:radiobuttons class="form-check-input"   path="status_del" />
										  <label class="form-check-label" for="flexRadioDefault1">
										    Xoá
										  </label>
										  <form:radiobuttons class="form-check-input"   path="status_del" />
										  <label class="form-check-label" for="flexRadioDefault2">
										  Hiển thị
										  </label> --%>
								  	
								  </c:if>
								  <%-- <div class="form-check form-check-inline">
									  <form:input  type="radio" path="status_del" value="0"/>
									  <label class="form-check-label" for="inlineRadio1">Xoá</label>
									</div>
									<div class="form-check form-check-inline">
									  <form:input  type="radio" path="status_del" value="1"/>
									  <label class="form-check-label" for="inlineRadio2">Hiển thị</label>
									</div> --%>
								       <%-- <c:if test="${sp.status_del == 'False' }">  <form:input type="text"  value="0" class="form-control" path="status_del" required="required" /> </c:if>
								     <c:if test="${sp.status_del == 'True' }">  <form:input type="text"  value="1" class="form-control" path="status_del" required="required" /> </c:if> --%>
								 </div>
								 
								 <div class="form-group col-md-6" style="width:48%;margin-left:20px">
								    <!-- gia input -->
								    <label >Ảnh</label>
								      <form:input type="text" placeholder="Nhập URL ảnh"  class="form-control" path="photo" required="required" />
								 </div>
							  </div>
								    <!-- photo input -->
									<br/>
								<button type="submit" class="btn btn-primary">Update SP</button>
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
