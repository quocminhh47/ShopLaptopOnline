package ptit.entity;

import java.util.Collection;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="KhachHang")
public class KhachHang {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="MAKH")
	private String maKH;
	@Column(name="HOTEN")
	private String hoTen;
	@Column(name="DCHI")
	private String diaChi;
	@Column(name="SODT")
	private String SDT;
	@Column(name="NGSINH")
	private String ngaySinh;
	
	@OneToMany(mappedBy = "khachHang", fetch = FetchType.EAGER)
	private  Set<HoaDon> hoaDon;

	public String getMaKH() {
		return maKH;
	}

	public void setMaKH(String maKH) {
		this.maKH = maKH;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getSDT() {
		return SDT;
	}

	public void setSDT(String sDT) {
		SDT = sDT;
	}

	

	public String getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	

	public Set<HoaDon> getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(Set<HoaDon> hoaDon) {
		this.hoaDon = hoaDon;
	}

	public KhachHang() {
		super();
	}

	@Override
	public String toString() {
		return "KhachHang [maKH=" + maKH + ", hoTen=" + hoTen + ", diaChi=" + diaChi + ", SDT=" + SDT + ", ngaySinh="
				+ ngaySinh + ", hoaDon=" + hoaDon + "]";
	}
	
	
}
