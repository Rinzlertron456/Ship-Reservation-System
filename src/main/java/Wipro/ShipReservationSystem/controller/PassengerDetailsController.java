package Wipro.ShipReservationSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Wipro.ShipReservationSystem.service.PassengerDetailsService;

@Controller
public class PassengerDetailsController {
	
	@Autowired
	private PassengerDetailsService passengerdetailsservice;
	
	@GetMapping("/passlist")
	public String passlist() {
		return "passlist";
	}
	
	@GetMapping("/passengerdetails")
	public String getpassengerdetails(@RequestParam("shipName") String shipname,@RequestParam("date") String date, Model model) {
//		System.out.println(shipname);
//		System.out.println(date);

		model.addAttribute("passengerdetails", passengerdetailsservice.getpass(shipname,date));

		return "passengerdetails";
	}
}
