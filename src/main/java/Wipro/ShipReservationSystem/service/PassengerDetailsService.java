package Wipro.ShipReservationSystem.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Wipro.ShipReservationSystem.model.PassengerDetails;
import Wipro.ShipReservationSystem.repository.Passengerrepo;

@Service
public class PassengerDetailsService {
	@Autowired
	private Passengerrepo passengerrepo;
	
	
	
	public List<PassengerDetails> getpass(String shipname, String date){
//		System.out.println(shipname);
//		System.out.println(date);
//     	List<PassengerDetails> passengerdetail = passengerrepo.findByshipNameAndDate(shipname,date);
		List<PassengerDetails> passengerdetail = passengerrepo.findAll();
//		System.out.println("hello");
		if(passengerdetail.isEmpty()) {
			System.out.println("hello");
		}
	passengerdetail.forEach(System.out::println);
			
		
		
		List<PassengerDetails> passengerdetails=new ArrayList<PassengerDetails>();
		for(int i=0;i<passengerdetail.size();i++) {
			if(shipname.equals(passengerdetail.get(i).getShipName())&&date.equals(passengerdetail.get(i).getDate())) {
				System.out.println(passengerdetail.get(i).getShipName()+" "+passengerdetail.get(i).getDate());
				passengerdetails.add(passengerdetail.get(i));
			}
		}
		//System.out.println(passengerdetails);
		return passengerdetails;
	}
}
