<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<td>EMAIL</td>
<td><input type="text" id="email"></td>
</tr>
<tr>
<td>PASSWORD</td>
<td><input type="text" id="password"></td>
</tr>
<tr>
<td><input type="submit" value="signin" id="submit"/></td>
<td><input type="submit" value="Sign UP" id="signup"></td>
</tr>
</table>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
			$('#submit').click(function() {
	
				var email =$('#email').val();
				var password =$('#password').val();
				$.ajax({
						type : "GET",
						contentType : "application/xml",
						url : "http://localhost:8080/TravelApplication/login/"+email+","+password+"",
						dataType : 'json',
						timeout : 100000,
						cache   : false,
						success : function(data) 
							{
								alert(data);
								if(data=="success")
									{
									
									window.location.href="flightticketbooking.jsp";
									}
				
								else if(data=="failure")
									{
										window.location.href="login2.jsp";
									}
			
							}
						});
					});
		$('#signup').click(function() {
	
					window.location.href="register.jsp";
				});
</script>
</html>