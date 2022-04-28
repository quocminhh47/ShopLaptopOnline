package ptit.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptit.ServiceInterface.KhServiceInterface;
import ptit.daoInterface.KhDAOInterface;
import ptit.entity.KhachHang;

@Service
public class KhServiceImpl implements KhServiceInterface{
	@Autowired
	KhDAOInterface khDAO;
	
	@Override
	public int saveKH(KhachHang kh) {
		return khDAO.saveKH(kh);
	}
}
