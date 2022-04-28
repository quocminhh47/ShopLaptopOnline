package ptit.serviceImpl;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptit.ServiceInterface.HoaDonServiceInterface;
import ptit.daoInterface.HoaDonDAOInterface;
import ptit.entity.HoaDon;

@Service
public class HoaDonServiceImpl implements HoaDonServiceInterface{
	@Autowired
	HoaDonDAOInterface hdDAO;
	
	@Override
	public int saveHD(HoaDon hd) {
		// TODO Auto-generated method stub
		return hdDAO.saveHD(hd);
	}
	@Override
	public List<HoaDon> getDsHD() {
		// TODO Auto-generated method stub
		return hdDAO.getDsHD();
	}
	@Override
	public void changeStatusChuaXL(int soHD, Principal principal) {
		// TODO Auto-generated method stub
		hdDAO.changeStatusChuaXL(soHD, principal);
	
	}
	@Override
	public int changeStatusHuy(int soHD, Principal principal) {
		// TODO Auto-generated method stub
		return hdDAO.changeStatusHuy(soHD, principal);
	}
	
	@Override
	public int changeStatusDaXL(int soHD, Principal principal) {
		// TODO Auto-generated method stub
		return hdDAO.changeStatusDaXL(soHD, principal);
	}
	@Override
	public int changeStatusDaTT(int soHD, Principal principal) {
		// TODO Auto-generated method stub
		return 	hdDAO.changeStatusDaTT(soHD, principal);
	}
	
	@Override
	public List<HoaDon> listHDM() {
		// TODO Auto-generated method stub
		return hdDAO.listHDM();
	}
	@Override
	public List<HoaDon> listHdDaTT() {
		// TODO Auto-generated method stub
		return hdDAO.listHdDaTT();
	}
	
	@Override
	public List<HoaDon> listHdDaPheDuyet() {
		// TODO Auto-generated method stub
		return hdDAO.listHdDaPheDuyet();
	}
	@Override
	public List<HoaDon> listHdDaHuy() {
		// TODO Auto-generated method stub
		return hdDAO.listHdDaHuy();
	}
	
	@Override
	public List<Object[]> thongKeDoanhThu(String dateStart, String dateEnd) {
		// TODO Auto-generated method stub
		return hdDAO.thongKeDoanhThu(dateStart, dateEnd);
	}
	
	@Override
	public List<Object[]> tongKeDoanhThu(String dateStart, String dateEnd) {
		// TODO Auto-generated method stub
		return hdDAO.tongKeDoanhThu(dateStart, dateEnd);
	}
}
