package com.model;

public class Employee {
	int bookingid;
	String source;
	String dest,name,travel,type;
	
	public Employee(int bookingid, String source, String dest,String name,String travel,String type) {
			// TODO Auto-generated constructor stub
	
		this.bookingid=bookingid;

		this.source=source;
		this.dest=dest;
		this.name=name;
		this.travel=travel;
		this.type=type;
		
	}

	public int getBookingid() {
		return bookingid;
	}
	public void setBookingid(int bookingid) {
		this.bookingid = bookingid;
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

	
	
	
}
