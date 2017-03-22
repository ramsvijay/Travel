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
	
	alert(sessionStorage.getItem("travel"));
	alert(sessionStorage.getItem("type"));
	alert(sessionStorage.getItem("at"));
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
	var ss=sessionStorage.getItem("sa");
	$('#l6').text(ss);
	var dd=sessionStorage.getItem("dd");
	$('#l7').text(dd);
	var ad=sessionStorage.getItem("ad");
	$('#l8').text(ad);
	var ga=sessionStorage.getItem("ga");
	$('#l9').text(ga);
	
	

	var search = {};
	
	
	 $('#submit').click(function() {
		 window.location.href="login2.jsp";
		});		 });


</script>

<br><br>
<table class="table table-hover table-bordered" id="table1" align="center">
			<thead style="background-color: #bce8f1;">
			<tr>     
					<th>Origin</th><td><label id="l1"></label></td></tr>
					<tr><th>Flightcode</th><td><label id="l2"></label></td></tr>
					<tr><th>Deptime</th><td><label id="l3"></label></td></tr>
					<tr><th>Duration</th><td><label id="l4"></label></td></tr>
					<tr><th>Destination</th><td><label id="l5"></label></td></tr>
					<tr><th>Seats Available</th><td><label id="l6"></label></td></tr>
					<tr><th>Departure Date</th><td><label id="l7"></label></td></tr>
					<tr><th>Arrival Date</th><td><label id="l8"></label></td></tr>
					<tr><th>Fare</th><td><label id="l9"></label></td></tr>
				</tr>
			</thead>
		</table>
		<br>
		<center><input type="submit" id="submit" value="confirm"/></center>



</body>
</html>