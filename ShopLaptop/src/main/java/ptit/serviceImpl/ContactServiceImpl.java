package ptit.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptit.ServiceInterface.ContactServiceInterface;
import ptit.daoInterface.ContactDAOInterface;
import ptit.entity.Contact;
@Service
public class ContactServiceImpl implements ContactServiceInterface{
	@Autowired
	ContactDAOInterface contactDAO;
	@Override
	public void saveContactFrm(Contact ctFrm) {
		// TODO Auto-generated method stub
		contactDAO.saveContactFrm(ctFrm);
	}
}
