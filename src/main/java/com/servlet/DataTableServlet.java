package com.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URL;
import java.sql.*;

import org.xml.sax.SAXException;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.dataTable.DataTableParameters;
import com.model.Employee;


@WebServlet("/DataTableServlet")
public class DataTableServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		// Call business service class to get list of company
		//List<RevenueReport> listOfCompany = BusinessService.getCompanyList();
		List<Employee> empList = new LinkedList<Employee>();
		try{  
			
			System.out.println("Emp list t");
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/travelportal","root","root");  
	    Statement stm;
	    stm = con.createStatement();
	    String sql = "Select * From busbook";
	    ResultSet rst;
	    rst = stm.executeQuery(sql);
	    
	    while (rst.next()) {
	    	System.out.println("Emp list w");
	    	Employee emp = new Employee(rst.getInt("bookingid"), rst.getString("source"), rst.getString("dest"),rst.getString("name"), rst.getString("travel"),rst.getString("type"));
	        empList.add(emp);
	    }
		}
		catch(Exception e)
		{
			System.out.println("Emp list c");
			e.printStackTrace();
			
		}
		
		System.out.println("Emp list "+empList);
		
		DataTableParameters dataTableParam = new DataTableParameters();
		// Set the list fetched in aaData
		dataTableParam.setAaData(empList);

		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		// Convert Java Object to Json
		String json = gson.toJson(dataTableParam);

		//response.getWriter().print(json);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}