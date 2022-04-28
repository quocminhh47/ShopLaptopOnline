package ptit.Controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptit.ServiceInterface.CmtServiceInterface;
import ptit.ServiceInterface.ContactServiceInterface;
import ptit.ServiceInterface.HoaDonServiceInterface;
import ptit.ServiceInterface.KhServiceInterface;
import ptit.ServiceInterface.NhanVienServiceInterface;
import ptit.ServiceInterface.SanPhamServiceInterface;
import ptit.entity.NhanVien;
import ptit.entity.SanPham;

@Controller
@RequestMapping("/admin/")
public class AdminController2 {
	//String mess;
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
	NhanVienServiceInterface nvService;
	
	@RequestMapping("staff-info")
	public String staffInfo(Principal principal, ModelMap mm) {
		String userName = principal.getName();
		NhanVien nv = nvService.getNV(userName);
		mm.addAttribute("maNV", userName);
		mm.addAttribute("nv", nv);
		return "admin/staffInfo";
	}
	@RequestMapping(value = "/product-manage")
	public String productControl(ModelMap mm,Principal principal) {
		 // Sau khi user login thanh cong se co principal
		       String userName = principal.getName();
		       System.out.println("User Name: "+ userName);
			   mm.addAttribute("dsLaptop", spService.allSP());
			return "admin/product-list";
		
	}
	
	@RequestMapping(value = "/product-insert", method = RequestMethod.GET)
	public String productInsert(ModelMap mm) {
		mm.addAttribute("sp", new SanPham());
			mm.addAttribute("dsLaptop", spService.locSpALL());
			return "admin/product-insert";
	}
	
	@RequestMapping(value = "/product-insert", method = RequestMethod.POST)
	public String productInsert(@ModelAttribute("sp") SanPham sp, ModelMap mm) {
		sp.setStatus_del(false);
		System.out.println(sp.getStatus_del());
			int i = spService.saveSP(sp);
			if (i == 1) {
				mm.addAttribute("mess", "Insert Sucess!");
			}
			else {
				mm.addAttribute("mess", "Insert failed!");
			}
			mm.addAttribute("dsLaptop", spService.locSpALL());
			
		return "admin/product-insert";
	}
	
	@RequestMapping(value = "edit/{maSP}", params = "linkEdit")
	public String insertProduct(@PathVariable("maSP") String maSP, ModelMap mm) {
		 mm.addAttribute("sp", spService.detailSP(maSP));
		return "admin/editFrm";
	}
	
	@RequestMapping(value = "edit/{maSP}", params = "linkEdit" ,method = RequestMethod.POST)
	public String insertSP(@ModelAttribute("sp") SanPham sanPham, ModelMap mm) {
			int i = spService.updateSP(sanPham);
			if (i == 1) {
				mm.addAttribute("mess", "Update Sucess!");
			}
			else {
				mm.addAttribute("mess", "Update failed!");
			}
			 mm.addAttribute("dsLaptop", spService.allSP());
		return "redirect:/admin/product-manage.htm";
			//return "admin/product-list";
	}
	@RequestMapping("order-manage")
	public String orderManage(ModelMap mm){
		try {
			
			mm.addAttribute("hd", hdService.getDsHD());
		} catch (Exception e) {
			System.out.println("lỗi lấy ds hd");
			e.printStackTrace();
		}
		return "admin/hdManage";
	}
	
	@RequestMapping(value = "order-manage-change-status-{soHD}-chua-xu-ly", method = RequestMethod.GET)
	public String setHDChuaXuLy(@PathVariable("soHD") Integer soHD, ModelMap mm,Principal principal) {
		try {
			hdService.changeStatusChuaXL(soHD, principal);
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng -'CHƯA PHÊ DUYỆT' thành công");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng thất bại");
		}
		finally {
			mm.addAttribute("hd", hdService.getDsHD());
		}
		return "redirect:/admin/order-manage.htm";
	}
	
	
	@RequestMapping(value = "order-manage-change-status-{soHD}-huy", method = RequestMethod.GET)
	public String huyHD(@PathVariable("soHD") Integer soHD, ModelMap mm,Principal principal) {
		try {
			hdService.changeStatusHuy(soHD, principal);
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng -'HUỶ' thành công");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng thất bại");
		}
		finally {
			mm.addAttribute("hd", hdService.getDsHD());
		}
		return "redirect:/admin/order-manage.htm";
		
	}
	@RequestMapping(value = "order-manage-change-status-{soHD}-da-xu-ly", method = RequestMethod.GET)
	public String setDuyetHD(@PathVariable("soHD") Integer soHD, ModelMap mm,Principal principal) {
		try {
			hdService.changeStatusDaXL(soHD, principal);
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng -'ĐANG XỬ LÝ' thành công");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng thất bại");
		}
		finally {
			mm.addAttribute("hd", hdService.getDsHD());
		}
		return "admin/hdManage";
	}
	
	@RequestMapping(value = "order-manage-change-status-{soHD}-da-thanh-toan", method = RequestMethod.GET)
	public String setThanhToanHD(@PathVariable("soHD") Integer soHD, ModelMap mm, Principal principal) {
		try {
			hdService.changeStatusDaTT(soHD, principal);
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng -'ĐÃ THANH TOÁN' thành công");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			mm.addAttribute("messHD", "Cập nhật trạng thái đơn hàng thất bại");
		}
		finally {
			mm.addAttribute("hd", hdService.getDsHD());
		}
		return "admin/hdManage";
	}	
	@RequestMapping(value = "cmt-manage", method = RequestMethod.GET)
	public String cmtManage(ModelMap mm) {
			mm.addAttribute("cmtList", cmtService.dsCMT());
			System.out.println("Tải ds cmt thất bại");
			return "admin/cmtManage";
	}
	
	@RequestMapping(value="delete-cmt-{idCmt}.htm", params = "linkDel")
	public String delCMT(@PathVariable("idCmt") Integer idCmt, ModelMap mm) {
		//xoa cmt
			int i = cmtService.xoaCMT(idCmt);
			if (i == 1) {
				mm.addAttribute("mess", "Xoá CMT thành công!");
			}
			else {
				mm.addAttribute("mess", "Xoá CMT thất bại");
			}
			mm.addAttribute("mess", "Xoá CMT thành công!");
			mm.addAttribute("cmtList", cmtService.dsCMT());
		return "admin/cmtManage";
	}
	@RequestMapping("new-order")
	public String newOrder(ModelMap mm) {
			mm.addAttribute("hd", hdService.listHDM());
			if(hdService.listHDM().size() == 0) mm.addAttribute("mess", "Không có đơn hàng mới");
			else mm.addAttribute("mess", "Có "+hdService.listHDM().size() + "đơn hàng mới");
		return "admin/hdManage";
	}
	@RequestMapping("order-manage-da-thanh-toan")
	public String cmtDaThanhToan(ModelMap mm) {
			mm.addAttribute("hd", hdService.listHdDaTT());
		return "admin/hdManage";
	}
	
	@RequestMapping("order-manage-da-phe-duyet")
	public String cmtDaPheDuyet(ModelMap mm) {
			mm.addAttribute("hd", hdService.listHdDaPheDuyet());
		return "admin/hdManage";
	}
	@RequestMapping("order-manage-da-huy")
	public String cmtDaHuy(ModelMap mm) {
			mm.addAttribute("hd", hdService.listHdDaHuy());
		return "admin/hdManage";
	}

	


}
