package Wipro.ShipReservationSystem.model;

import org.hibernate.validator.constraints.Range;
import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;

@Entity
@Component
public class RouteDetails {
	@Id
	@NotNull(message="enter value")
	Integer routeId;
	@NotEmpty(message="enter value")
	String source;
	@NotEmpty(message="enter value")
	String destination;
	@NotNull(message="enter value")
	@Range(min=50,max=1000,message="enter value")
	Integer kms;

	public Integer getRouteId() {
		return routeId;
	}
	public void setRouteId(Integer routeId) {
		this.routeId = routeId;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public Integer getKms() {
		return kms;
	}
	public void setKms(Integer kms) {
		this.kms = kms;
	}
	@Override
	public String toString() {
		return "RouteDetails [routeId=" + routeId + ", source=" + source + ", destination=" + destination + ", kms="
				+ kms + "]";
	}
	
}
