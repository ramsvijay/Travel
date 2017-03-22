<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {
  margin: auto;
  background: #eaeaea;  
  font-family: 'Open Sans', sans-serif;
}

.info p {
  text-align:center;
  color: #999;
  text-transform:none;
  font-weight:600;
  font-size:15px;
  margin-top:2px
}

.info i {
  color:#F6AA93;
}
form h1 {
  font-size: 18px;
  background: #F6AA93 none repeat scroll 0% 0%;
  color: rgb(255, 255, 255);
  padding: 22px 25px;
  border-radius: 5px 5px 0px 0px;
  margin: auto;
  text-shadow: none; 
  text-align:left
}

form {
  border-radius: 5px;
  max-width:700px;
  width:100%;
  margin: 5% auto;
  background-color: #FFFFFF;
  overflow: hidden;
}

p span {
  color: #F00;
}

p {
  margin: 0px;
  font-weight: 500;
  line-height: 2;
  color:#333;
}

h1 {
  text-align:center; 
  color: #666;
  text-shadow: 1px 1px 0px #FFF;
  margin:50px 0px 0px 0px
}

input {
  border-radius: 0px 5px 5px 0px;
  border: 1px solid #eee;
  margin-bottom: 15px;
  width: 75%;
  height: 40px;
  float: left;
  padding: 0px 15px;
}

a {
  text-decoration:inherit
}

textarea {
  border-radius: 0px 5px 5px 0px;
  border: 1px solid #EEE;
  margin: 0;
  width: 75%;
  height: 130px; 
  float: left;
  padding: 0px 15px;
}

.form-group {
  overflow: hidden;
  clear: both;
}

.icon-case {
  width: 35px;
  float: left;
  border-radius: 5px 0px 0px 5px;
  background:#eeeeee;
  height:42px;
  position: relative;
  text-align: center;
  line-height:40px;
}

i {
  color:#555;
}

.contentform {
  padding: 40px 30px;
}

.bouton-contact{
  background-color: #81BDA4;
  color: #FFF;
  text-align: center;
  width: 100%;
  border:0;
  padding: 17px 25px;
  border-radius: 0px 0px 5px 5px;
  cursor: pointer;
  margin-top: 40px;
  font-size: 18px;
}

.leftcontact {
  width:49.5%; 
  float:left;
  border-right: 1px dotted #CCC;
  box-sizing: border-box;
  padding: 0px 15px 0px 0px;
}

.rightcontact {
  width:49.5%;
  float:right;
  box-sizing: border-box;
  padding: 0px 0px 0px 15px;
}

.validation {
  display:none;
  margin: 0 0 10px;
  font-weight:400;
  font-size:13px;
  color: #DE5959;
}

#sendmessage {
  border:1px solid #fff;
  display:none;
  text-align:center;
  margin:10px 0;
  font-weight:600;
  margin-bottom:30px;
  background-color: #EBF6E0;
  color: #5F9025;
  border: 1px solid #B3DC82;
  padding: 13px 40px 13px 18px;
  border-radius: 3px;
  box-shadow: 0px 1px 1px 0px rgba(0, 0, 0, 0.03);
}

#sendmessage.show,.show  {
  display:block;
}

</style>

