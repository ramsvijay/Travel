package com.travelportal.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;
import org.springframework.beans.factory.annotation.Autowired;

import com.travelportal.bean.BusBook;
import com.travelportal.bean.FlightBook;
import com.travelportal.bean.User;

public class TravelDaoImpl implements TravelDao{

	
	
	
	@Autowired
	 SessionFactory sessionFactory;
	
	 Session session = null;
	 Transaction tx = null;
	 
	 
	@Override
	public User registration(User user) {
		session = sessionFactory.openSession();
		  tx = session.beginTransaction();
		  session.save(user);
		  tx.commit();
		  session.close();
		  System.out.println("added successfully");
		return user;
		
	}


	@Override
	public String login(String email, String password) {
		session = sessionFactory.openSession();
		
		  User a = (User) session.load(User.class, new String(email));
		  tx = session.getTransaction();
		  
		  session.beginTransaction();
		  
		  tx.commit();
		  System.out.println("get employee detail successfully");
		  System.out.println(password);
		  String pass=a.getPassword();
		  System.out.println(pass);
		  if(pass.equals(password))
		  {
			  System.out.println("validation is successs");		
			  return "success";
			  
		  }
		  
		return "failure";
	}


	@Override
	public int busbook(BusBook busbook) {
		
		session = sessionFactory.openSession();
		  tx = session.beginTransaction();
		  session.save(busbook);
		  tx.commit();
		  session.close();
		  Integer fare=busbook.getSl();
		  int count=busbook.getNoofpassenger();
		  Integer total=fare*count;
		  System.out.println(total);
		  
		  System.out.println("added successfully");
		
		return total;
	}


	@Override
	public int flightbook(FlightBook flightbook) {
		System.out.println("dao");
		session = sessionFactory.openSession();
		  tx = session.beginTransaction();
		  session.save(flightbook);
			System.out.println("saving");
		  tx.commit();
		  session.close();
		  Integer fare=flightbook.getGa();
		  int count=flightbook.getNoofpassenger();
		  Integer total=fare*count;
		  System.out.println(total);
		  
		  System.out.println("FLIGHT added successfully");
		
		return total;
	}

}
