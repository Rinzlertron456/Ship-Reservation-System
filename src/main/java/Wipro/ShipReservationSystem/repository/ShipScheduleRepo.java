package Wipro.ShipReservationSystem.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Wipro.ShipReservationSystem.model.ShipSchedule;
@Repository

public interface ShipScheduleRepo extends JpaRepository<ShipSchedule,Integer>{

}
