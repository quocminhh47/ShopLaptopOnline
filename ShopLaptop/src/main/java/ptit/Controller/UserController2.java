package ptit.Controller;


import java.math.BigDecimal;
import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMailMessage;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import ptit.ServiceInterface.CmtServiceInterface;
import ptit.ServiceInterface.ContactServiceInterface;
import ptit.ServiceInterface.HoaDonServiceInterface;
import ptit.ServiceInterface.KhServiceInterface;
import ptit.ServiceInterface.SanPhamServiceInterface;
import ptit.daoImpl.SanPhamDAOImpl;
import ptit.entity.BinhLuan;
import ptit.entity.Contact;
import ptit.entity.HoaDon;
import ptit.entity.KhachHang;
import ptit.entity.NhanVien;
import ptit.entity.SanPham;
import ptit.serviceImpl.CmtServiceImpl;
import ptit.serviceImpl.SanPhamServiceImpl;

@Controller
@RequestMapping("/home/")
public class UserController2 {
	@Autowired
	SanPhamServiceInterface spService;
	
	@Autowired
	CmtServiceInterface cmtService;
	
	@Autowired
	KhServiceInterface khService;
	
	@Autowired
	HoaDonServiceInterface hdService;
	
	@Autowired
	ContactServiceInterface contactService;
	
	@Autowired
	JavaMailSender mailer;
	
	HoaDon hdTemp = new HoaDon();
	int quantity;
	
	//@GetMapping(value= { "/", "/index.htm"})
	@RequestMapping(value= { "/", "/index.htm"}, method = RequestMethod.GET)
	public String homeDirect( ModelMap mm) {
		List<SanPham> list= spService.spDisplay();
		System.out.println(list.size());
		mm.addAttribute("dsLaptop", list);
		mm.addAttribute("type", "Hàng mới về");
		return "web/index3";		
	}
	
