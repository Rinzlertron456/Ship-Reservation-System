package Wipro.ShipReservationSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Wipro.ShipReservationSystem.model.RouteDetails;
import Wipro.ShipReservationSystem.repository.Routerepo;

@Service
public class RouteService {
	
	@Autowired
	private Routerepo routerepo;
	public void addRoute(RouteDetails route) {
		routerepo.save(route);
	}
	public List<RouteDetails> routes(){
		return routerepo.findAll();
	}
	
	public RouteDetails updateRoute(Integer id) {
		return routerepo.findById(id).get();
	}
	public void deleteRoute(int id) {
		@SuppressWarnings("deprecation")
		RouteDetails routes=routerepo.getById(id);
		routerepo.delete(routes);
	}
	public void update(RouteDetails route) {
		RouteDetails newroute=routerepo.findById(route.getRouteId()).get();
		newroute.setSource(route.getSource());
		newroute.setDestination(route.getDestination());
		newroute.setKms(route.getKms());
		
		System.out.println(routerepo.findAll());
		routerepo.save(newroute);
	}
}
