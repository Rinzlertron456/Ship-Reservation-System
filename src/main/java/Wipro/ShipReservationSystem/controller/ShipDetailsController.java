package Wipro.ShipReservationSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Wipro.ShipReservationSystem.model.ShipDetails;
import Wipro.ShipReservationSystem.service.ShipService;
import jakarta.validation.Valid;

@Controller
public class ShipDetailsController {
	@Autowired
	private ShipService shipService;
	@GetMapping("/shipform")
	public String ship(Model model,Model model1) {
		model.addAttribute("ship", new ShipDetails());
		return "ship";
	}
	@PostMapping("/addship")
	public String addship(@Valid @ModelAttribute("ship") ShipDetails ship,BindingResult result,Model model,Model model1) {
		if(result.hasErrors()) {
			return "ship";
		}
		else {
		System.out.println("hii");
		shipService.addShip(ship);
		model.addAttribute("ships", shipService.ships());
		model1.addAttribute("response", "Ship Added Successfully!");
		return "ships";
	}
		}
	@GetMapping("/ships")
	public String ships(Model model,Model model1) {
		model.addAttribute("ships", shipService.ships());
		model1.addAttribute("response", "Welcome to Ships!");
		return "ships";
	}
	@GetMapping("/delete")
	public String delete(@RequestParam("id") Integer id,Model model,Model model1) {
		shipService.deleteShip(id);
		model.addAttribute("ships", shipService.ships());
		model1.addAttribute("response", "Ship Deleted Successfully!");
		return "ships";
	}
	@GetMapping("/update")
	public String update(@RequestParam("id") Integer id,Model model) {
		ShipDetails ship=shipService.updateShip(id);
		model.addAttribute("ship",ship );
		return "updateship";
		
	}
	@PostMapping("/updateship")
	public String updateship(@Valid @ModelAttribute("ship") ShipDetails ship,BindingResult result, Model model,Model model1) {
		if(result.hasErrors()) {
			return "updateship";
		}
		System.out.println(ship);
		shipService.update(ship);
		model.addAttribute("ships", shipService.ships());
		model1.addAttribute("response", "Ship Updated Successfully!");
		return "ships";
		
	}
}
