package com.fdmgroup.model;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name="FlightBootDB")
@NamedQueries({
	@NamedQuery(name="f.findFlight", query="SELECT f FROM Flight f WHERE f.origin = :oName AND f.destination = :dName")
	
})
public class Flight {
	
	@Id
	@SequenceGenerator(name="flSeqGen", sequenceName="FL_SEQ", initialValue =1, allocationSize =1)
	@GeneratedValue(strategy= GenerationType.SEQUENCE, generator = "flSeqGen")
	@Column(name="flId")
	private int flID;
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="origin_id", nullable=false)
	private Location origin;
	
	@OneToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="destination_id", nullable=false)
	private Location destination;
	
	@Column(name="inbound_date")
	private LocalDate inboundDate;
	
	@Column(name="outbound_date")
	private LocalDate outbounDate;
	
	public Flight() {
		super();
	}

	public Flight(Location origin, Location destination, LocalDate inboundDate, LocalDate outbounDate) {
		super();
		this.origin = origin;
		this.destination = destination;
		this.inboundDate = inboundDate;
		this.outbounDate = outbounDate;
	}

	public Location getOrigin() {
		return origin;
	}

	public void setOrigin(Location origin) {
		this.origin = origin;
	}

	public Location getDestination() {
		return destination;
	}

	public void setDestination(Location destination) {
		this.destination = destination;
	}

	public LocalDate getInboundDate() {
		return inboundDate;
	}

	public void setInboundDate(LocalDate inboundDate) {
		this.inboundDate = inboundDate;
	}

	public LocalDate getOutbounDate() {
		return outbounDate;
	}

	public void setOutbounDate(LocalDate outbounDate) {
		this.outbounDate = outbounDate;
	}

	public int getFlID() {
		return flID;
	}

	@Override
	public String toString() {
		return "Flight [flID=" + flID + ", origin=" + origin + ", destination=" + destination + ", inboundDate="
				+ inboundDate + ", outbounDate=" + outbounDate + "]";
	}
	
	

}
