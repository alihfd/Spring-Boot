package com.fdmgroup.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="LocationBootDB")
@NamedQueries({
	@NamedQuery(name="loc.findByCityCountry", query="SELECT l FROM Location l WHERE l.city = :cityParam")
		/*
		 * @NamedQuery(name="loc.findByCityCountry",
		 * query="SELECT l FROM Location l WHERE l.city = :cityParam AND l.country = :countryParam"
		 * )
		 */
})
public class Location {
	
	@Id
	@SequenceGenerator(name="locSeqGen", sequenceName="LOC_SEQ", initialValue = 1, allocationSize=1)
	@GeneratedValue(strategy= GenerationType.SEQUENCE, generator = "locSeqGen")
	@Column(name="locId")
	private int locId;
	
	@Column
	private String city;
	
	@Column
	private String state;
	
	@Column
	private String country;
	
	public Location() {
		super();
	}
	
	

	public Location(String city, String state, String country) {
		super();
		this.city = city;
		this.state = state;
		this.country = country;
	}



	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getLocId() {
		return locId;
	}

	@Override
	public String toString() {
		return "Location [locId=" + locId + ", city=" + city + ", State=" + state + ", Country=" + country + "]";
	}
	
	

}
