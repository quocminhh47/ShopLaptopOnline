<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %>
<form:form action="product-insert.htm" modelAttribute = "dsLaptop" method="get">
								 <div class="card mb-4">
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                        	<th>Mã SP</th>
                                            <th>Tên</th>
                                            <th>Hãng SX</th>
                                            <th>RAM</th>
                                            <th>Chip</th>
                                            <th>Ổ cứng</th>
                                            <th>Trạng thái</th>
                                            <th>Đã ẩn?</th>
                                            <th>Giá</th>
                                            <th>Giảm giá</th>
                                             <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var = "ds" items = "${dsLaptop }">
                                        	<tr>
                                        		<td>${ds.maSP }</td>
                                        	    <td>${ds.tenSP }</td>
                                        	    <td>${ds.hangSX }</td>
                                        	    <td>${ds.ram }</td>
                                        	    <td>${ds.chip }</td>
                                        	    <td>${ds.oCung }</td>
                                        	    <td>${ds.status }</td>
                                        	    <td>${ds.status_del }</td>
                                        	    <td><f:formatNumber type="currency" value="${ds.gia}" /></td>
                                        	    <td><f:formatNumber type="percent" value="${ds.discount}" /></td>
                                        	    <%-- <td> <a href="${ds.photo }">${ds.photo }</a></td> --%>
                                        	    <td><a href = "edit/${ds.maSP}.htm?linkEdit">Edit </a></td>
                                        	</tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <button type="submit" class="btn btn-primary" >Thêm SP</button>
                            </div>
                        </div>
							</form:form>