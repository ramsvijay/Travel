package com.travelportal.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.travelportal.bean.BusBook;
import com.travelportal.bean.FlightBook;
import com.travelportal.bean.User;
import com.travelportal.service.TravelService;

import io.swagger.annotations.ApiOperation;



@RestController
public class TravelController 
{
	@Autowired
	 TravelService travelservice;
	
	
	 /***************** END USER REGISTRATION*************************/
	@ApiOperation(value = "REGISTRATION",notes="registration for end user to access the travel portal",response=User.class)
    @RequestMapping(value ="/registration", method = RequestMethod.POST,consumes = "application/json", produces = "application/json")
    public @ResponseBody
    User user(@RequestBody User user) {
       System.out.println(user);
       travelservice.registration(user);
       return user;
     
    }
	
	
	 /***************** EMPLOYEE LOGIN CONTROL*************************/
    @ApiOperation(value = "LOGIN",notes="login for end user",response = User.class)
    @RequestMapping(value = "/login/{email},{password}", method = RequestMethod.GET,produces = { MediaType.APPLICATION_XML_VALUE,MediaType.APPLICATION_JSON_VALUE })
   
    @ResponseBody 
    public boolean login(@PathVariable String email,@PathVariable String password,HttpSession session) {
    System.out.println("controll");
        System.out.println("boy...");
     if(travelservice.login(email,password))
	return true;
	return false;
    
    }
    
    /***************** BUS TICKET BOOOKING*************************/
	@ApiOperation(value = "BUS TICKET BOOKING",notes="book the bus ticket for end user",response=BusBook.class)
    @RequestMapping(value ="/busticketbooking", method = RequestMethod.POST,consumes = "application/json", produces = "application/json")
    public @ResponseBody
    Integer busbook(@RequestBody BusBook busbook) {
       
      Integer x= travelservice.busbook(busbook);
      System.out.println(x);
      
       return x;
     
    }
	
	
	/***************** FLIGHT TICKET BOOOKING*************************/
	@ApiOperation(value = "FLIGHT TICKET BOOKING",notes="book the flight ticket for end user",response=FlightBook.class)
    @RequestMapping(value ="/flightticketbooking", method = RequestMethod.POST,consumes = "application/json", produces = "application/json")
    public @ResponseBody
    Integer flightbook(@RequestBody FlightBook flightbook) {
       System.out.println("controller");
      Integer x= travelservice.flightbook(flightbook);
      System.out.println(x);
      System.out.println("out");
       return x;
     
    }
    
    
   
	

}
