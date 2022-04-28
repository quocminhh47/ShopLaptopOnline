package ptit.daoInterface;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import ptit.entity.HoaDon;

public interface HoaDonDAOInterface {
	int saveHD(HoaDon hd);
	List<HoaDon> getDsHD();
	//chua xu ly: status = -1
	void changeStatusChuaXL(int soHD,Principal principal); 
	//huy status = 0
	int changeStatusHuy(int soHD,Principal principal);
	//da xu ly sattus=1
	int changeStatusDaXL(int soHD,Principal principal);
	//da tahnh toan status=2
	int changeStatusDaTT(int soHD,Principal principal);
	//hoa don moi
	List<HoaDon> listHDM(); 
	//hd da thanh toan
	List<HoaDon> listHdDaTT(); 
	//hd da phe duyet
	List<HoaDon> listHdDaPheDuyet(); 
	
	//hd da huy
	List<HoaDon> listHdDaHuy(); 
	//thong ke doanhthu
	List<Object[]> thongKeDoanhThu(String dateStart, String dateEnd);
	//tong doanh thu
	List<Object[]> tongKeDoanhThu(String dateStart, String dateEnd);
	
	
}
