
package ptit.daoImpl;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptit.daoImpl.SanPhamDAOImpl;
import ptit.daoInterface.SanPhamDAOInterface;
import ptit.entity.SanPham;
@Transactional
@Repository
public  class SanPhamDAOImpl implements SanPhamDAOInterface{
	@Autowired
	SessionFactory factory;
	
	@Override
	public List<SanPham> spDisplay() {
			Session ss = factory.openSession();
			try {
				
				@SuppressWarnings({ "unused", "unchecked" })
				List<SanPham> list = ss.createQuery("from SanPham s where s.status_del=:a AND s.status=:b")
				.setParameter("a", false)
				.setParameter("b", "Mới về")
				.list();
				System.out.println("Lấy ds laptop hiển thị thành công");
				//mm.addAttribute("type", "Hàng mới về");
				return list;
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println("lỗi lấy ds sp");
				return null;
			}
			finally {
				//List<SanPham> dsachSP = ss.createQuery("from SanPham").list();
				//mm.addAttribute("dsLaptop", dsachSP);
				ss.close();
			}
	}
	@Override
	public SanPham detailSP(String maSP) {
		Session ss = factory.openSession();
		SanPham sp =  (SanPham) ss.createQuery("from SanPham where maSP=:maSP").setParameter("maSP", maSP).uniqueResult();
		//SanPham s = (SanPham) ss.get(SanPham.class, maSP);
		ss.close();
		return sp ;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<SanPham> listDELL() {
		 Session ss =factory.openSession();
		 List<SanPham> listDELL = new ArrayList<SanPham>();
		 try {
			 listDELL = ss.createQuery("from SanPham s where s.hangSX=:a AND s.status_del=:b ").setParameter("a", "DELL").setParameter("b", false).list();
			 return listDELL;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		 finally {
			ss.close();
		}
		
	}
	
	@Override
	public List<SanPham> locSpALL() {
		 Session ss =factory.openSession();
		 List<SanPham> listAll = new ArrayList<SanPham>();
		 try {
			 listAll = ss.createQuery("from SanPham s where  s.status_del=:b ").setParameter("b", false).list();
			 return listAll;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		 finally {
			ss.close();
		}
	}
	@Override
	public List<SanPham> locSpAsus() {
		 Session ss =factory.openSession();
		 List<SanPham> listAsus = new ArrayList<SanPham>();
		 try {
			 listAsus = ss.createQuery("from SanPham s where s.hangSX=:a AND s.status_del=:b ").setParameter("a", "ASUS").setParameter("b", false).list();
			 return listAsus;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		 finally {
			ss.close();
		}
	}
	
	@Override
	public List<SanPham> locSpMSI() {
		 Session ss =factory.openSession();
		 List<SanPham> listMSI = new ArrayList<SanPham>();
		 try {
			 listMSI = ss.createQuery("from SanPham s where s.hangSX=:a AND s.status_del=:b ").setParameter("a", "MSI").setParameter("b", false).list();
			 return listMSI;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		 finally {
			ss.close();
		}
	}
	@Override
	public List<SanPham> listACER() {
		 Session ss =factory.openSession();
		 List<SanPham> listACER = new ArrayList<SanPham>();
		 try {
			 listACER = ss.createQuery("from SanPham s where s.hangSX=:a AND s.status_del=:b ").setParameter("a", "ACER").setParameter("b", false).list();
			 return listACER;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		 finally {
			ss.close();
		}
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<SanPham> list1() {
		 Session ss =factory.openSession();
		 List<SanPham> list1 = new ArrayList<SanPham>();
		 try {
			 list1 = ss.createQuery("from SanPham s where s.gia*(1-s.discount) < '10000000' AND s.status_del=:b ").setParameter("b", false).list();
			 return list1;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		 finally {
			ss.close();
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<SanPham> list2() {
		 Session ss =factory.openSession();
		 List<SanPham> list1 = new ArrayList<SanPham>();
		 try {
			 list1 = ss.createQuery("from SanPham s where s.gia*(1-s.discount) > '10000000' AND s.gia < '20000000' AND s.status_del=:b ").setParameter("b", false).list();
			 return list1;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		 finally {
			ss.close();
		}
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<SanPham> list3() {
		 Session ss =factory.openSession();
		 List<SanPham> list1 = new ArrayList<SanPham>();
		 try {
			 list1 = ss.createQuery("from SanPham s where s.gia*(1-s.discount) > '20000000' AND s.gia < '30000000' AND s.status_del=:b ").setParameter("b", false).list();
			 return list1;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		 finally {
			ss.close();
		}
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<SanPham> list4() {
		 Session ss =factory.openSession();
		 List<SanPham> list1 = new ArrayList<SanPham>();
		 try {
			 list1 = ss.createQuery("from SanPham s where s.gia*(1-s.discount) > '30000000' AND s.status_del=:b ").setParameter("b", false).list();
			 return list1;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		 finally {
			ss.close();
		}
	}
	@Override
	public int saveSP(SanPham sp) {
		Session ss = factory.openSession();
		Transaction t =ss.beginTransaction();
		try {
			ss.save(sp);
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
	
	@Override
	public int updateSP(SanPham sp) {
		Session ss = factory.openSession();
		Transaction t =ss.beginTransaction();
		try {
			ss.update(sp);
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
	
	@Override
	public int delSP(SanPham sp) {
		// TODO Auto-generated method stub
		Session ss = factory.openSession();
		Transaction t =ss.beginTransaction();
		try {
			sp.setStatus_del(true);
			ss.update(sp);
			t.commit();return 1;
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
	public List<SanPham> allSP() {
		 Session ss =factory.openSession();
		 List<SanPham> listAll = new ArrayList<SanPham>();
		 try {
			 listAll = ss.createQuery("from SanPham ").list();
			 return listAll;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		 finally {
			ss.close();
		}
	}
}
