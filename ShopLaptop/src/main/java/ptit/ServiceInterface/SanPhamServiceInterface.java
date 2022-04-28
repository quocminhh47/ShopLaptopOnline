package ptit.ServiceInterface;

import java.util.List;

import ptit.entity.SanPham;

public interface SanPhamServiceInterface {
	 List<SanPham> spDisplay();
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
	 List<SanPham> allSP();
}
