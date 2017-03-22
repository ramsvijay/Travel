<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<input type="date" id="date" />
<input type="submit" id="submit" value="submit">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
			$('#submit').click(function() {
				var email =$('#date').val();
				var e=email.substring(0, 4);
				var a=email.substring(5, 7);
				var t=email.substring(8, 11);
				alert(email);
				alert(e);
				alert(a);
				alert(t);
				var x=e+a+t;
				alert(x);
			});
			</script>
</body>
</html>