package Wipro.ShipReservationSystem.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import Wipro.ShipReservationSystem.model.ShipDetails;
import Wipro.ShipReservationSystem.repository.ShipDetailsRepo;

@Service
public class ShipService {
	@Autowired
	private ShipDetailsRepo shipDetailsRepo;
	public void addShip(ShipDetails ship) {
		shipDetailsRepo.save(ship);
	}
	public List<ShipDetails> ships(){
		return shipDetailsRepo.findAll();
	}
	public void deleteShip(int id) {
		@SuppressWarnings("deprecation")
		ShipDetails ship=shipDetailsRepo.getById(id);
		shipDetailsRepo.delete(ship);
	}
	public ShipDetails updateShip(Integer id) {
		
		return shipDetailsRepo.getById(id);
		
	}
	public void update(ShipDetails ship) {
		ShipDetails newship= shipDetailsRepo.findById(ship.getShipId()).get();
		newship.setShipId(ship.getShipId());
		newship.setCapacity(ship.getCapacity());
		newship.setModel(ship.getModel());
		newship.setReservationCapacity(ship.getReservationCapacity());
		newship.setShipName(ship.getShipName());
		newship.setPerKM(ship.getPerKM());
		
		
		System.out.println(shipDetailsRepo.findAll());
		shipDetailsRepo.save(newship);
		
	}
}
