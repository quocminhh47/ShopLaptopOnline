<%@ page  pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/include/userViews/menu.jsp" %> 
<%-- <%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %> --%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Access denied</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	 <link rel="icon" type="image/png" href="<c:url value='/resources/loginFrm/images/icons/favicon.ico'/>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/loginFrm/vendor/bootstrap/css/bootstrap.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/loginFrm/fonts/font-awesome-4.7.0/css/font-awesome.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/loginFrm/fonts/Linearicons-Free-v1.0.0/icon-font.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/loginFrm/vendor/animate/animate.css'/>">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/loginFrm/vendor/css-hamburgers/hamburgers.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/loginFrm/vendor/select2/select2.min.css'/>">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/loginFrm/vendor/daterangepicker/daterangepicker.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/loginFrm/css/util.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resources/loginFrm/css/main.css'/>">
<!--===============================================================================================-->
</head>
<body>
         <div style="color:red;margin:10px 0px;">
         
                Login Failed!!!<br />
               <%--  Reason :  ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message} --%>
                Account đăng nhập không có quyền, vui lòng đăng nhập quyền Quản lý!
                
         </div>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form class="login100-form validate-form flex-sb flex-w" action="${pageContext.request.contextPath}/j_spring_security_check" method='POST'>
					<span class="login100-form-title p-b-32">
						Account Login
					</span>

					<span class="txt1 p-b-11">
						Username
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
						<input class="input100" type="text" name="maNV" placeholder="Mã nhân viên" required="required" >
						<span class="focus-input100"></span>
					</div>
					
					<span class="txt1 p-b-11">
						Password
					</span>
					<div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
						<span class="btn-show-pass">
							<i class="fa fa-eye"></i>
						</span>
						<input class="input100" type="password" name="pass" placeholder="Password" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m w-full p-b-48">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								<c:if test="${param.error == 'true'}">
								${msg }
				         <div style="color:red;margin:10px 0px;">
				         		
				                Login Failed!!!<br />
				               <h5 style="color:red;">${message}</h5> 
				                Account đăng nhập không hợp lệ!
				                
				         </div>
    </c:if>
							</label>
						</div>

						<div>
							<a href="#" class="txt3">
								Forgot Password?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
 <script src="<c:url value='/resources/loginFrm/vendor/jquery/jquery-3.2.1.min.js'/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/resources/loginFrm/vendor/animsition/js/animsition.min.js'/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/resources/loginFrm/vendor/bootstrap/js/popper.js'/>"></script>
	<script src="<c:url value='/resources/loginFrm/vendor/bootstrap/js/bootstrap.min.js'/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/resources/loginFrm/vendor/select2/select2.min.js'/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/resources/loginFrm/vendor/daterangepicker/moment.min.js'/>"></script>
	<script src="<c:url value='/resources/loginFrm/vendor/daterangepicker/daterangepicker.js'/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/resources/loginFrm/vendor/countdowntime/countdowntime.js'/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/resources/loginFrm/js/main.js'/>"></script>
<!-- Footer Section Begin -->
<%@include file="/WEB-INF/views/include/footer.jsp" %>
<!-- Footer Section End -->
</body>
</html>
