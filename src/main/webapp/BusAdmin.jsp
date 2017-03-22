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
<script type="text/javascript" src="resources/js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="resources/js/cufon-yui.js"></script>
<script type="text/javascript" src="resources/js/cufon-replace.js"></script>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script src="script.js" type="text/javascript"></script>
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


        </ul>
      </nav>
    </div>
    <nav>
      <ul id="menu">
        <li id=""><a href="index.jsp"><span><span>Home</span></span></a></li>
        <li><a href="bus.jsp"><span><span>Bus Booking</span></span></a></li>
        <li><a href="flight.jsp"><span><span>Flight Booking</span></span></a></li>
		        <li><a><span><span>Hotel</span></span></a></li>

        <li class=""><a href="contacts.jsp"><span><span>Contacts</span></span></a></li>
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
			
			
			
            <li style="width:288px"><a style="height:270px"><h4><font color="white">Login</font></h4></a></li>
			
				
            <li class="end"><a href="#Rental"></a></li>
          </ul>
          <div class="content">
            <div class="tab-content" id="Flight">
              <form id="form_1"  method="post">
			  
			  <br>
			  <br>
                <div>
                  
                  <div class="row"> <span class="left" style="width:80px">USERNAME</span>
                    <input type="text" class="input" id="email">
                  </div> <br>
                  <div class="row"> <span class="left" style="width:80px">PASSWORD</span>
                    <input type="password" class="input" id="password">
                  </div>
                  <div class="wrapper">
                    <div class="col1">
                      
                      
                    <br>
                  
                  
                  <div class="wrapper"> <span class="right relative"><strong><input type="button" style="width:100px;height:30px;background-color: #80e5ff" value="SIGN IN" id="submit"/></strong></span> <a href="register.jsp" class="link1">Register</a> </div>
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
								if(data==true)
									{
									window.location.href="BookingDetails.jsp";
									}
				
								else
									{
										window.location.href="BusAdmin.jsp";
									}
			
							}
						});
					});
		$('#signup').click(function() {
	
					window.location.href="register.jsp";
				});
</script>

</body>


</html>