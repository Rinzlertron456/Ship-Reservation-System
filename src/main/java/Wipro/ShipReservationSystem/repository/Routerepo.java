package Wipro.ShipReservationSystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Wipro.ShipReservationSystem.model.RouteDetails;
@Repository

public interface Routerepo extends JpaRepository<RouteDetails,Integer>{

}
