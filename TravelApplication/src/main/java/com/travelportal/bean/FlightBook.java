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
	
	@Column(name = "type")
	private String type;
	
	@Column(name = "dp")
	private String dp;
	
	@Column(name = "duration")
	private String duration;
	
	@Column(name = "at")
	private String at;
	
	@Column(name = "sa")
	private String sa;
	
	@Column(name = "dd")
	private String dd;
	
	@Column(name = "ad")
	private String ad;
	
	@Column(name = "ga")
	private Integer ga;
	
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

	public Integer getBookingid() {
		return bookingid;
	}

	public void setBookingid(int bookingid) {
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

	public String getSa() {
		return sa;
	}

	public void setSa(String sa) {
		this.sa = sa;
	}

	public String getDd() {
		return dd;
	}

	public void setDd(String dd) {
		this.dd = dd;
	}

	public String getAd() {
		return ad;
	}

	public void setAd(String ad) {
		this.ad = ad;
	}

	public Integer getGa() {
		return ga;
	}

	public void setGa(int ga) {
		this.ga = ga;
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

	public void setNoofpassenger(int noofpassenger) {
		this.noofpassenger = noofpassenger;
	}

}
