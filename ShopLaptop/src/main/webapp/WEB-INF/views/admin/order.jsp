<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ page  pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	 <title>Đơn hàng mới đây</title>
     <%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %>
     <meta charset="utf-8" />
     <meta http-equiv="X-UA-Compatible" content="IE=edge" />
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
     <meta name="description" content="" />
     <meta name="author" content="" />
	 <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
     <link href="<c:url value = '/resources/srcAdmin/css/styles.css'/>" rel="stylesheet" />
     <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <%@include file="/WEB-INF/views/include/adminViews/menuAD.jsp" %>
</head>
<body class="sb-nav-fixed">

${error }
</form>
	<main>
             <div class="container-fluid px-4">
             <h1 class="mt-4">Nhân viên: ${pageContext.request.userPrincipal.name}</h1>
             <ol class="breadcrumb mb-4">
             <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/home/index.htm">Admin</a></li>
             <li class="breadcrumb-item "><a href="${pageContext.request.contextPath}/admin/order-manage.htm">Order-manage</a></li>
             <li class="breadcrumb-item active">New order</li>
             </ol>
     		</div>
    </main> 		
       		<div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>Quản lý hoá đơn</h4>
                </div>
            </div>
            <div class="col-lg-8 col-md-8">
                <ul class="filter__controls">
                    <a href=""><li href="href="${pageContext.request.contextPath}/admin/order-manage.htm">ALL</li></a>&nbsp; &nbsp; 
                    <a href=""><li >Đã thanh toán</li></a>&nbsp; &nbsp; 
                    <a href=""><li href="">Đã phê duyệt</li></a>&nbsp; &nbsp; 
                    <a href=""><li href="">Đã huỷ</li></a>&nbsp; &nbsp; 
                    <a href=""><li >Chưa xử lý</li></a>&nbsp; &nbsp; 
                   <a  href="${pageContext.request.contextPath}/admin/new-order.htm"><li class="active" >Chưa phê duyệt</li></a> &nbsp; &nbsp; 
                </ul>
            </div> 
        </div>
    ${mess }
    
	 <%@include file="/WEB-INF/views/include/adminViews/newOrder.jsp" %>
</body>
<!-- Footer Section Begin -->
<%@include file="/WEB-INF/views/include/footer.jsp" %>
<!-- Footer Section End -->
		 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
       <!--  <script src="js/scripts.js"></script> -->
        <script src="<c:url value = '/resources/srcAdmin/js/scripts.js'/>"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="<c:url value='/resources/srcAdmin/js/datatables-simple-demo.js'/>"></script>
</html>