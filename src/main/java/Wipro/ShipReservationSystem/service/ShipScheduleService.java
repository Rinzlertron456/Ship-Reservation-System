package Wipro.ShipReservationSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Wipro.ShipReservationSystem.model.ShipSchedule;
import Wipro.ShipReservationSystem.repository.ShipScheduleRepo;

@Service
public class ShipScheduleService {
	
	@Autowired
	private ShipScheduleRepo shipschedulerepo;
	public void addSchedule(ShipSchedule schedule) {
		
		shipschedulerepo.save(schedule);
		
	}
	public List<ShipSchedule> schedules(){
		return shipschedulerepo.findAll();
	}
	
	public ShipSchedule updateSchedule(Integer id) {
		return shipschedulerepo.findById(id).get();
	}
	public void deleteSchedule(int id) {
		@SuppressWarnings("deprecation")
		ShipSchedule schedules=shipschedulerepo.getById(id);
		shipschedulerepo.delete(schedules);
	}
	public void update(ShipSchedule schedule) {
		ShipSchedule newschedule=shipschedulerepo.findById(schedule.getScheduleId()).get();
		newschedule.setShipId(schedule.getShipId());
		newschedule.setRouteId(schedule.getRouteId());
		newschedule.setDate(schedule.getDate());
		newschedule.setTime(schedule.getTime());
		newschedule.setSeatAvailability(schedule.getSeatAvailability());
		
		System.out.println(shipschedulerepo.findAll());
		shipschedulerepo.save(newschedule);
	}

}
