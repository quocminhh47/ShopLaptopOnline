package ptit.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptit.ServiceInterface.CmtServiceInterface;
import ptit.daoInterface.CmtDAOInterface;
import ptit.daoInterface.SanPhamDAOInterface;
import ptit.entity.BinhLuan;
import ptit.entity.SanPham;
@Service
public class CmtServiceImpl implements CmtServiceInterface{
	@Autowired
	CmtDAOInterface cmtDAO;
	
 @Override
public List<BinhLuan> getCMT(String maSP) {
	// TODO Auto-generated method stub
	return cmtDAO.getCMT(maSP);
}
 @Override
public int saveCMT(String maSP, BinhLuan newCMT) {
	return  cmtDAO.saveCMT(maSP, newCMT);
	
}
 
 @Override
public List<BinhLuan> dsCMT() {
	// TODO Auto-generated method stub
	return cmtDAO.dsCMT();
}
 
 @Override
public int xoaCMT(Integer idCmt) {
	// TODO Auto-generated method stub
	return cmtDAO.xoaCMT(idCmt);
}
}
