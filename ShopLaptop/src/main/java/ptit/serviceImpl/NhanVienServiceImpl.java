package ptit.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptit.ServiceInterface.NhanVienServiceInterface;
import ptit.daoInterface.NhanVienDAOInterface;
import ptit.entity.NhanVien;
@Service
public class NhanVienServiceImpl implements NhanVienServiceInterface{
@Autowired
NhanVienDAOInterface nvDAO;

@Override
	public List<NhanVien> listNV() {
		// TODO Auto-generated method stub
		return nvDAO.listNV();
	}

@Override
	public NhanVien getNV(String maNV) {
		// TODO Auto-generated method stub
		return nvDAO.getNV(maNV);
	}
	
	@Override
		public int updateNV(NhanVien nv) {
			// TODO Auto-generated method stub
			return nvDAO.updateNV(nv);
		}
	
	@Override
		public int insertNV(NhanVien nv) {
			return nvDAO.insertNV(nv);
			
		}
}
