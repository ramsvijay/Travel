<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
var search
$( document ).ready(function() { 
	
	
	var travel=sessionStorage.getItem("travel");
	$('#l1').text(travel);
	var type=sessionStorage.getItem("type");
	$('#l2').text(type);
	var dp=sessionStorage.getItem("dp");
	$('#l3').text(dp);
	var duration=sessionStorage.getItem("duration");
	$('#l4').text(duration);
	var at=sessionStorage.getItem("at");
	$('#l5').text(at);
	var sl=sessionStorage.getItem("sl");
	$('#l6').text(sl);
	var seats=sessionStorage.getItem("seats");
	$('#l7').text(seats);
	
	var search = {};
	
	
	 $('#submit').click(function() {
		 window.location.href="login.jsp";
		});		 });


</script>
<table class="table table-hover table-bordered" id="table1" align="center">
			<thead style="background-color: #bce8f1;">
				<tr>     
					<th>TRAVELS NAME</th><td><label id="l1"></label></td></tr>
					<tr><th>BUS TYPE</th><td><label id="l2"></label></td></tr>
					<tr><th>DEPARTURE TIME</th><td><label id="l3"></label></td></tr>
					<tr><th>DURATION</th><td><label id="l4"></label></td></tr>
					<tr><th>ARRIVAL TIME</th><td><label id="l5"></label></td></tr>
					<tr><th>CHARGES</th><td><label id="l6"></label></td></tr>
					<tr><th>NO OF SEATS LEFT</th><td><label id="l7"></label></td>
				</tr>
				</thead>
</table>
		<input type="submit" id="submit" value="confirm"/>
</body>
</html>