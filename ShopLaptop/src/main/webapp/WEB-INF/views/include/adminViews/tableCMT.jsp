<%@ page  pageEncoding="utf-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %> 
<form:form action="product-insert.htm" modelAttribute = "hd" method="get">
								 <div class="card mb-4">
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                        	<th>ID CMT</th>
                                        	<th>Mã SP</th>
                                            <th>Tên SP</th>
                                            <th>Tên người bình luận</th>
                                            <th>Email</th>
                                            <th>Nội dung</th>
                                            <th>Time</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                  
                                    <tbody>
                                        <c:forEach var = "c" items = "${cmtList }">
                                        	<tr>
                                        		<td>${c.idCmt}</td>
                                        	    <td>${c.getSanPham().getMaSP()}</td>
                                        	    <td>${c.getSanPham().getTenSP()}</td>
                                        	    <td>${c.ten}</td>
                                        	    <td>${c.email}</td>
                                        	    <td>${c.nd}</td>
                                        	    <td>${c.cmtTime}</td>
                                        	    <td><a href = "delete-cmt-${c.idCmt}.htm?linkDel">Del </a></td>  
                                        	
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <button type="submit" class="btn btn-primary" >Thêm HĐ</button>
                            </div>
                        </div>
							</form:form>