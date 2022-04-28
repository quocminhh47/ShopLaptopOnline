package ptit.daoImpl;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptit.daoInterface.RoleDAOInterface;
import ptit.entity.Role;
@Transactional
@Repository
public class RoleDAOImpl implements RoleDAOInterface{
	@Autowired
	SessionFactory factory;
 @Override
public Role getRole(int idRole) {
	 Session ss = factory.openSession();
	// TODO Auto-generated method stub
	return ss.get(Role.class, idRole);
}
}
