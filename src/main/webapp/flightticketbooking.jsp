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

<style>
#inputBox  
{
 width: 100%;
 display: table-cell; 
 }
 #container 
 { padding-top: 45px;
    padding-right: 5px;
  
    padding-left: 80px;
 
 }
#container label
  { 
  white-space: nowrap; 
  }
  
 
.n
{
text-align:left;
 padding-top: 35px;
    padding-right: 5px;
   
    padding-left: 80px;
}


.e
{
text-align:left;
 
    padding-right: 5px;
   
    padding-left: 600px;
}

.m
{
 
text-align:left;
 
    padding-right: 5px;
   
    padding-left: 600px;
}


.b
{
text-align:left;
 
    padding-right: 5px;
    
    padding-left: 80px;
}



.Fare
{
text-align:left;
 padding-top: 5px;
    padding-right: 5px;
   
    padding-left: 80px;
}

.Seats
{
text-align:left;
 padding-top: 5px;
    padding-right: 5px;
    padding-bottom: 50px;
    padding-left: 80px;
}

.Travel
{
text-align:left;
 padding-top: 45px;
    padding-right: 5px;
   
    padding-left: 80px;
}

.Bus
{
text-align:left;
 
    padding-left: 600px;
  
}


.Arrival
{
text-align:left;
 padding-top: 10px;
    padding-right: 5px;
    
     padding-left: 80px;

}
.Departure
{
text-align:left;
 padding-top: px;
    padding-right: 5px;
    
   padding-left: 600px;

}
.Duration
{
text-align:left;
 padding-top: 5px;
    padding-right: 5px;
  
    padding-left: 600px;
}

.gen,.Arrival,.Fare,.Seats,.Travel,.Bus,.Departure,.Duration,.b,.m,.n,.e{

font-size:20px;

}

.gen,.Arrival,.Fare,.Seats
{
text-align:left;


}
#confirm{
border-top-right-radius: 2em;
  border-top-left-radius: 2em;
  border-bottom-right-radius: 2em;
  border-bottom-left-radius: 2em;
width:100px;
height:30px;
background-color:lightblue;
}
.i{
background:url(../images/t12.jpg);
}
#s{

background-color:  #1b4f72  ;
background-width:500px;
color:white;
border-size:2 solid black;
}

@import url(http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100);

body {
  background-color: #3e94ec;
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 16px;
  font-weight: 400;
  text-rendering: optimizeLegibility;
}

div.table-title {
   display: block;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
}

.table-title h3 {
   color: #fafafa;
   font-size: 30px;
   font-weight: 400;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
}


/*** Table Styles **/

.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
  height: 320px;
  margin: auto;
  max-width: 600px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:#D5DDE5;;
  background:#1b1e24;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:23px;
  font-weight: 100;
  padding:24px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

th:first-child {
  border-top-left-radius:3px;
}
 
th:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:16px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
tr:hover td {
  background:#4E5066;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
  border-bottom: 1px solid #22262e;
}
 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#EBEBEB;
}
 
tr:nth-child(odd):hover td {
  background:#4E5066;
}

tr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
td {
  background:#FFFFFF;
  padding:20px;
  text-align:left;
  vertical-align:middle;
  font-weight:300;
  font-size:18px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

th.text-left {
  text-align: left;
}

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
}


</style>


</head>

<body id="page1">

<br>
<div class="main">
  <!--header -->
   <header>
    <div class="wrapper">
      <h1><a href="index.jap" id="buslogo">AirLines</a></h1>
      <span id="slogan">Welcome To Kumaran Travel Portals</span>
      <nav id="top_nav">
        <ul>
          
		  
<li><a href="index.jsp" class="nav1">Home</a></li>


        </ul>
      </nav>
    </div>
    <nav>
      <ul id="menu">
        <li id="#"><a href="index.jsp"><span><span>Home</span></span></a></li>
        <li><a href="bus.jsp"><span><span>Bus Booking</span></span></a></li>
        <li><a href="flight.jsp"><span><span>Flight Booking</span></span></a></li>
		        <li><a><span><span>Hotel</span></span></a></li>

        <li class="end"><a href="contacts.jsp"><span><span>Contacts</span></span></a></li>
      </ul>
    </nav>
  </header><br><br><br>
  <!-- / header -->
  <!--content -->
<div class="i">
  
  

<table class="table-fill">
<thead>
<tr>
<th class="text-left">PASSENGERS</th>
<th class="text-left">Details</th>
</tr>
</thead>
<tbody class="table-hover">
<tr>
<td class="text-left">NAME</td>
<td class="text-left"><input type="text"  id="pname"></td>
</tr>
<tr>
<td class="text-left">EMAIL</td>
<td class="text-left"><input type="text"  id="pemail"></td>
</tr>
<tr>
<td class="text-left">MOBILE NUMBER</td>
<td class="text-left" ><input type="text"  id="pno"></td>
</tr>
<tr>
<td class="text-left">AGE</td>
<td class="text-left" ><input type="text"  id="page"></td>
</tr>
<tr>
<td class="text-left">ADDRESS</td>
<td class="text-left" ><input type="text"  id="paddress"></td>
</tr>
<tr>
<td class="text-left">NO OF Passengers</td>
<td class="text-left"><input type="text"  id="noofpassenger"></td>
</tr>
</tbody>
</table>

  
  
  
  
  <center>
  <input type="submit" id="submit" value="CONFIRM">
  </center><br><br>
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
var travel=sessionStorage.getItem("travel");





var search = {};


		$('#submit').click(function() {
			
			alert("ASFASFASDF");
			
			
			var travel=sessionStorage.getItem("travel");
		
			var source=sessionStorage.getItem("source");
			
			var dtime=sessionStorage.getItem("dtime");
			
			var duration=sessionStorage.getItem("duration");
		
			var dest=sessionStorage.getItem("dest");
			
			var seats=sessionStorage.getItem("seats");
			
			var ddetail=sessionStorage.getItem("ddetail");
			
			var adetail=sessionStorage.getItem("adetail");
		
			var fare=sessionStorage.getItem("fare");
		
			var name=$('#pname').val();
			sessionStorage.setItem("pname",name);
			var mail=$('#pemail').val();
			sessionStorage.setItem("pmail",mail);
			var no=$('#pno').val();
			sessionStorage.setItem("pno",no);
			var age=$('#page').val();
			sessionStorage.setItem("page",age);
			var address=$('#paddress').val();
			sessionStorage.setItem("paddress",address);
			var nop=$('#noofpassenger').val();
			alert(nop);
			sessionStorage.setItem("pnoofpassenger",nop);
			
			
			
					search["travel"] =travel;
					
					search["dtime"] =dtime;
					search["duration"] =duration;
					search["adetail"] =adetail;
					search["source"] =source;
					search["dest"] =dest;
					search["seats"] =seats;
					search["ddetail"] =ddetail;
					search["fare"] =fare;
					search["name"] =$('#pname').val();
					search["email"] =$('#pemail').val();
					search["mobileno"] =$('#pno').val();
					search["age"] =$('#page').val();
					search["address"]=$('#paddress').val();
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
								
								var s=JSON.stringify(data);
								alert(s);
								sessionStorage.setItem("totalfare",s);
								
								window.location.href="generating1.jsp";
								}

							}
							
						});
					});
</script> 
</body>
</html>