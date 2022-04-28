package ptit.daoImpl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import ptit.daoInterface.KhDAOInterface;
import ptit.entity.KhachHang;

@Transactional
@Repository
public class KhDAOImpl implements KhDAOInterface{
	@Autowired
	SessionFactory factory;
	
	@Override
	public int saveKH(KhachHang kh) {
		Session ss =factory.openSession();
		Transaction t = ss.beginTransaction();
		try {
			ss.save(kh);
			t.commit();
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
			t.rollback();
			return 0;
		}
		finally {
			ss.close();
		}
	}
}
