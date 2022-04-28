package ptit.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptit.daoInterface.NhanVienDAOInterface;
import ptit.entity.NhanVien;

@Transactional
@Repository
public class NhanVienDAOImpl implements NhanVienDAOInterface {
	@Autowired
	SessionFactory factory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<NhanVien> listNV() {
		Session ss = factory.openSession();
		try {
			List<NhanVien> list = ss.createQuery("from NhanVien nv where nv.role.id=15").list();
			return list;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
			return null;
		}
		
	}
	
@Override
	public NhanVien getNV(String maNV) {
		Session ss = factory.openSession();
		return ss.get(NhanVien.class, maNV);
	}

  @Override
public int updateNV(NhanVien nv) {
	Session ss = factory.openSession();
	Transaction t = ss.beginTransaction();
	try {
		System.out.println(nv.toString());
		ss.update(nv);
		t.commit();
		return 1;
	} catch (Exception e) {
		System.out.println("Thất bại");
		System.out.println(e.getMessage());
		e.printStackTrace();
		t.rollback();
		return 0;
	}
	finally {
		ss.close();
	}
	
}
  
  	@Override
  	public int insertNV(NhanVien nv) {
  		Session ss = factory.openSession();
  		Transaction t = ss.beginTransaction();
  		try {
  			System.out.println(nv.toString());
  			ss.save(nv);
  			t.commit();
  			return 1;
  		} catch (Exception e) {
  			System.out.println("Thất bại");
  			System.out.println(e.getMessage());
  			e.printStackTrace();
  			t.rollback();
  			return 0;
  		}
  		finally {
  			ss.close();
  		}
  		
  	}
}
