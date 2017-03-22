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
@Table(name = "busbook")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@XmlRootElement
@XmlAccessorType(XmlAccessType.NONE)
public class BusBook {

	@Id
	@GeneratedValue
	@Column(name = "bookingid")
	private Integer bookingid;
	
	
	@Column(name = "email")
	private String email;
	
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

	@Column(name = "source")
	private String source;
	
	@Column(name = "dest")
	private String dest;
	
	@Column(name = "name")
	private String name;
	
	@Column(name = "travel")
	private String travel;
	
	@Column(name = "type")
	private String type;
	
	@Column(name = "dp")
	private String dp;
	
	@Column(name = "age")
	private String age;
	
	@Column(name = "noofpassenger")
	private Integer noofpassenger;
	
	@Column(name = "duration")
	private String duration;
	
	@Column(name = "at")
	private String at;
	
	@Column(name = "sl")
	private Integer sl;
	
	@Column(name = "seats")
	private String seats;
	
	@Column(name = "mobileno")
	private String mobileno;
	
	@Column(name = "address")
	private String address;

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTravel() {
		return travel;
	}

	public void setTravel(String travel) {
		this.travel = travel;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDp() {
		return dp;
	}

	public void setDp(String dp) {
		this.dp = dp;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public Integer getNoofpassenger() {
		return noofpassenger;
	}

	public void setNoofpassenger(Integer noofpassenger) {
		this.noofpassenger = noofpassenger;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getAt() {
		return at;
	}

	public void setAt(String at) {
		this.at = at;
	}

	public Integer getSl() {
		return sl;
	}

	public void setSl(Integer sl) {
		this.sl = sl;
	}

	public String getSeats() {
		return seats;
	}

	public void setSeats(String seats) {
		this.seats = seats;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
	
	
}
