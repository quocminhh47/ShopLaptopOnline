package ptit.ServiceInterface;

import java.util.List;

import ptit.entity.NhanVien;

public interface NhanVienServiceInterface {
	List<NhanVien> listNV();
	 NhanVien getNV(String maNV);
	 int updateNV(NhanVien nv);
	 int insertNV(NhanVien nv);
}
