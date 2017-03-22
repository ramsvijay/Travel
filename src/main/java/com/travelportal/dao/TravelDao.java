package com.travelportal.dao;

import com.travelportal.bean.BusBook;
import com.travelportal.bean.FlightBook;
import com.travelportal.bean.User;

public interface TravelDao {

	User registration(User user);

	boolean login(String email, String password);

	int busbook(BusBook busbook);

	int flightbook(FlightBook flightbook);

}
