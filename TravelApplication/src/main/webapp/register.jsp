<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
FIRSTNAME <input type="text" id="fistname"/>
LASTNAME<input type="text" id="lastname"/>
EMAIL<input type="text" id="email"/>
CONTACT NUMBER<input type="text" id="contactno"/>
GENDER<input type="text" id="gender"/>
AGE<input type="text" id="age"/>
ADDRESS<input type="text" id="address"/>
PASSWORD<input type="text" id="password"/>
		<input type="submit" id="submit" value="confirm"/>
		
		
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
var search = {};


		$('#submit').click(function() {

					search["firstname"] =$('#firstname').val();
					search["lastname"] =$('#lastname').val();
					search["email"] =$('#email').val();
					search["phoneno"] =$('#contactno').val();
					search["gender"] =$('#gender').val();
					search["age"] =$('#age').val();
					search["address"] =$('address').val();
					search["password"] =$('#password').val();
					$.ajax({
							type : "POST",
							contentType : "application/json",
							url : "http://localhost:8080/TravelApplication/registration",
							data : JSON.stringify(search),
							dataType : 'json',
							timeout : 100000,
							success : function(data)  {
							if(data)
								{
								window.location.href="login.jsp";
								}
							else
								{
								window.location.href="register.jsp";
								}

							}
						})
					});
</script> 
</body>

</html>