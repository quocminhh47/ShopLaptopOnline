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
                                        	     
                                        	
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
							</form:form>