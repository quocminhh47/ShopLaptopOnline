<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@ page  pageEncoding="utf-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" /> -->
        <title>Trang Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
         <link href="<c:url value = '/resources/srcAdmin/css/styles.css'/>" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
        <%@include file="/WEB-INF/views/include/adminViews/menuAD.jsp" %>
        <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">
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
     	<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %>
         <div class="container-fluid px-4">
                        <h4 class="mt-4">Nhân viên: ${pageContext.request.userPrincipal.name}</h4>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Admin</a></li>
                            <li class="breadcrumb-item active">Order-manage</li>
                        </ol>
                   		${messHD}			
                   		<div class="row">
            <div class="col-lg-4 col-md-4">
                <div class="section-title">
                    <h4>Quản lý hoá đơn - số lượng: ${hd.size() }</h4>
                </div>
            </div>
            <div class="col-lg-8 col-md-8">
                <ul class="filter__controls">
                    <a href="${pageContext.request.contextPath}/admin/order-manage.htm"><li class="active" >ALL</li></a>&nbsp; &nbsp; 
                    <a href="${pageContext.request.contextPath}/admin/order-manage-da-thanh-toan.htm"><li >Đã thanh toán</li></a>&nbsp; &nbsp; 
                    <a href="${pageContext.request.contextPath}/admin/order-manage-da-phe-duyet.htm"><li href="">Đã phê duyệt</li></a>&nbsp; &nbsp; 
                    <a href="${pageContext.request.contextPath}/admin/order-manage-da-huy.htm"><li href="">Đã huỷ</li></a>&nbsp; &nbsp; 
                   <a  href="${pageContext.request.contextPath}/admin/new-order.htm"><li>Chưa phê duyệt</li></a> &nbsp; &nbsp; 
                </ul>
            </div> 
        </div>				
                      <%@include file="/WEB-INF/views/include/adminViews/tableHD.jsp" %>
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
</html>
