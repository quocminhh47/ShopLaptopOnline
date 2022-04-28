<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ page  pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
  <head>
   <%@include file="/WEB-INF/views/include/adminViews/menuAD.jsp" %>
  	<title>Thống kê doanh thu</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="<c:url value='/resources/doanhThu/css/style.css'/>">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">Thống kê doanh thu</h2>
				</div>
			</div>
			<form>
			  <div class="row" action="order-manage-thong-ke.htm" method="post">
			    <div class="col">
			      <input type="date" class="form-control" name = "dateStart" placeholder="Date start">
			    </div>
			    <div class="col">
			      <input type="date" class="form-control" name = "dateEnd" placeholder="Date End">
			    </div>
			  </div>
			  <button type="submit" class="btn btn-primary">Check</button>
			</form>
			</br>
			<div class="row">
				<div class="col-md-12">
					<div class="table-wrap">
					<h4>Tổng doanh thu: <td><f:formatNumber type="currency" value=" ${doanhThu.get(0)}" /></td></h4>
						<table class="table table-striped">
						  <thead>
						    <tr>
						      <th><p style="color: black;">Số HD</p></th>
						      <th> <p style="color: black;">Ngày ĐH	 </p> </th>
						      <th><p style="color: black;">Tên KH</p></th>
						      <th><p style="color: black;">Tên SP</p></th>
						      <th><p style="color: black;">Giá  SP</p></th> 
						      <th><p style="color: black;">SL</p></th>
						      <th><p style="color: black;">Trị giá HD</p></th>
						      <th><p style="color: black;">NV duyệt</p></th>
						      <th></th>
						    </tr>
						  </thead>
						  <tbody>
						  <c:forEach var="u" items="${hd}">
						    <tr>
						      
						      <td>${u[0]}</td>
						 	 <td>${u[1]}</td>
						      <td>${u[2]}</td>
						      <td>${u[3]}</td>
						      <td><f:formatNumber type="currency" value="${u[4]}" /></td>
						      <td>${u[5]}</td>
						      <td><f:formatNumber type="currency" value="${u[6]}" /></td>
						      <td>${u[7]}</td>
						      
						      <td><a  class="btn btn-success">Đã thanh toán</a></td>
						    </tr>
							</c:forEach>
						  </tbody>
						</table>
					</div>
				</div>
			</div>
	
		</div>
	</section>

	<script src="<c:url value='/resources/doanhThu/js/jquery.min.js'/>"></script>
  <script src="<c:url value='/resources/doanhThu/js/popper.js'/>"></script>
  <script src="<c:url value='/resources/doanhThu/js/bootstrap.min.js'/>"></script>
  <script src="<c:url value='/resources/doanhThu/js/main.js'/>"></script>

	</body>
</html>

