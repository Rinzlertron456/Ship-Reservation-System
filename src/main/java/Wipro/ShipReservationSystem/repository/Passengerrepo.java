package Wipro.ShipReservationSystem.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import Wipro.ShipReservationSystem.model.PassengerDetails;
@Repository

public interface Passengerrepo extends JpaRepository<PassengerDetails,Integer>{


List<PassengerDetails> findByshipNameAndDate(String shipname, String date);

}
