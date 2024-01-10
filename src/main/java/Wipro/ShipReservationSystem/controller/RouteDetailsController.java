package Wipro.ShipReservationSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestParam;

import Wipro.ShipReservationSystem.model.RouteDetails;

import Wipro.ShipReservationSystem.service.RouteService;
import jakarta.validation.Valid;



@Controller
public class RouteDetailsController {
	
	@Autowired
	private RouteService routeservice;
	@GetMapping("/routes")
	public String routes(Model model,Model model1) {
		model.addAttribute("routes",routeservice.routes());
		model1.addAttribute("response", "Welcome to Routes!");
		return "routes";
	}
	@GetMapping("/routeform")
	public String route(Model model,Model model1) {
		model.addAttribute("routes",new RouteDetails());
		return "route";
	}
	
	@PostMapping("/addroute")
		public String addroute(@Valid @ModelAttribute("routes") RouteDetails route,BindingResult result,Model model,Model model1) {
		if(result.hasErrors()) {
			return "route";
		}
		routeservice.addRoute(route);
		model.addAttribute("routes",routeservice.routes());
		model1.addAttribute("response", "Route Added Successfully!");
		return "routes";
	}
	@GetMapping("/updates")
	public String update(@RequestParam("id") Integer id,Model model) {
		System.out.println(id);
		RouteDetails route=routeservice.updateRoute(id);
		System.out.println(route);
		model.addAttribute("routes",route);
		return "updateroute";
	}
	@PostMapping("/updateroute")
	public String updateroute(@Valid @ModelAttribute("routes") RouteDetails route,BindingResult result,Model model,Model model1) {
		if(result.hasErrors()) {
			return "updateroute";
		}
		System.out.println(route);
		routeservice.update(route);
		model.addAttribute("routes", routeservice.routes());
		model1.addAttribute("response", "Route Updated Successfully!");
		return "routes";
	}
	@GetMapping("/deletes")
	public String delete(@RequestParam("id") Integer id,Model model,Model model1) {
	    routeservice.deleteRoute(id);
		model.addAttribute("routes",routeservice.routes());
		model1.addAttribute("response", "Route Deleted Successfully!");
		return "routes";
	}
}
