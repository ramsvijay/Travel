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
      <h1><a href="index.jsp" id="buslogo">AirLines</a></h1>
      <span id="slogan">Welcome To Kumaran Travel Portals</span>
      <nav id="top_nav">
        <ul>
          <li><a href="index.jsp" class="nav1">Home</a></li>
		            <li><a href="login.jsp" class="#">Login</a></li>

					          <li><a href="register.jsp" class="#">Register</a></li>
					          

        </ul>
      </nav>
    </div>
    <nav>
      <ul id="menu">
        <li><a href="index.jsp"><span><span>Home</span></span></a></li>
        <li id="#"><a href="bus.jsp"><span><span>Bus Booking</span></span></a></li>
        <li><a href="flight.jsp"><span><span>Flight Booking</span></span></a></li>
        <li><a href="Hotel.jsp"><span><span>Hotel</span></span></a></li>
        <li class="end"><a href="contacts.jsp"><span><span>Contacts</span></span></a></li>
      </ul>
    </nav>
  </header>
  <!-- / header -->
  <!--content -->
  <section id="content">
    <div class="bus">
      <article class="col1">
        <div class="tabs" style="width:330px">
          <ul class="nav">
            <li class="selected">       <a href="#Flight"></a></li>
			
			
			
            <li style="width:330px"><a style="height:270px"><h4><font color="white">Bus Booking</font></h4></a></li>
			
				
            <li class="end"><a href="#Rental"></a></li>
          </ul>
          <div class="content">
            <div class="tab-content" style="width:400px" id="Flight">
              <form id="form_1">
			  
			  <br>
			  <br>
                <div>
                  
                  <div class="row"> <span class="left" style="width:100px">Source</span>
                    <input type="text" placeholder="Enter Source Name" class="input" id="source">
                  </div> 
                  <div class="row"> <span class="left" style="width:100px">Destination</span>
                    <input type="text" placeholder="Enter Destination Name" class="input" id="destination">
                  </div>
				  
				  
                  <div class="row"> <span class="left" style="width:100px">DateOfDeparture</span>
                    <input type="date" class="input" id="dateofdeparture">
                  </div> 
				 
                  <div class="wrapper">
                    <div class="col1">
                      
                      
                    <br>
                  
                  
                  <div class="wrapper"> <span class="right relative"><input type="button" style="width:100px;height:30px;background-color: #80e5ff" value="SEARCH" id="submit"/></span>  </div>
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
        Design by <a target="_blank" href="http://www.kumaran.com/">KumaranSystems.com</a></div>
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

		               
		                 
		                  
		        			$('#submit').click(function() {
		        				var source=$('#source').val();
		        				sessionStorage.setItem("source",source);
				                  var destination=$('#destination').val();
				                  sessionStorage.setItem("dest",destination);
				                  var dateofdeparture=$('#dateofdeparture').val();
				                  alert(source);
				                  alert(destination);
				                  alert(dateofdeparture);
				                  var year=dateofdeparture.substring(0, 4);
				                  var month=dateofdeparture.substring(5,7);
				                  var date=dateofdeparture.substring(8,10);
				                  alert(year);
				                  alert(month);
				                  alert(date);
				                  var dateoftravel=year+month+date;
				                  alert(dateoftravel);
		        		
		                	$.ajax({
		        				type : "GET",
		        				contenttype:"application/json",
		        				url : "http://developer.goibibo.com/api/bus/search/?app_id=87f8c388&app_key=f0c0b6f79b52eaabc97804e4b74c20ee&format=json&source="+source+"&destination="+destination+"&dateofdeparture="+dateoftravel,
		        				cache:false,
		        				success : function(data) {
		        					
		        					alert(JSON.stringify(data));
		        					sessionStorage.setItem("bus",JSON.stringify(data));
		        					window.location.href="businfo.jsp";
		    						
		        				}
		                	});
		                	
		        			});
		        			
	</script> 
</body>
</html>