package ptit.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ptit.ServiceInterface.RoleServiceInterface;
import ptit.daoInterface.RoleDAOInterface;
import ptit.entity.Role;
@Service
public class RoleServiceImpl implements RoleServiceInterface{
	@Autowired
	RoleDAOInterface roleDAO;
	
	@Override
	public Role getRole(int idRole) {
		// TODO Auto-generated method stub
		return roleDAO.getRole(idRole);
	}
}
