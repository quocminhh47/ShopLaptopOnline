package ptit.daoInterface;

import java.util.List;

import ptit.entity.NhanVien;

public interface NhanVienDAOInterface {
 List<NhanVien> listNV();
 NhanVien getNV(String maNV);
 int updateNV(NhanVien nv);
 int insertNV(NhanVien nv);
}
