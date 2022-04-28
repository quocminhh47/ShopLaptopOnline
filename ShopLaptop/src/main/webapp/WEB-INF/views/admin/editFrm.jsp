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
        <title>Edit SP</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
         <link href="<c:url value = '/resources/srcAdmin/css/styles.css'/>" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
       <!--  <script src="js/scripts.js"></script> -->
        <script src="<c:url value = '/resources/srcAdmin/js/scripts.js'/>"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="<c:url value='/resources/srcAdmin/js/datatables-simple-demo.js'/>"></script>
    </head>
    <body >
     <%@include file="/WEB-INF/views/include/adminViews/menuAD.jsp" %>
     <%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %>
       			 <div class="container-fluid px-4">
                       <h1 class="mt-4">Nhân viên: ${pageContext.request.userPrincipal.name}</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Admin</a></li>
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin/product-manage.htm">Product-manage</a></li>
                            <li class="breadcrumb-item active"> Edit Product</li>
                        </ol> 
								<%-- ${messCMT }
						 <%@include file="/WEB-INF/views/include/adminViews/tableCMT.jsp" %> --%>
						  <form:form action="${maSP}.htm?linkEdit" method="post" modelAttribute = "sp" >
							  <div class="form-row" style="display:flex ;" >
							  	<div class="form-group col-md-6" style="width:48%;">
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
							  	 
							   <div class="form-row" style="display:flex ;">
							  	<div class="form-group col-md-6" style="width:48%;">
								    <!-- hangSX 	input -->
								   <label >Hãng SX</label>
								     <form:input type="text"  value="${sp.hangSX }" class="form-control" path="hangSX" required="required" />
								 </div>
								 <div class="form-group col-md-6" style="width:48%;">
								    <!-- ram input -->
								    <label >RAM</label>
								      <form:input type="text" value="${sp.ram }" class="form-control" path="ram" required="required" />
								 </div>
							  </div>
							   <div class="form-row" style="display:flex ;" >
							  	<div class="form-group col-md-6" style="width:48%;">
								    <!-- chip 	input -->
								  <label >Chip</label>
								     <form:input type="text"  value="${sp.chip }" class="form-control" path="chip" required="required" />
								 </div>
								 <div class="form-group col-md-6" style="width:48%;">
								    <!-- ocung input -->
								    <label>Ổ cứng</label>
								      <form:input type="text"  value="${sp.oCung }" class="form-control" path="oCung" required="required"/>
								 </div>
							  </div>
							  
							  <div class="form-row" style="display:flex ;" >
							  	
								 <div class="form-group col-md-6" style="width:48%;">
								    <!-- gia input -->
								    <label >Giá</label>
								      <form:input type="text"  value="${sp.gia }" class="form-control" path="gia" required="required" />
								 </div>
								 <div class="form-group col-md-6" style="width:48%;">
								    <!-- gia input -->
								    <label >Discount</label>
								      <form:input type="text" value="${sp.discount }"   class="form-control" path="discount" required="required" />
								 </div>
							  </div>
							  
							  <div class="form-row" style="display:flex ;" >
								
								 
								 <div class="form-group col-md-6" style="width:48%;">
								    <!-- gia input -->
								    <label >Photo 1</label>
								      <form:input type="text" placeholder="Nhập URL ảnh"  class="form-control" path="photo" required="required" />
								 </div>
								 
								 	<div class="form-group col-md-6" style="width:48%;" >
								      <label>Photo 2</label>
								     <form:input type="text" placeholder="Nhập URL ảnh 2"  class="form-control" path="photo2"  />
								    </div>
								 	<div class="form-group col-md-6" style="width:48%;" >
								      <label>Photo 3</label>
								     <form:input type="text" placeholder="Nhập URL ảnh 3"  class="form-control" path="photo3" />
								    </div>
								 	
								 <div class="form-group col-md-6" style="width:48%;" >
								      <label>Photo 4</label>
								     <form:input type="text" placeholder="Nhập URL ảnh 4"  class="form-control" path="photo4"  />
								 </div>
								 <div class="form-group col-md-6" style="width:48%;">
								    <!-- status 	input -->
								  <label  >Trạng thái: </label></br>
								      &nbsp;<form:radiobutton path="status" value="Mới về" />  Mới về &nbsp;
								  	 <form:radiobutton path="status" value="Còn hàng" /> Còn hàng &nbsp;
								  	 <form:radiobutton path="status" value="Hết hàng" /> Hết hàng
								 </div>
								  <div class="form-group col-md-6" style="width:48%;">
								    <!-- status 	input -->
								  <label  >Trạng thái hiển thị hiện tại:</label> 
								  <c:if test="${sp.status_del == 'False' }"> Hiển thị </br>Edit: &nbsp;
								  	Edit: &nbsp; Xoá <form:radiobutton path="status_del" value="1" /> &nbsp;
								  	Hiển thị <form:radiobutton path="status_del" value="0" checked="true"/> 
								  </c:if>
								  <c:if test="${sp.status_del == 'True' }"> Xoá </br>
								  &nbsp; Xoá <form:radiobutton path="status_del" value="1"  checked="true" /> &nbsp;
								  	Hiển thị <form:radiobutton path="status_del" value="0"/> 
								  	
								  </c:if>
								 </div>
								  
							  </div>
							  <div class="container-fluid px-4">
								 <div class="form-group">
							 	<label for="description">Mô tả</label>
    								<form:textarea class="form-control" path="description" id="description" value="${sp.description}" rows="3"/>
							 </div>
							 </div>
								    <!-- photo input -->
									<br/>
								<button type="submit" class="btn btn-primary">Update SP</button>
							</form:form>
                    </div>
    </body>
    <!-- Footer Section Begin -->
  
<!-- Footer Section End -->
</html>
