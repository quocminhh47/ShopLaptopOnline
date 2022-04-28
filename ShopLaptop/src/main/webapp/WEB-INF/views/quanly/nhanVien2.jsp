<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ page  pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
    <%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %>
  	<title>Quản lý nhân viên</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- 	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'> -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
	<!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->
	
	<link rel="stylesheet" href="<c:url value='/resources/doanhThu/css/style.css'/>">
 <%@include file="/WEB-INF/views/include/adminViews/menuAD.jsp" %>
	</head>
<body>

  ${mess }
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Staff manage</h2>
					<p><a href="https://bcrypt-generator.com">Click here to encrypt password!</a></p>
				</div>
				<!-- frm edit -->
				
				 <%@include file="/WEB-INF/views/quanly/editNV.jsp" %>
			</div>

			<form modelAttribute="list">
			
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
						<table class="table table-striped">
						  <thead>
						    <tr>
						      <th><p style="color:black;">Mã NV </p></th>
						      <th><p style="color:black">Họ tên</p></th>
						      <th><p style="color:black">SDT</p></th>
						      <th><p style="color:black">Ngày vào làm</p></th>
						      <th><p style="color:black">ROLE</p></th>
						      <th><p style="color:black">Còn hoạt động?</p></th>
						      <th></th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach var="u" items="${list }">
						    <tr>
						     
						      <td>${u.getMaNV() }</td>
						      <td>${u.getHoTen() }</td>
						      <td>${u.getSdt() }</td>
						      <td>${u.getNgayVL() }</td>
						      <td>${u.role.getNvRole() }</td>
						      <c:if test="${u.getEnabled() == 1 }"><td>Còn</td></c:if>
						      <c:if test="${u.getEnabled() == 0 }"><td>Không</td></c:if>
						      <td><a href="edit-nhan-vien-${u.getMaNV()}.htm" class="btn btn-success">Edit</a></td>
						    </tr>
							</c:forEach> 
						  </tbody>
						</table>
					</div>
				</div>
			</div>
			
			</form>
			<form action="insert-nhan-vien.htm"><button type="button" class="btn btn-success">Success</button></form>
		</div>
	</section>

	<script src="<c:url value='/resources/doanhThu/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/doanhThu/js/popper.js'/>"></script>
  <script src="<c:url value='/resources/doanhThu/js/bootstrap.min.js'/>"></script>
  <script src="<c:url value='/resources/doanhThu/js/main.js'/>"></script>

</body>
</html>