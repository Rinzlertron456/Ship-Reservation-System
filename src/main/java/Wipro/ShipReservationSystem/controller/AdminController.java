package Wipro.ShipReservationSystem.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import Wipro.ShipReservationSystem.model.Admin;
import Wipro.ShipReservationSystem.model.ChangePassword;
import Wipro.ShipReservationSystem.service.AdminService;
import jakarta.servlet.http.HttpSession;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	
	
	HttpSession session;
	
	@GetMapping("/")
	public String login(Model model) {
		model.addAttribute("b", false);
		return "home";
	}
	@GetMapping("/dashboard")
	public String dashboard() {
		return "dashboard";
	}
	@PostMapping("/login")
	public String findAdmin(@RequestParam String email,@RequestParam String password,HttpSession session,Admin a,Model model) {
		Optional<Admin> admin=adminService.findAdmin(email, password);
		System.out.println(admin);
		if(admin!=null) {
			session.setAttribute("name",a.getEmail());
			System.out.println(a.getEmail());
		return"redirect:/dashboard";
		}
		else {
		model.addAttribute("b", true);
		return "home";
		}
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session,Model model) {
		model.addAttribute("b", false);
		session.removeAttribute("name");
		session.invalidate();
		
		return "home";
	}
	
	
	@GetMapping("/changePassword")
	public String changePassword() {
		return "ChangePassword";
	}
	
	@PostMapping("/changePassword")
	public String change(ChangePassword change) {
		Optional<Admin> user = adminService.findAdminByName(change.getEmail());
		return adminService.change(user,change);
	}
	
	

}
