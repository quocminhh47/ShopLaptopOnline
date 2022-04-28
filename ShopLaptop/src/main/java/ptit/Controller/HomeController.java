package ptit.Controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptit.ServiceInterface.SanPhamServiceInterface;
import ptit.entity.SanPham;
@Controller
public class HomeController {
	@Autowired
	SanPhamServiceInterface spService;
	
	@RequestMapping(value= { "/", "/index.htm"}, method = RequestMethod.GET)
	public String homeDirect( ModelMap mm) {
		List<SanPham> list= spService.spDisplay();
		System.out.println(list.size());
		mm.addAttribute("dsLaptop", list);
		mm.addAttribute("type", "Hàng mới về");
		return "redirect: home/index.htm";		
	}
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String login() {
		return "web/login";
	}
	
	 @RequestMapping(value = "/403", method = RequestMethod.GET)
	   public String accessDenied(Model model, Principal principal) {
	       
	       if (principal != null) {
	           model.addAttribute("message", "Hi " + principal.getName()
	                   + "<br> You do not have permission to access this page!");
	       } else {
	           model.addAttribute("msg",
	                   "You do not have permission to access this page!");
	       }
	       return "web/403Page";
	   }
	 @RequestMapping(value="login?error=true")
	 public String loginFail() {
		 return "web/login";
	 }
}
