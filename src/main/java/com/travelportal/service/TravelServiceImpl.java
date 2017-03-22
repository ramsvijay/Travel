package com.travelportal.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.travelportal.bean.BusBook;
import com.travelportal.bean.FlightBook;
import com.travelportal.bean.User;
import com.travelportal.dao.TravelDao;

public class TravelServiceImpl implements TravelService{

	
	
	@Autowired
	 TravelDao traveldao;
	
	
	@Override
	public User registration(User user) {
		try {
			traveldao.registration(user);
			} 
		catch (Exception e) 
			{
			
			e.printStackTrace();
			}
		
		return user;	
	}


	@Override
	public boolean login(String email, String password) {
		try 
		{
			
			if(traveldao.login(email,password))
			{
				System.out.println("come on boy...");
			return true;
			}
		} 
		catch (Exception e) 
		{
			
			e.printStackTrace();
		}
		return false;
		
	}


	@Override
	public int busbook(BusBook busbook) {
	
		int a=0;
		try {
			 a=traveldao.busbook(busbook);
			} 
		catch (Exception e) 
			{
			
			e.printStackTrace();
			}
		return a;
	}

	
	@Override
	public Integer flightbook(FlightBook flightbook) {
		
		int a=0;
		try {
			 a=traveldao.flightbook(flightbook);
			} 
		catch (Exception e) 
			{
			
			e.printStackTrace();
			}
		return a;
		
		
	}
}
