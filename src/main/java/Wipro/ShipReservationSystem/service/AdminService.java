package Wipro.ShipReservationSystem.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import Wipro.ShipReservationSystem.model.Admin;
import Wipro.ShipReservationSystem.model.ChangePassword;
import Wipro.ShipReservationSystem.repository.AdminRepo;

@Service
public class AdminService {
	
	@Autowired
	AdminRepo adminRepo;
	
	
	public Optional<Admin> findAdmin(String email,String password) {
		Optional<Admin> admin=adminRepo.findByEmail(email);
		if(admin!=null) {
			if(admin.get().getPassword().equals(password)) {
				return admin;
			}
		}
		System.out.println(admin);
		return null;
		
	}
	public Optional<Admin> findAdminByName(String email) {
		Optional<Admin> a= adminRepo.findByEmail(email);
		
		return a;
		
	}
	public String change(Optional<Admin> user, ChangePassword change) {
		if(user.isPresent()) {
			Admin admin =user.get();
			String password = change.getNewPassword();
			if(password.length()>=8 && password.length()<=15) {
			admin.setPassword(password);
			admin= adminRepo.save(admin);
			return "home";
		}
		}
		return "ChangePassword";
	}
	

}
