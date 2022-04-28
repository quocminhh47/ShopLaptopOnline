package ptit.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="NhanVien")
public class NhanVien {
	@Id
	@Column(name="MANV")
	private String maNV;
	@Column(name="HOTEN")
	private String hoTen;
	@Column(name="SODT")
	private String sdt;
	@Column(name="NGVL")
	private String ngayVL;
	@Column(name="PASS")
	private String pass;
	@Column(name="ENABLED")
	private Integer enabled;
	@OneToMany(mappedBy = "nhanVien", fetch = FetchType.EAGER)
	private Collection<HoaDon> hoaDon;
	
	@ManyToOne
	@JoinColumn(name="ID_ROLE")
	private Role role;
	
	public String getMaNV() {
		return maNV;
	}

	public void setMaNV(String maNV) {
		this.maNV = maNV;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getNgayVL() {
		return ngayVL;
	}

	public void setNgayVL(String ngayVL) {
		this.ngayVL = ngayVL;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public Collection<HoaDon> getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(Collection<HoaDon> hoaDon) {
		this.hoaDon = hoaDon;
	}
	
	
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}
	
	
	
	public Integer getEnabled() {
		return enabled;
	}

	public void setEnabled(Integer enabled) {
		this.enabled = enabled;
	}

	public NhanVien() {
		super();
	}

	
	
	
}