	@RequestMapping(value="/detail-item-{maSP}", method = RequestMethod.GET)
	public String detail(@PathVariable("maSP") String maSP, ModelMap mm) {
		try {
			//get ds cmt
			mm.addAttribute("cmt", cmtService.getCMT(maSP));
			//tao new cmt
			mm.addAttribute("newCMT", new BinhLuan());
			//get info sp
			SanPham sp = spService.detailSP(maSP);
			mm.addAttribute("sp", sp );
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "web/product-details";
	}
	
	@RequestMapping(value="/detail-item-{maSP}-cmt", method = RequestMethod.POST)
	public String detailItem(@ModelAttribute("newCMT") BinhLuan newCMT, @PathVariable("maSP") String maSP, ModelMap mm) {
			mm.clear();
			int i = cmtService.saveCMT(maSP, newCMT);
			mm.clear();
			if(i == 1) {
				mm.addAttribute("cmtSP", "Comment Sucess!");
			}
			else {
				mm.addAttribute("cmtSP", "Comment Failed!");
			}
			mm.addAttribute("newCMT", new BinhLuan());
			mm.addAttribute("sp", spService.detailSP(maSP));
			mm.addAttribute("cmt", cmtService.getCMT(maSP));
		
		return "web/product-details";
	}
	
	@RequestMapping(value="order-{maSP}" , method = RequestMethod.GET)
	public String orderSP(ModelMap mm, @PathVariable("maSP") String maSP, HttpServletRequest req) {
		try {
			System.out.println(req.getParameter("sl"));
			quantity = Integer.parseInt(req.getParameter("sl"));
			BigDecimal amount = new BigDecimal(quantity);
			SanPham sp = spService.detailSP(maSP);
			mm.addAttribute("sp", spService.detailSP(maSP));
			mm.addAttribute("kh", new KhachHang());
			hdTemp.setSl(quantity);
			hdTemp.setSanPham(sp);
			hdTemp.setTriGia(sp.getGia().multiply(amount));
			System.out.println("hd lần 1: " + hdTemp.toString());
			mm.addAttribute("quantity", quantity);
			mm.addAttribute("triGia", hdTemp.getTriGia());
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return "web/checkout";
	}
	
	@RequestMapping(value="order-{maSP}" , method = RequestMethod.POST)
	public String orderSP(ModelMap mm, @PathVariable("maSP") String maSP, @ModelAttribute("kh") KhachHang kh) {
		try {
			mm.addAttribute("sp", spService.detailSP(maSP));
			int k = khService.saveKH(kh);
			hdTemp.setKhachHang(kh);
			hdTemp.setNgayDH(new Date());
			hdTemp.setStatus(-1);
			int i = hdService.saveHD(hdTemp);
			mm.addAttribute("kh", kh);
			mm.addAttribute("quantity", quantity);
			mm.addAttribute("triGia", hdTemp.getTriGia());
			mm.addAttribute("sp", spService.detailSP(maSP));
			if (i == 1 && k== 1) {
				mm.addAttribute("mess", " Sucess!");
			}
			else {
				mm.addAttribute("mess", " failed!");
			}			
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		return "web/checkout2";
	}
	
	
	
	
	@RequestMapping(value="user-contact", method = RequestMethod.GET)
	public String contact(ModelMap mm) {
		//mm.addAttribute("contactForm", new Contact());
		return "web/contact";
	}
	
	@RequestMapping(value="user-contact", method = RequestMethod.POST)
	public String contact(ModelMap mm, @RequestParam("email") String email, @RequestParam("sdt") String sdt, @RequestParam("nd") String nd) {
		Contact contactForm = new Contact(email, sdt, nd);
		
		//luu vao csdl
		try {
			contactService.saveContactFrm(contactForm);
			
		} catch (Exception e) {
			e.printStackTrace();
		
		}
		//gửi mail:
		try {
			//tao mail
			MimeMessage mail = mailer.createMimeMessage();
			//sd lop tro giup
			MimeMessageHelper helper = new MimeMessageHelper(mail);
			helper.setFrom(contactForm.getEmailSender());
			String from = contactForm.getEmailSender();
			String body = contactForm.getMessages();
			helper.setFrom(from);
			helper.setTo("quocminhh47@gmail.com");
			helper.setReplyTo(from,from);
			helper.setSubject("Customer-Contact");
			helper.setText(body);
			mailer.send(mail);
			mm.addAttribute("mess", "SUCCESS, XIN CÁM ƠN!");
		} catch (Exception e) {
			mm.addAttribute("mess", "FAILED, TRY AGAIN!");
		}
		return "web/contact";
	}
	
	 @SuppressWarnings("unchecked")
	@RequestMapping("filter-by-dell")
	 public String locSpDell(ModelMap mm) {
		try {
			 mm.addAttribute("dsLaptop", spService.listDELL());
		} catch (Exception e) {
			mm.addAttribute("mess", "Lấy ds thất bại");
			e.printStackTrace();
		}
		finally {
			 mm.addAttribute("type", "Laptop DELL");
		}
		
		 return "web/index3";
	 }
	 
		@SuppressWarnings("unchecked")
		@RequestMapping("filter-by-all")
		 public String locSpALL(ModelMap mm) {
			 mm.addAttribute("dsLaptop", spService.locSpALL());
			 mm.addAttribute("type", "ALL Laptop");
			 return "web/index3";
		 }
		
		@SuppressWarnings("unchecked")
		@RequestMapping("filter-by-asus")
		 public String locSpAsus(ModelMap mm) {
			 mm.addAttribute("dsLaptop", spService.locSpAsus());
			 mm.addAttribute("type", "Laptop ASUS");
			 return "web/index3";
		 }
		
		@SuppressWarnings("unchecked")
		@RequestMapping("filter-by-msi")
		 public String locSpMsi(ModelMap mm) {
			 mm.addAttribute("dsLaptop", spService.locSpMSI());
			 mm.addAttribute("type", "Laptop MSI");
			 return "web/index3";
		 }
		
		@SuppressWarnings("unchecked")
		@RequestMapping("filter-by-acer")
		 public String locSpACER(ModelMap mm) {
			 mm.addAttribute("dsLaptop", spService.listACER() );
			 mm.addAttribute("type", "Laptop ACER");
			 return "web/index3";
		 }
		
		@SuppressWarnings("unchecked")
		@RequestMapping("filter-by-gia-duoi-10-trieu.htm")
		public String filter1(ModelMap mm) {
				 mm.addAttribute("dsLaptop", spService.list1() );
				 mm.addAttribute("type", "Laptop dưới 10 triệu");
				 return "web/index3";
		}
		
		@SuppressWarnings("unchecked")
		@RequestMapping("filter-by-gia-10-20-trieu.htm")
		public String filter2(ModelMap mm) {
				 mm.addAttribute("dsLaptop", spService.list2() );
				 mm.addAttribute("type", "Laptop 10-20 triệu");
				 return "web/index3";
		}
		@SuppressWarnings("unchecked")
		@RequestMapping("filter-by-gia-20-30-trieu.htm")
		public String filter3(ModelMap mm) {
				 mm.addAttribute("dsLaptop", spService.list3() );
				 mm.addAttribute("type", "Laptop 20-30 triệu");
				 return "web/index3";
		}
		
		@SuppressWarnings("unchecked")
		@RequestMapping("filter-by-gia-tren-30-trieu.htm")
		public String filter4(ModelMap mm) {
				 mm.addAttribute("dsLaptop", spService.list4());
				 mm.addAttribute("type", "Laptop trên 30 triệu");
				 return "web/index3";
		}
}