package Wipro.ShipReservationSystem.model;


import org.hibernate.validator.constraints.Range;
import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;

@Entity
@Component
public class ShipSchedule {
	@Id
	@GeneratedValue
	@NotNull(message="enter value")
	Integer scheduleId;
	@NotNull(message="enter value")
	Integer shipId;
	@NotNull(message="enter value")
	Integer routeId;
	@NotEmpty(message="enter value")
	String date;
	@NotEmpty(message="enter value")
	String time;
	@NotNull(message="enter value")
	@Range(min=50,max=1000,message="enter value")
	Integer seatAvailability;
	public Integer getScheduleId() {
		return scheduleId;
	}
	public void setScheduleId(Integer scheduleId) {
		this.scheduleId = scheduleId;
	}
	public Integer getShipId() {
		return shipId;
	}
	public void setShipId(Integer shipId) {
		this.shipId = shipId;
	}
	public Integer getRouteId() {
		return routeId;
	}
	public void setRouteId(Integer routeId) {
		this.routeId = routeId;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public Integer getSeatAvailability() {
		return seatAvailability;
	}
	public void setSeatAvailability(Integer seatAvailability) {
		this.seatAvailability = seatAvailability;
	}
	@Override
	public String toString() {
		return "ShipSchedule [scheduleId=" + scheduleId + ", shipId=" + shipId + ", routeId=" + routeId + ", date="
				+ date + ", time=" + time + ", seatAvailability=" + seatAvailability + "]";
	}
	

}
