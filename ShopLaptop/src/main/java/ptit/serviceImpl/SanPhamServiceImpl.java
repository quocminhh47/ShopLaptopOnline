package ptit.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import ptit.ServiceInterface.SanPhamServiceInterface;
import ptit.daoImpl.SanPhamDAOImpl;
import ptit.daoInterface.CmtDAOInterface;
import ptit.daoInterface.SanPhamDAOInterface;
import ptit.entity.SanPham;

@Service
public class SanPhamServiceImpl implements SanPhamServiceInterface {
	@Autowired
	SanPhamDAOInterface spDAO;

	@Override
	public List<SanPham> spDisplay() {
		System.out.println(spDAO.spDisplay().size());
		return spDAO.spDisplay();
	}
	
	@Override
	public SanPham detailSP(String maSP) {
		// TODO Auto-generated method stub
		return spDAO.detailSP(maSP);
	} 
	
	@Override
	public List<SanPham> listDELL() {
		// TODO Auto-generated method stub
		return spDAO.listDELL();
	}
	
	@Override
	public List<SanPham> locSpALL() {
		// TODO Auto-generated method stub
		return spDAO.locSpALL();
	}
	@Override
	public List<SanPham> locSpAsus() {
		// TODO Auto-generated method stub
		return spDAO.locSpAsus();
	}
	@Override
	public List<SanPham> locSpMSI() {
		// TODO Auto-generated method stub
		return spDAO.locSpMSI();
	}
	@Override
	public List<SanPham> listACER() {
		// TODO Auto-generated method stub
		return spDAO.listACER();
	}
	
	@Override
	public List<SanPham> list1() {
		// TODO Auto-generated method stub
		return spDAO.list1();
	}
	
	@Override
	public List<SanPham> list2() {
		// TODO Auto-generated method stub
		return spDAO.list2();
	}
	@Override
	public List<SanPham> list3() {
		// TODO Auto-generated method stub
		return spDAO.list3();
	}
	@Override
	public List<SanPham> list4() {
		// TODO Auto-generated method stub
		return spDAO.list4();
	}
	
	@Override
	public int saveSP(SanPham sp) {
		// TODO Auto-generated method stub
		return spDAO.saveSP(sp);
	}
	@Override
	public int updateSP(SanPham sp) {
		// TODO Auto-generated method stub
		return spDAO.updateSP(sp);
	}
	
	@Override
	public int delSP(SanPham sp) {
		// TODO Auto-generated method stub
		return  spDAO.delSP(sp);
	}
	
	@Override
	public List<SanPham> allSP() {
		// TODO Auto-generated method stub
		return spDAO.allSP();
	}
}
