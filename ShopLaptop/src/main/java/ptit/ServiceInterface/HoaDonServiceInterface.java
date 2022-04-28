package ptit.ServiceInterface;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import ptit.entity.HoaDon;

public interface HoaDonServiceInterface {
	int saveHD(HoaDon hd);
	List<HoaDon> getDsHD();
	//chua xu ly status = -1
	void changeStatusChuaXL(int soHD, Principal principal);
	//status huy = 0
	int changeStatusHuy(int soHD,Principal principal);
	//da xu ly sattus=1
	int changeStatusDaXL(int soHD,Principal principal);
	//da tt status=2
	int changeStatusDaTT(int soHD,Principal principal);
	//hd moi
	List<HoaDon> listHDM(); 
	//lít hd da thanh toan
	List<HoaDon> listHdDaTT(); 
	//hd da phe duyet
	List<HoaDon> listHdDaPheDuyet(); 
	//hd da huy
	List<HoaDon> listHdDaHuy(); 
	List<Object[]> thongKeDoanhThu(String dateStart, String dateEnd);
	//tinh tong doanh thu
	List<Object[]> tongKeDoanhThu(String dateStart, String dateEnd);
}
