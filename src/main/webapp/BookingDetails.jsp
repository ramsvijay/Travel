<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@page import="com.model.Employee" %>
      <%@page import="com.dataTable.DataTableParameters" %>
      <%@page import="com.google.gson.GsonBuilder" %>
      <%@page import="com.google.gson.Gson" %>
      <%@ page import = "javax.servlet.RequestDispatcher" %> 
     <%@page import="org.xml.sax.SAXException" %>
     <%@page import="java.util.*" %>
     <%@page import="java.io.IOException" %>
     <%@page import="java.sql.*" %>
       
       
       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Gridview in Servlet using jQuery DataTable plugin</title>

<link  href="resources/css/demo_table_jui.css" rel="stylesheet"  type="text/css" media="all"/>
<link href="resources/css/jquery-ui.css" rel="stylesheet"  type="text/css" media="all"/>
<link href="resources/css/demo_page.css" rel="stylesheet"  type="text/css" media="all"/>

<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/jquery.dataTables.js"></script>
<body id="dt_example">

<script>
$(document).ready(function() {
	$(".jqueryDataTable").dataTable({
		"sPaginationType" : "full_numbers",
		"bProcessing" : false,
		"bServerSide" : false,
		"sAjaxSource" : "displayData",
		"bJQueryUI" : true,
		"aoColumns" : [
            { "mData": "bookingid" },
            { "mData": "source" },
            { "mData": "dest" },
            { "mData": "name" },
            { "mData": "travel" },
            { "mData": "type" }
           
        ]
    } ); 
} );
</script>

</head>


<div id="container">
<h1>Booking Details</h1>
<div id="demo_jui">
	<table class="display jqueryDataTable">
	<thead>
	<tr>
		<th>Booking ID</th>
		<th>Source</th>
		<th>Destination</th>
		<th>Name</th>
		<th>Travel</th>
		<th>Type</th>
	
	
	</tr>
	</thead>
	<tbody>
	</tbody>
	</table>
	<%--<%
	
	
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
    	Employee emp = new Employee(rst.getInt("bookingid"),rst.getString("source"),rst.getString("dest"),rst.getString("name"),rst.getString("travel"),rst.getString("type"));
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

	response.getWriter().print(json);
	
	
	%> --%>	
	
</div>
</div>
 

<%    
   
     RequestDispatcher rd = request.getRequestDispatcher("/DataTableServlet");
     rd.include(request, response);
     
%>
</body>
</html>