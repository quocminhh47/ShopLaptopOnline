package ptit.daoInterface;

import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import ptit.entity.Role;

public interface RoleDAOInterface {
	Role getRole(int idRole);
}
