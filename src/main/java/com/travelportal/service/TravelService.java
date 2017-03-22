package com.travelportal.service;

import com.travelportal.bean.BusBook;
import com.travelportal.bean.FlightBook;
import com.travelportal.bean.User;

public interface TravelService {

	User registration(User user);

	boolean login(String email, String password);

	int busbook(BusBook busbook);

	Integer flightbook(FlightBook flightbook);

}
