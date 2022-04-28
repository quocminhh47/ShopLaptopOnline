package ptit.daoInterface;

import java.util.List;

import ptit.entity.SanPham;

public interface SanPhamDAOInterface {
	// user controller
	 List<SanPham> spDisplay();
	 List<SanPham> allSP();
	 SanPham detailSP(String maSP);
	 List<SanPham> listDELL();
	 List<SanPham> locSpALL();
	 List<SanPham> locSpAsus();
	 List<SanPham> locSpMSI();
	 List<SanPham> listACER(); 
	 List<SanPham> list1();
	 List<SanPham> list2();
	 List<SanPham> list3();
	 List<SanPham> list4();
	 //admin controller
	 int saveSP(SanPham sp);
	 int updateSP(SanPham sp);
	 int delSP(SanPham sp);
}
