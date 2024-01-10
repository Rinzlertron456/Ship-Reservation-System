package Wipro.ShipReservationSystem.model;

import org.hibernate.validator.constraints.Range;
import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;

@Entity
@Component
public class ShipDetails {
	@Id
	@GeneratedValue
	@NotNull(message="enter value")
	private int shipId;
	@NotEmpty(message="enter value")
	private String shipName;
	@NotEmpty(message="enter value")
	private String model;
	@NotNull(message="Enter number")@Range(min=50,max=1000,message="enter valid capacity from 50 to 1000")
	private Integer capacity;
	@NotNull(message="Enter number")
	@Range(min=50,max=1000,message="enter value")
	private Integer reservationCapacity;
	@NotNull(message="Enter number")
	@Range(min=50,max=1000,message="enter value")
	private Integer perKM;
	public int getShipId() {
		return shipId;
	}
	public void setShipId(int shipId) {
		this.shipId = shipId;
	}
	public String getShipName() {
		return shipName;
	}
	public void setShipName(String shipName) {
		this.shipName = shipName;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public Integer getCapacity() {
		return capacity;
	}
	public void setCapacity(Integer capacity) {
		this.capacity = capacity;
	}
	public Integer getReservationCapacity() {
		return reservationCapacity;
	}
	public void setReservationCapacity(Integer reservationCapacity) {
		this.reservationCapacity = reservationCapacity;
	}
	public Integer getPerKM() {
		return perKM;
	}
	public void setPerKM(Integer perKM) {
		this.perKM = perKM;
	}
	@Override
	public String toString() {
		return "ShipDetails [shipId=" + shipId + ", shipName=" + shipName + ", model=" + model + ", capacity="
				+ capacity + ", reservationCapacity=" + reservationCapacity + ", perKM=" + perKM + "]";
	}
	

}
