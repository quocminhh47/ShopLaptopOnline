<%@ page  pageEncoding="utf-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<%@taglib uri = "http://java.sun.com/jstl/fmt_rt" prefix="f"%>
<%@include file="/WEB-INF/views/include/bootstrap-lib.jsp" %> 
<form:form  modelAttribute = "hd" >
								 <div class="card mb-4">
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                        	<th>Số HĐ</th>
                                        	<th>Mã KH</th>
                                        	<th>Tên KH</th>
                                            <th>Ngày đặt</th>
                                            <th>Mã SP</th>
                                            <th>Tên SP</th>
                                            <th>SL</th>
                                            <th>Trị giá</th>
                                            <th>NV xử lý</th>
                                            <th>Trạng thái</th>
                                             <th>Update status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var = "h" items = "${hd }">
                                        	<tr>
                                        		<td>${h.soHD}</td>
                                        	    <td>${h.getKhachHang().getMaKH()}</td>
                                        	    <td>${h.getKhachHang().getHoTen()}</td>
                                        	    <td>${h.ngayDH }</td>
                                        	    <td>${h.getSanPham().getMaSP()}</td>
                                        	    <td>${h.getSanPham().getTenSP()}</td>
                                        	    <td>${h.sl}</td>
                                        	    <td><f:formatNumber type="currency" value="${h.triGia}" /></td>
                                        	    <td>${h.getNhanVien().getHoTen() }</td>
                                        	    <td>
                                        	    	<c:if test="${h.status == -1}"> Chưa phê duyệt </c:if>
                                        	    	<c:if test="${h.status == 0}"> Đã huỷ </c:if>
                                        	    	<c:if test="${h.status == 1}"> Đã phê duyệt </c:if>
                                        	    	<c:if test="${h.status == 2}"> Đã thanh toán </c:if>
                                        	    </td>
                                        	     
                                        	    <td>
                  <%--                       	    	<div class="dropdown show">
  													<a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   												    Thay đổi
  													</a>

												  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
												  <a class="dropdown-item" href="order-manage-change-status-${h.soHD}-chua-xu-ly.htm">Chưa xử lý</a>
												    <a class="dropdown-item" href="order-manage-change-status-${h.soHD}-huy.htm">Huỷ đơn hàng</a>
												    <a class="dropdown-item" href="order-manage-change-status-${h.soHD}-da-xu-ly.htm">Phê duyệt</a>
												    <a class="dropdown-item" href="order-manage-change-status-${h.soHD}-da-thanh-toan.htm">Đã thanh toán</a>
												  </div>
</div> --%>
                                        	    <div class="dropdown">
											  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
											   Thay đổi
											  </button>
											  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
											    <%-- <li><a class="dropdown-item" href="order-manage-change-status-${h.soHD}-chua-xu-ly.htm">Chưa xử lý</a></li> --%>
											    <li><a class="dropdown-item" href="order-manage-change-status-${h.soHD}-huy.htm">Huỷ đơn hàng</a></li>
											    <li><a class="dropdown-item" href="order-manage-change-status-${h.soHD}-da-xu-ly.htm">Phê duyệt</a></li>
											     <li><a class="dropdown-item" href="order-manage-change-status-${h.soHD}-da-thanh-toan.htm">Đã thanh toán</a></li>
											  </ul>
											</div>
                                        	    </td> 
                                        	
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
							</form:form>