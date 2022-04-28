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
    <body >
     <%@include file="/WEB-INF/views/include/adminViews/menuAD.jsp" %>
     <%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %>
       			 <div class="container-fluid px-4">
                       <h1 class="mt-4">Nhân viên: ${pageContext.request.userPrincipal.name}</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item"><a href="index.html">Admin</a></li>
                            <li class="breadcrumb-item active">Comments manager</li>
                        </ol>
								<br/>
								${messCMT }
								<a>Comments: ${cmtList.size() }</a>
						 <%@include file="/WEB-INF/views/include/adminViews/tableCMT.jsp" %>
						 
                       
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
