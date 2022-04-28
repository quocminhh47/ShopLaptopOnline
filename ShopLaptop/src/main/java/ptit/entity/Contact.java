package ptit.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Contact")
public class Contact implements Serializable{
	@Id
	@Column(name="EMAIL_SENDER")
	private String emailSender;
	@Id
	@Column(name="SDT")
	private String sdt;
	@Id
	@Column(name="NOIDUNG")
	private String messages;
	public String getEmailSender() {
		return emailSender;
	}
	public void setEmailSender(String emailSender) {
		this.emailSender = emailSender;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getMessages() {
		return messages;
	}
	public void setMessages(String messages) {
		this.messages = messages;
	}
	public Contact() {
		super();
	}
	public Contact(String emailSender, String sdt, String messages) {
		super();
		this.emailSender = emailSender;
		this.sdt = sdt;
		this.messages = messages;
	}
	
	
	
}
