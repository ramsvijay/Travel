<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>AirLines</title>
<meta charset="utf-8">
<link rel="stylesheet" href="resources/css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="resources/css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Cabin_400.font.js"></script>
<script type="text/javascript" src="js/tabs.js"></script>
<script type="text/javascript" src="js/jquery.jqtransform.js" ></script>
<script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript" src="js/atooltip.jquery.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script src="resources/js/script.js" type="text/javascript"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->
</head>
<body id="page1">
<div class="main">
  <!--header -->
  <header>
    <div class="wrapper">
      <h1><a href="index.jsp" id="logo">AirLines</a></h1>
      <span id="slogan">Welcome To Kumaran Travel Portals</span>
      <nav id="top_nav">
        <ul>
          <li><a href="index.jsp" class="nav1">Home</a></li>
		            <li><a href="login.jsp" class="#">Login</a></li>


        </ul>
      </nav>
    </div>
    <nav>
      <ul id="menu">
         <li id=""><a href="index.jsp"><span><span>Home</span></span></a></li>
        <li><a href="bus.jsp"><span><span>Bus Booking</span></span></a></li>
        <li><a href="flight.jsp"><span><span>Flight Booking</span></span></a></li>
		        <li><a><span><span>Hotel</span></span></a></li>

        <li class="end"><a href="contacts.jsp"><span><span>Contacts</span></span></a></li>
      </ul>
    </nav>
  </header>
  <!-- / header -->
  <!--content -->
  <section id="content">
    <div class="for_banners">
      <article class="col1">
        <div class="tabs">
          <ul class="nav">
            <li class="selected">       <a href="#Flight"></a></li>
			
			
			
            <li style="width:288px"><a style="height:270px"><h4><font color="white">Register</font></h4></a></li>
			
				
            <li class="end"><a href="#Rental"></a></li>
          </ul>
          <div class="content">
            <div class="tab-content" id="Flight">
              <form id="form_1" action="#" method="post">
			  
			  <br>
			  <br>
                <div>
                  
                  <div class="row"> <span class="left" style="width:84px">First Name</span>
                    <input type="text" class="input" id="firstname" value={{gmail.username}}>
                  </div> 
                  <div class="row"> <span class="left" style="width:84px">Last Name</span>
                    <input type="text" class="input" id="lastname">
                  </div>
				  <div class="row"> <span class="left" style="width:84px">Email</span>
                    <input type="email" class="input" id="email" value={{gmail.email}}>
                  </div> 
                  <div class="row"> <span class="left" style="width:84px">PhoneNumber</span>
                    <input type="text" class="input" id="contactno" value={{gmail.mobilenumber}}>
                  </div>
				   <div class="row"> <span class="left" style="width:84px">Address</span>
                    <input type="text" class="input" id="address">
                  </div>
                 
				  <div class="row"> <span class="left" style="width:84px">Age</span>
                    <input type="text" class="input" id="age">
                  </div>
                  <div class="row"> <span class="left" style="width:84px">Gender</span>
											<select name="gender" style="width:200px;height:20px;" class="input" id="gender">
											<option value="Male" style="width:2000px;">    MALE    </option>
											<option value="Female" style="width:200px;">   FEMALE    </option>
											</select>
				</div>
				  <div class="row"> <span class="left" style="width:84px">Password</span>
                    <input type="password" class="input" id="password">
                  </div>
				  
				  
                  <div class="wrapper">
                    <div class="col1">
                      
                      
                    <br>
                  
                  
                  <div class="wrapper"> <span class="right relative"><strong><input type="submit" style="width:100px;height:30px;background-color: #80e5ff" value="REGISTER" id="submit"/></strong></span>  </div><h1>SIGNIN GOOGLE</h1>
	<input type="button" ng-click="onGoogleLogin()" value="Login" style="width: 100px; height: 60px;" />
                </div>
              </form>
            </div>
           
            
          </div>
        </div>
      </article>
     
    </div>
   
        
  </section>
  <!--content end-->
  <!--footer -->
  <footer>
    <div class="wrapper">
      <ul id="icons">
        
      </ul>
      <div class="links">Copyright &copy; <a href="#">Domain Name</a> All Rights Reserved<br>
        Design by <a target="_blank" href="http://www.kumaran.com/">KumaranSystem.com</a></div>
    </div>
  </footer>
  <!--footer end-->
</div>
<script type="text/javascript">Cufon.now();</script>
<script type="text/javascript">
$(document).ready(function () {
    tabs.init();
});
jQuery(document).ready(function ($) {
    $('#form_1, #form_2, #form_3').jqTransform({
        imgPath: 'jqtransformplugin/img/'
    });
});
$(window).load(function () {
    $('#slider').nivoSlider({
        effect: 'fade', //Specify sets like: 'fold,fade,sliceDown, sliceDownLeft, sliceUp, sliceUpLeft, sliceUpDown, sliceUpDownLeft' 
        slices: 15,
        animSpeed: 500,
        pauseTime: 6000,
        startSlide: 0, //Set starting Slide (0 index)
        directionNav: false, //Next & Prev
        directionNavHide: false, //Only show on hover
        controlNav: false, //1,2,3...
        controlNavThumbs: false, //Use thumbnails for Control Nav
        controlNavThumbsFromRel: false, //Use image rel for thumbs
        controlNavThumbsSearch: '.jpg', //Replace this with...
        controlNavThumbsReplace: '_thumb.jpg', //...this in thumb Image src
        keyboardNav: true, //Use left & right arrows
        pauseOnHover: true, //Stop animation while hovering
        manualAdvance: false, //Force manual transitions
        captionOpacity: 1, //Universal caption opacity
        beforeChange: function () {},
        afterChange: function () {},
        slideshowEnd: function () {} //Triggers after all slides have been shown
    });
});
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
var search = {};


		$('#submit').click(function() {

					search["firstname"] =$('#firstname').val();
					search["lastname"] =$('#lastname').val();
					search["email"] =$('#email').val();
					search["phoneno"] =$('#contactno').val();
					search["gender"] =$('#gender option:selected').val();
					search["age"] =$('#age').val();
					search["address"] =$('#address').val();
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
<body ng-app="myApp" ng-controller="myController">
	
	<!-- <input type="text" value={{gmail.username}} />
	<input type="text" value={{gmail.email}} />
	<input type="text" value={{gmail.mobilenumber}} />
	<input type="text" value={{gmail.age}} /> -->
	<!-- <h4>{{gmail.email}}</h4>
	<img src="{{g_image}}" style="width: 100px; height: 100px"> --> -->
	
	<!-- <h1>Facebook Login</h1>
	<input type="button" ng-click="onFBLogin()" value="Login" style="width: 100px; height: 60px" />
	<h4>{{facebook.username}}</h4>
	<h4>{{facebook.email}}</h4>
	<img src="{{fb_image}}" style="width: 100px; height: 100px"> -->
	
	<script src="resources/js/app.js" type="text/javascript"></script>
	<script type="text/javascript">
		(function() {
			var p=document.createElement('script');
			p.type='text/javascript';
			p.async=true;
			p.src='https://apis.google.com/js/client.js?onload=onLoadFunction';
			var s=document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(p,s);
		})();
	</script>
</body>
</html>