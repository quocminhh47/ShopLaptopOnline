package ptit.entity;

import java.math.BigDecimal;
import java.util.Collection;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.format.annotation.NumberFormat;
import org.springframework.format.annotation.NumberFormat.Style;


@Entity
@Table(name="SanPham")
public class SanPham {
	@Id
	@Column(name="MASP")
	private String maSP;
	@Column(name="TENSP")
	private String tenSP;
	@Column(name="HANGSX")
	private String hangSX;
	
	@Column(name="GIA")
	// @NumberFormat(pattern = "##.###.###")
	private BigDecimal  gia;
	@Column(name="PHOTO")
	private String photo;
	@Column(name="RAM")
	private String ram;
	@Column(name="CHIP")
	private String chip;
	@Column(name="OCUNG")
	private String oCung;
	@Column(name="STATUS")	
	private String status;
	@Column(name="STATUS_DEL")
	private Boolean status_del;
	@Column(name="MOTA")
	private String description;
	@Column(name="PHOTO2")
	private String photo2;
	@Column(name="PHOTO3")
	private String photo3;
	@Column(name="PHOTO4")
	private String photo4;
	@Column(name="DISCOUNT")
	private Float discount;
	@OneToMany(mappedBy = "sanPham", fetch= FetchType.EAGER)
	private Set<BinhLuan> binhLuan;
	
	@OneToMany(mappedBy = "sanPham", fetch = FetchType.EAGER)
	private Set<HoaDon> hoaDon;

	public String getMaSP() {
		return maSP;
	}

	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}

	public String getTenSP() {
		return tenSP;
	}

	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}

	public String getHangSX() {
		return hangSX;
	}

	public void setHangSX(String hangSX) {
		this.hangSX = hangSX;
	}
	
	

	public BigDecimal getGia() {
		return gia;
	}

	public void setGia(BigDecimal gia) {
		this.gia = gia;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getRam() {
		return ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
	}

	public String getChip() {
		return chip;
	}

	public void setChip(String chip) {
		this.chip = chip;
	}

	public String getoCung() {
		return oCung;
	}

	public void setoCung(String oCung) {
		this.oCung = oCung;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Collection<BinhLuan> getBinhLuan() {
		return binhLuan;
	}


	
	

	public Set<HoaDon> getHoaDon() {
		return hoaDon;
	}

	public void setHoaDon(Set<HoaDon> hoaDon) {
		this.hoaDon = hoaDon;
	}

	public void setBinhLuan(Set<BinhLuan> binhLuan) {
		this.binhLuan = binhLuan;
	}

	public Boolean getStatus_del() {
		return status_del;
	}

	public void setStatus_del(Boolean status_del) {
		this.status_del = status_del;
	}
	
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}


	public String getPhoto2() {
		return photo2;
	}

	public void setPhoto2(String photo2) {
		this.photo2 = photo2;
	}

	public String getPhoto3() {
		return photo3;
	}

	public void setPhoto3(String photo3) {
		this.photo3 = photo3;
	}

	public String getPhoto4() {
		return photo4;
	}

	public void setPhoto4(String photo4) {
		this.photo4 = photo4;
	}
	
	public Float getDiscount() {
		return discount;
	}

	public void setDiscount(Float discount) {
		this.discount = discount;
	}

	public SanPham() {
		super();
	}
	
	
}
