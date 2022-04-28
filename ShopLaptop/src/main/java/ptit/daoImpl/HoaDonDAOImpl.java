package ptit.daoImpl;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureParameter;
import javax.persistence.StoredProcedureQuery;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.type.BigDecimalType;
import org.hibernate.type.DateType;
import org.hibernate.type.IntegerType;
import org.hibernate.type.StringType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import ptit.daoInterface.HoaDonDAOInterface;
import ptit.entity.HoaDon;
import ptit.entity.NhanVien;
@Transactional
@Repository
public class HoaDonDAOImpl implements HoaDonDAOInterface {
	@Autowired
	SessionFactory factory;
	
	@Override
	public int saveHD(HoaDon hd) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		try {
			ss.save(hd);
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
	
	@SuppressWarnings("unchecked")
	@Override
	public List<HoaDon> getDsHD() {
		Session ss = factory.openSession();
		@SuppressWarnings("unused")
		List<HoaDon> listHD = new ArrayList<HoaDon>();
		try {
			return  listHD = ss.createQuery("from HoaDon").list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		finally {
			ss.close();
		}
	}
	@Override
	public void changeStatusChuaXL(int soHD, Principal principal) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		@SuppressWarnings("unused")
		List<HoaDon> listHD = new ArrayList<HoaDon>();
		try {
			String maNV = principal.getName();
			NhanVien nv = (NhanVien) ss.get(NhanVien.class, maNV);
			HoaDon hdc = (HoaDon) ss.get(HoaDon.class, soHD);
			//add nv xu ly hoa don
			hdc.setNhanVien(nv);
			//set lai trang thai don hang.
			hdc.setStatus(-1);
			ss.update(hdc);
			t.commit();
		} catch (Exception e) {
			t.rollback();
			e.printStackTrace();
		}
		finally {
			ss.close();
		}
	}
	
	@Override
	public int changeStatusHuy(int soHD, Principal principal) {
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		@SuppressWarnings("unused")
		List<HoaDon> listHD = new ArrayList<HoaDon>();
		try {
			String maNV = principal.getName();
			NhanVien nv = (NhanVien) ss.get(NhanVien.class, maNV);
			HoaDon hdc = (HoaDon) ss.get(HoaDon.class, soHD);
			//add nv xu ly hoa don
			hdc.setNhanVien(nv);
			//set lai trang thai don hang.
			hdc.setStatus(0);
			ss.update(hdc);
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
	public int changeStatusDaXL(int soHD, Principal principal) {
		// TODO Auto-generated method stub
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		@SuppressWarnings("unused")
		List<HoaDon> listHD = new ArrayList<HoaDon>();
		try {
			String maNV = principal.getName();
			NhanVien nv = (NhanVien) ss.get(NhanVien.class, maNV);
			HoaDon hdc = (HoaDon) ss.get(HoaDon.class, soHD);
			//add nv xu ly hoa don
			hdc.setNhanVien(nv);
			//set lai trang thai don hang.
			hdc.setStatus(1);
			ss.update(hdc);
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
	public int changeStatusDaTT(int soHD, Principal principal) {
		// TODO Auto-generated method stub
		Session ss = factory.openSession();
		Transaction t = ss.beginTransaction();
		@SuppressWarnings("unused")
		List<HoaDon> listHD = new ArrayList<HoaDon>();
		try {
			String maNV = principal.getName();
			NhanVien nv = (NhanVien) ss.get(NhanVien.class, maNV);
			HoaDon hdc = (HoaDon) ss.get(HoaDon.class, soHD);
			//add nv xu ly hoa don
			hdc.setNhanVien(nv);
			//set lai trang thai don hang.
			hdc.setStatus(2);
			ss.update(hdc);
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
	public List<HoaDon> listHDM() {
		Session ss = factory.openSession();
		try {
			return ss.createQuery("from HoaDon h where h.nhanVien is null").list();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			return null;
		}
		finally {
			ss.close();
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<HoaDon> listHdDaTT() {
		Session ss = factory.openSession();
		try {
			return  ss.createQuery("from HoaDon h where h.status=2").list();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			return null;
		}
		finally {
			ss.close();
		}
	}
	
@SuppressWarnings("unchecked")
@Override
	public List<HoaDon> listHdDaPheDuyet() {
	Session ss = factory.openSession();
	try {
		return  ss.createQuery("from HoaDon h where h.status=1").list();
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println(e.getMessage());
		return null;
	}
	finally {
		ss.close();
	}
	}
@SuppressWarnings("unchecked")
@Override
public List<HoaDon> listHdDaHuy() {
	Session ss = factory.openSession();
	try {
		return  ss.createQuery("from HoaDon h where h.status=0").list();
	} catch (Exception e) {
		// TODO: handle exception
		System.out.println(e.getMessage());
		return null;
	}
	finally {
		ss.close();
	}
}
@Override
public List<Object[]> thongKeDoanhThu(String dateStart, String dateEnd) {
	Session ss = factory.openSession();
	try {
		@SuppressWarnings("unchecked")
		List<Object[]> list = ss.createNativeQuery("EXEC dbo.thongKeDoanhThu @DATEBEGIN =:dateStart, @DATEEND =:dateEnd")
								.setParameter("dateStart", dateStart)
								.setParameter("dateEnd", dateEnd)
								.addScalar("SOHD", IntegerType.INSTANCE)
								.addScalar("NGAYDH", DateType.INSTANCE)
								.addScalar("TENKH", StringType.INSTANCE)
								.addScalar("TENSP", StringType.INSTANCE)
								
								.addScalar("GIA", BigDecimalType.INSTANCE)
								.addScalar("SL", IntegerType.INSTANCE)
								.addScalar("TRIGIA", BigDecimalType.INSTANCE)
								.addScalar("HOTENNVDUYET", StringType.INSTANCE)
								.list();
		return list;
								
	} catch (Exception e) {
		e.printStackTrace();
		return null;
		
	}	
	}

	@Override
	public List<Object[]> tongKeDoanhThu(String dateStart, String dateEnd) {
		Session ss = factory.openSession();
		try {
			@SuppressWarnings("unchecked")
			List<Object[]> list = ss.createNativeQuery("EXEC dbo.tongKeDoanhThu  @DATEBEGIN =:dateStart, @DATEEND =:dateEnd")
									.setParameter("dateStart", dateStart)
									.setParameter("dateEnd", dateEnd)
									.addScalar("doanhThu", BigDecimalType.INSTANCE)
									.list();
						return list;			
		} catch (Exception e) {
			return null;
		}
		
	}
}
