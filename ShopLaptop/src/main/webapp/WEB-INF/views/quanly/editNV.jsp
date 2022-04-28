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
    
     <%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %>
       			 <div class="container-fluid px-4">
                       <h1 class="mt-4">Nhân viên: ${pageContext.request.userPrincipal.name}</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Admin</a></li>
                            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/quanly/nhan-vien.htm">Staff-manage</a></li>
                            <li class="breadcrumb-item active"> Edit Staff Info</li>
                        </ol> 
								<%-- ${messCMT }
						 <%@include file="/WEB-INF/views/include/adminViews/tableCMT.jsp" %> --%>
						  <form:form action="edit-nhan-vien-${maNV}.htm" modelAttribute = "nv" method="post" >
							  <div class="form-row" style="display:flex ;" >
							  	<div class="form-group col-md-6" style="width:48%;">
								    <!-- Name 	input -->
								    <label >Mã NV </label> 
								      <form:input id="maNV" type="text" value="${nv.maNV }" class="form-control" path="maNV" readonly="true" />
								 </div>
								 <div class="form-group col-md-6 " style="width:48%;">
								    <!-- tên input -->
								    <label >Họ Tên</label>
								     <form:input id="ten NV" type="text"  value="${nv.hoTen }" class="form-control"  path="hoTen" required="required" />
								 </div>
							  </div>
							  	 
							   <div class="form-row" style="display:flex ;">
							  	<div class="form-group col-md-6" style="width:48%;">
								    <!-- hangSX 	input -->
								   <label >Ngày vào làm:</label>
								     <form:input type="text"  value="${nv.ngayVL}" class="form-control" path="ngayVL" required="required" />
								 </div>
								 <div class="form-group col-md-6" style="width:48%;">
								    <!-- ram input -->
								    <label >PASS đăng nhập</label>
								      <form:input type="text" value="${nv.pass }" class="form-control" path="pass" required="required" />
								 </div>
							  </div>
							  <div class="form-row" style="display:flex ;">
							  <div class="form-group col-md-6" style="width:48%;">
							  <label >SDT</label>
								      <form:input type="text" value="${nv.sdt }" class="form-control" path="sdt" required="required"/>
								</div>
								 	 <div class="form-group col-md-6" style="width:48%;">
								    <!-- ram input -->
								    <label >ID ROLE</label>
								      <input type="text" value="${nv.role.id }" class="form-control" name="IDrole" readonly="true" />
								 </div>
								  </div>
								  	  	 <div class="form-group col-md-6" style="width:48%;">
								    <!-- status 	input -->
								  <label  >Trạng thái làm việc :</label> 
								  <c:if test="${nv.enabled == 0 }"> Đã nghỉ việc </br> &nbsp;
								  	Edit: &nbsp; Vẫn đang làm  <form:radiobutton path="enabled" value="1" /> &nbsp;
								  		Đã nghỉ việc <form:radiobutton path="enabled" value="0" checked="true"/> 
								  </c:if>
								  <c:if test="${nv.enabled == 1 }"> Vẫn đang làm </br>
								  &nbsp; Vẫn đang làm <form:radiobutton path="enabled" value="1"  checked="true" /> &nbsp;
								  	Đã nghỉ việc<form:radiobutton path="enabled" value="0"/> 
								  	
								  </c:if>
								 </div>
									<br/>
								<button type="submit" class="btn btn-primary">Update Thông tin</button>
							</form:form>
                    </div>
                    	<br/>
                  
    </body>
    <!-- Footer Section Begin -->
  
<!-- Footer Section End -->
</html>
