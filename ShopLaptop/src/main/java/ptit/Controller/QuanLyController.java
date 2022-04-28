package ptit.Controller;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import ptit.ServiceInterface.HoaDonServiceInterface;
import ptit.ServiceInterface.NhanVienServiceInterface;
import ptit.ServiceInterface.RoleServiceInterface;
import ptit.entity.NhanVien;
import ptit.entity.Role;

@RequestMapping("/quanly/")
@Controller
public class QuanLyController {
	String thongBao;
	@Autowired
	HoaDonServiceInterface hdService;
	
	@Autowired
	NhanVienServiceInterface nvService;
	
	@Autowired
	RoleServiceInterface roleService;
	
	String date1;
	String date2;
	@RequestMapping("order-manage-thong-ke")
	public String thongKE(ModelMap mm) {
		mm.addAttribute("hd", hdService.listHdDaTT());
		return  "quanly/thongKeDoanhThu";
	}
	
	@RequestMapping(value="order-manage-thong-ke.htm", method =  RequestMethod.POST)
	public String thongKe(HttpServletRequest req,  ModelMap mm) throws ParseException {
			date1 = req.getParameter("dateStart");
			date2 = req.getParameter("dateEnd");
			if(date1 == null && date2 == null) {
				return "redirect: quanly/order-manage-thong-ke";
			}
			else {
				 List<Object[]> list = hdService.thongKeDoanhThu(date1, date2);
				 mm.addAttribute("hd", list);
				 List<Object[]>doanhThu = hdService.tongKeDoanhThu(date1, date2);
				 mm.addAttribute("doanhThu", doanhThu);
				 if(list.size() == 0) {
					 mm.addAttribute("mess", "Không có đơn hàng trong khoảng này!");
					 return "quanly/thongKeDoanhThu";
				 }
				 else {
					return  "quanly/thongKeDoanhThu2";
				 }
				
			}			
	}
	
	@RequestMapping("nhan-vien.htm")
	public String staffManage(ModelMap mm) {
		List<NhanVien> list = nvService.listNV();
		mm.addAttribute("list", list);
		System.out.println(list);
		return "quanly/nhanVien";
	}
	@RequestMapping("edit-nhan-vien-{maNV}.htm")
	public String editStaff(@PathVariable("maNV") String maNV, ModelMap mm) {
		mm.addAttribute("nv", nvService.getNV(maNV));
		List<NhanVien> list = nvService.listNV();
		mm.addAttribute("list", list);
		return "quanly/nhanVien2";
	}
	
	@RequestMapping(value="edit-nhan-vien-{maNV}.htm", method=RequestMethod.POST)
	public String updateStaff(ModelMap mm, @ModelAttribute("nv") NhanVien nv) {
		System.out.println("đã vô");
		nv.setRole(roleService.getRole(15));
		System.out.println(nv.toString());
		int i = nvService.updateNV(nv);
		if (i == 1 ) {
			mm.addAttribute("mess", " Update thông tin nhân viên thành  công!!");
		}
		else {
			mm.addAttribute("mess", " Update failed!");
		}
		List<NhanVien> list = nvService.listNV();
		System.out.println(list.size());
		mm.addAttribute("list", list);
		
	 return "quanly/nhanVien";
	}
	
	@RequestMapping("insert-nhan-vien")
	public String themNV(ModelMap mm) {
		mm.addAttribute("newNV", new NhanVien());
		List<NhanVien> list = nvService.listNV();
		mm.addAttribute("list", list);
		return "quanly/themNV";
	}
	
	@RequestMapping(value="insert-nhan-vien", method = RequestMethod.POST)
	public String themNV(@ModelAttribute("newNV") NhanVien nv, ModelMap mm, @RequestParam("idRole") int id, HttpServletRequest req) throws ParseException {
		//set role cho nv
		nv.setRole(roleService.getRole(id));
		//refomart lai ngay lam
		String ngVL = req.getParameter("ngayVL");
		DateFormat date = new SimpleDateFormat("yyyy-mm-dd");
		Date d = date.parse(ngVL);
		String ngayVL = date.format(d);
		nv.setNgayVL(ngayVL);
		nv.setEnabled(1);
		//luu
		int i = nvService.insertNV(nv);
		if (i == 1 ) {
			mm.addAttribute("mess", " Thêm NV thành công");
		}
		else {
			mm.addAttribute("mess", " Thêm NV  failed!");
		}
		System.out.println(ngayVL);
		List<NhanVien> list = nvService.listNV();
		mm.addAttribute("list", list);
		return "quanly/nhanVien";
	}
}
