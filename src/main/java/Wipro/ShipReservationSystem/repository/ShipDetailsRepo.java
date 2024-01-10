package Wipro.ShipReservationSystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Wipro.ShipReservationSystem.model.ShipDetails;
@Repository
public interface ShipDetailsRepo extends JpaRepository<ShipDetails,Integer>{
	

}