</head>
<body background="resources/images/bg_img.jpg">
	  <h1>KUMARAN TRAVELS</h1>
   
  
  <form>
	    <h1>E-TICKET FOR BUS BOOKING</h1>
	    
    <div class="contentform">
    	<div id="sendmessage"> Your message has been sent successfully. Thank you. </div>


    	<div class="leftcontact">
			     

            <div class="form-group">
            <p>Name <span></span></p>
            <span class="icon-case"><i class="fa fa-user"></i></span>
				<label id="name"></label>
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p>E-mail <span></span></p>	
			<span class="icon-case"><i class="fa fa-envelope-o"></i></span>
                <label id="email"></label>                
				<div class="validation"></div>
			</div>	

			<div class="form-group">
			<p>MOBILE NUMBER <span></span></p>
			<span class="icon-case"><i class="fa fa-home"></i></span>
				<label id="no"></label> 
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p>Address <span></span></p>
			<span class="icon-case"><i class="fa fa-location-arrow"></i></span>
				<label id="address"></label> 
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p>AGE <span></span></p>
			<span class="icon-case"><i class="fa fa-map-marker"></i></span>
				<label id="age"></label> 
                <div class="validation"></div>
			</div>	
			
			<div class="form-group">
			<p>NO OF PASSENGERS <span></span></p>
			<span class="icon-case"><i class="fa fa-map-marker"></i></span>
				<label  id="noofpassenger"></label> 
                <div class="validation"></div>
			</div>	
			
			<div class="form-group">
			<p>SOURCE <span></span></p>
			<span class="icon-case"><i class="fa fa-map-marker"></i></span>
				<label id="source"></label> 
                <div class="validation"></div>
			</div>	
			
			<div class="form-group">
			<p>DESTINATION <span></span></p>
			<span class="icon-case"><i class="fa fa-map-marker"></i></span>
				<label id="destination" ></label> 
                <div class="validation"></div>
			</div>	



	</div>

	<div class="rightcontact">	

			<div class="form-group">
			<p>TRAVEL NAME </p>
			<span class="icon-case"><i class="fa fa-building-o"></i></span>
				<label id="travel" ></label> 
                <div class="validation"></div>
			</div>	

			<div class="form-group">
			<p>BUS TYPE<span></span></p>	
			<span class="icon-case"><i class="fa fa-phone"></i></span>
				<label id="bt" ></label> 
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p>DEPARTURE TIME <span></span></p>
			<span class="icon-case"><i class="fa fa-info"></i></span>
                <label id="dt" ></label> 
                <div class="validation"></div>
			</div>

			<div class="form-group">
			<p>ARRIVAL TIME<span></span></p>	
			<span class="icon-case"><i class="fa fa-comment-o"></i></span>
                <label id="at" ></label> 
                <div class="validation"></div>
			</div>
		
			<div class="form-group">
			<p>DURATION <span></span></p>
			<span class="icon-case"><i class="fa fa-comments-o"></i></span>
                <label id="duration"></label> 
                <div class="validation"></div>
			</div>	
			
			<div class="form-group">
			<p>FARE <span></span></p>
			<span class="icon-case"><i class="fa fa-comments-o"></i></span>
                <label id="fare"></label> 
                <div class="validation"></div>
			</div>	
			
			<div class="form-group">
			<p>TOTAL AMOUNT <span></span></p>
			<span class="icon-case"><i class="fa fa-comments-o"></i></span>
                <label id="total"></label> 
                <div class="validation"></div>
			</div>	
			
			
	</div>
	</div>
	</form>

<form name="paypalForm" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_xclick" />
<input type="hidden" name="business" value="naveenvenkatcs@gmail.com" />
<input type="hidden" name="password" value="Na29121994!" />
<input type="hidden" name="custom" value="'+total+'" id="totalvalue"/>
<input type="hidden" name="item_name" value="TICKET BOOKING" />
<input type="hidden" name="amount" value="'+total+'" id="totalvalue"/>
<input type="hidden" name="rm" value="1" />
<input type="hidden" name="return" value="http://localhost:8080/PaymentGateway/response.jsp" />
<input type="hidden" name="cancel_return" value="http://localhost:8080/PaymentGateway/responsecancel.jsp" />
<input type="hidden" name="cert_id" value="API Singature" />
<input type="Submit" class="bouton-contact" value="Pay with Paypal"/>
</form>
	
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>


		        			
		        			
		        			$( document ).ready(function()  {
		        				
		        				var travel=sessionStorage.getItem("source");
		        				$('#source').text(travel);
		        				var travel=sessionStorage.getItem("dest");
		        				$('#destination').text(travel);
		        				var travel=sessionStorage.getItem("travel");
		        				$('#travel').text(travel);
		        				var type=sessionStorage.getItem("type");
		        				$('#bt').text(type);
		        				var dp=sessionStorage.getItem("dp");
		        				$('#dt').text(dp);
		        				var duration=sessionStorage.getItem("duration");
		        				$('#duration').text(duration);
		        				var at=sessionStorage.getItem("at");
		        				$('#at').text(at);
		        				var sl=sessionStorage.getItem("sl");
		        				$('#fare').text(sl);
		        				var noofpassenger=sessionStorage.getItem("pnoofpassenger");
		        				alert(noofpassenger);
		        				$('#noofpassenger').text(noofpassenger);
		        				var name=sessionStorage.getItem("pname");
		        				alert(name);
		        				$('#name').text(name);
		        				var mail=sessionStorage.getItem("pmail");
		        				alert(mail);
		        				$('#email').text(mail);
		        				var age=sessionStorage.getItem("page");
		        				alert(age);
		        				$('#age').text(age);
		        				var address=sessionStorage.getItem("paddress");
		        				alert(address);
		        				$('#address').text(address);
		        				var no=sessionStorage.getItem("pno");
		        				$('#no').text(no);
		        				var total=sessionStorage.getItem("totalfare");
		        				alert(total);
		        				$('#total').text(total);
		        				$('#totalval').val(total);
		        				alert($('#totalval').val(total));
		        				
		        				
		        			});

  </script>
</body>
</html>