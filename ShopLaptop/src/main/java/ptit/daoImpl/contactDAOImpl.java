package ptit.daoImpl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptit.daoInterface.ContactDAOInterface;
import ptit.entity.Contact;
@Transactional
@Repository
public class contactDAOImpl implements ContactDAOInterface{
	@Autowired
	SessionFactory factory;
	
	@Override
	public void saveContactFrm(Contact ctFrm) {
		// TODO Auto-generated method stub
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		try {
			ss.save(ctFrm);
			t.commit();
		} catch (Exception e) {
			e.printStackTrace();
			t.rollback();
		}
		finally {
			ss.close();
		}
	}
}
