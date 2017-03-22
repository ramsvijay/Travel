<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
NAME <input type="text" id="pname"/>
EMAIL<input type="text" id="pemail"/>
MOBILE NUMBER<input type="text" id="pno"/>
AGE<input type="text" id="page"/><br/>
ADDRESS<input type="text" id="paddress"/><br/>
NO OF Passengers<input type="text" id="noofpassenger"/>
<input type="submit" id="submit" value="confirm book"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
var travel=sessionStorage.getItem("travel");
var type=sessionStorage.getItem("type");
var dp=sessionStorage.getItem("dp");
var duration=sessionStorage.getItem("duration");
var at=sessionStorage.getItem("at");
var sa=sessionStorage.getItem("sa");
var dd=sessionStorage.getItem("dd");
var ad=sessionStorage.getItem("ad");
var ga=sessionStorage.getItem("ga");
</script>
<script>
var search = {};


		$('#submit').click(function() {
			alert("ASFASFASDF");
					search["travel"] =travel;
					search["type"] =type;
					search["dp"] =dp;
					search["duration"] =duration;
					search["at"] =at;
					search["sa"]=sa;
					search["dd"] =dd;
					search["ad"] =ad;
					search["ga"] =ga;
					search["name"] =$('#pname').val();
					search["email"] =$('#pemail').val();
					search["mobileno"] =$('#pno').val();
					search["age"] =$('#page').val();
					search["address"]=$('#paddress').val();
					alert("fghjkl");
					search["noofpassenger"] =$('#noofpassenger').val();
					
					$.ajax({
							type : "POST",
							contentType : "application/json",
							
							url : "http://localhost:8080/TravelApplication/flightticketbooking",
							data : JSON.stringify(search),
							dataType : 'json',
							timeout : 100000,
							success : function(data)  {
							if(data)
								{
								window.location.href="generating.jsp";
								}

							}
							
						});
					});
</script> 
</body>
</html>