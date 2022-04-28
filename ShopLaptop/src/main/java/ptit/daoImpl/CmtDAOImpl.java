package ptit.daoImpl;

import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptit.daoInterface.CmtDAOInterface;
import ptit.entity.BinhLuan;
import ptit.entity.SanPham;

@Transactional
@Repository
public class CmtDAOImpl implements CmtDAOInterface {
	@Autowired
	SessionFactory factory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<BinhLuan> getCMT(String maSP) {
		Session ss = factory.openSession();
		try {
			List<BinhLuan>cmt = ss.createQuery("from BinhLuan  where sanPham.maSP=:maSP").setParameter("maSP", maSP).list();
			return cmt;
		} catch (Exception e) {
			return null;
		}
		finally {
			ss.close();
		}
	}
	
	@Override
	public int saveCMT(String maSP, BinhLuan newCMT) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		try {
			newCMT.setSanPham((SanPham) ss.get(SanPham.class, maSP));
			newCMT.setCmtTime(new Date());
			ss.save(newCMT);
			t.commit();
			return 1;
		} catch (Exception e) {
			t.rollback();
			e.printStackTrace();
			return 0;
		}
		finally {
			ss.close();
		}
		
			
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<BinhLuan> dsCMT() {
		Session ss = factory.openSession();
		try {
			return  ss.createQuery("from BinhLuan").list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		finally {
			ss.close();
		}
	}
	@Override
	public int xoaCMT(Integer idCmt) {
		// TODO Auto-generated method stub
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		BinhLuan cmt = (BinhLuan) ss.get(BinhLuan.class, idCmt);
		//xoa cmt
		try {
			ss.delete(cmt);
			t.commit();
			return 1;
		} catch (Exception e) {
			t.rollback();
			e.printStackTrace();
			return 0;
		}
		finally {
			ss.close();
			
		}
	}
}
