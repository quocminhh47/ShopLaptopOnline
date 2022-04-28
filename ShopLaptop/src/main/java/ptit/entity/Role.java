package ptit.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="ROLE")
public class Role {
	@Id
	@GeneratedValue
	@Column(name="ID")
	private Integer id;
	@Column(name="NV_ROLE")
	private String nvRole;
	
	@OneToMany(mappedBy = "role" , fetch = FetchType.EAGER)
	private Collection<NhanVien> nv;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNvRole() {
		return nvRole;
	}
	public void setNvRole(String nvRole) {
		this.nvRole = nvRole;
	}
	
	public Collection<NhanVien> getNv() {
		return nv;
	}
	public void setNv(Collection<NhanVien> nv) {
		this.nv = nv;
	}
	public Role() {
		super();
	}
	
	
}
