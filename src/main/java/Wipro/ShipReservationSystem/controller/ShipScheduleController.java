package Wipro.ShipReservationSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Wipro.ShipReservationSystem.model.ShipSchedule;
import Wipro.ShipReservationSystem.service.ShipScheduleService;
import jakarta.validation.Valid;

@Controller
public class ShipScheduleController {
	
	@Autowired
	private ShipScheduleService shipscheduleservice;
	@GetMapping("/schedules")
	public String schedules(Model model,Model model1) {
		model.addAttribute("schedules",shipscheduleservice.schedules());
		model1.addAttribute("response", "Welcome to Schedules!");
		return "schedules";
	}
	@GetMapping("/scheduleform")
	public String schedule(Model model) {
		model.addAttribute("schedules",new ShipSchedule());
		return "schedule";
	}
	
	@PostMapping("/addschedule")
		public String addschedule(@Valid @ModelAttribute("schedules") ShipSchedule schedule,BindingResult result,Model model,Model model1) {
		if(result.hasErrors()) {
			return "schedule";
		}
		
		shipscheduleservice.addSchedule(schedule);
		System.out.println(schedule);
		model.addAttribute("schedules",shipscheduleservice.schedules());
		model1.addAttribute("response", "Schedule Added Successfully!");
		return "schedules";
	}
	@GetMapping("/updateSchedule")
	public String update(@RequestParam("id") Integer id,Model model) {
		System.out.println(id);
		ShipSchedule schedule=shipscheduleservice.updateSchedule(id);
		System.out.println(schedule);
		model.addAttribute("schedules",schedule);
		return "updateschedule";
	}
	@PostMapping("/updateschedule")
	public String updateschedule(@Valid @ModelAttribute("schedules") ShipSchedule schedule,BindingResult result ,Model model,Model model1) {
		if(result.hasErrors()) {
			return "updateschedule";
		}
		System.out.println(schedule);
		shipscheduleservice.update(schedule);
		model.addAttribute("schedules", shipscheduleservice.schedules());
		model1.addAttribute("response", "Schedule Updated Successfully!");
		return "schedules";
	}
	@GetMapping("/deleteSchedule")
	public String delete(@RequestParam("id") Integer id,Model model,Model model1) {
	    shipscheduleservice.deleteSchedule(id);
		model.addAttribute("schedules",shipscheduleservice.schedules());
		model1.addAttribute("response", "Schedule Deleted Successfully!");
		return "schedules";
	}
}
