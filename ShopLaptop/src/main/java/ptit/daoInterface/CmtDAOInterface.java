package ptit.daoInterface;

import java.util.List;

import ptit.entity.BinhLuan;
import ptit.entity.SanPham;

public interface CmtDAOInterface {
	List<BinhLuan> getCMT(String maSP);
	int saveCMT(String maSP, BinhLuan newCMT);
	List<BinhLuan> dsCMT();
	int xoaCMT(Integer idCmt);
}
