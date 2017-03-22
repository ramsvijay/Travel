package com.travelportal.bean;


import javax.persistence.Id;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

import org.codehaus.jackson.annotate.JsonIgnoreProperties;

@Entity
@Table(name = "flightbook")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)

public class FlightBook 
{
	
    @Id
	@GeneratedValue
	@Column(name = "bookingid")
	private Integer bookingid;
    
	@Column(name = "email")
	private String email;
	
	@Column(name = "travel")
	private String travel;
	
	
	
	@Column(name = "dtime")
	private String dtime;
	
	@Column(name = "duration")
	private String duration;
	
	@Column(name = "adetail")
	private String adetail;
	
	@Column(name = "ddetail")
	private String ddetail;
	
	@Column(name = "source")
	private String source;
	
	@Column(name = "dest")
	private String dest;
	
	@Column(name = "fare")
	private Integer fare;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "mobileno")
	private String mobileno;
	
	@Column(name = "age")
	private String age;	
	
	@Column(name = "address")
	private String address;	
	
	@Column(name = "noofpassenger")
	private Integer noofpassenger;
	
	@Column(name = "seats")
	private Integer seats;

	public Integer getBookingid() {
		return bookingid;
	}

	public void setBookingid(Integer bookingid) {
		this.bookingid = bookingid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTravel() {
		return travel;
	}

	public void setTravel(String travel) {
		this.travel = travel;
	}

	public String getDtime() {
		return dtime;
	}

	public void setDtime(String dtime) {
		this.dtime = dtime;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getAdetail() {
		return adetail;
	}

	public void setAdetail(String adetail) {
		this.adetail = adetail;
	}

	public String getDdetail() {
		return ddetail;
	}

	public void setDdetail(String ddetail) {
		this.ddetail = ddetail;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDest() {
		return dest;
	}

	public void setDest(String dest) {
		this.dest = dest;
	}

	public Integer getFare() {
		return fare;
	}

	public void setFare(Integer fare) {
		this.fare = fare;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getNoofpassenger() {
		return noofpassenger;
	}

	public void setNoofpassenger(Integer noofpassenger) {
		this.noofpassenger = noofpassenger;
	}

	public Integer getSeats() {
		return seats;
	}

	public void setSeats(Integer seats) {
		this.seats = seats;
	}

	

	
}
