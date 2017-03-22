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
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.main, .tabs ul.nav a, .content, .button1, .box1, .top { behavior:url("../js/PIE.htc")}</style>
<![endif]-->
</head>

<body id="page1">
<br><br><br><br><br>
<style>
#top{
background-color:lightblue;

}

#heading{

background-color:lightblue;
height:40px;

}
h4{
background-color:black;
color:white;
}
</style>

<div class="main">
  <!--header -->
  <header>
    <div class="wrapper">
      <h1><a href="index.jsp" id="buslogo">AirLines</a></h1>
      <span id="slogan">Welcome To Kumaran Travel Portals</span>
      <nav id="top_nav">
        <ul>
          
		  
<li><a href="index.jsp" class="nav1">Home</a></li>

		            <li><a href="register.jsp" class="#">Register</a></li>

        </ul>
      </nav>
    </div>
    
    <nav>
   
       
     <h4>BOOKINGS</h4>
       
    
    </nav>
    
  </header>

  
  
  
  

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		                    <script>

		               
		                    var search = {};
		                    var obj3,obj5;
		        			var obj2,obj11;
		        			var key2,key11;
		        			var key4;
		        			var key3;
		        			var key;
		        			var key1;
		        			var obj;
		        			var obj1;
		        			var key13;
		        			var key12;
		        			var key5;
		        			
								$( document ).ready(function()  {
		        				
		        				var ob=sessionStorage.getItem("hotel");
		        				//var source=sessionStorage.getItem("source");
		        				//var dest=sessionStorage.getItem("dest");
		        				alert(ob);
		        				var obj = jQuery.parseJSON(ob);
		        				alert(obj);
		    						for ( key in obj)
		    						{
		    							//alert("key of "+key);
		    							 obj1 = obj[key];
		    							
		    							alert("this is obj1");
		    							alert(JSON.stringify(obj1));
		    							
		    							for ( key1 in obj1) 
		    							{
		    								
		    								 obj2 = obj1[key1];
		    									alert("this is obj2");
				    							alert(JSON.stringify(obj2));
		    								for( key2 in obj2)
		    									{
		    									//alert(JSON.stringify(obj2));
		    									 obj3=obj2[key2];
		    								 var table = document.getElementById("table1");
		    								    
		    								for (  key3 in obj3)
		    								{
		    									
		    									if(key3=="ch")
		    										{
		    										alert("this is hotel name "+key3);
		    											if(obj3[key3]==ch)
		    												{
		    												for( key4 in obj3)
		    													{

		    												
		    													if(key4=="checkout")
		    														{
		    														if(obj3[key4]==dest)
		    	    												{
		    														var tr = table.insertRow();
		    	    												var td = tr.insertCell();
		    	    												
		    				    								 td.innerHTML = JSON.stringify(obj3[key3]).replace('"','').replace('"','');
		    				    								 var td = tr.insertCell();
		    				    								    td.innerHTML= JSON.stringify(obj3[key4]).replace('"','').replace('"','');
		    				    								    var td = tr.insertCell();
		    				    								    td.innerHTML= JSON.stringify(obj3["airline"]).replace('"','').replace('"','');
		    				    								    var td = tr.insertCell();
		    				    								    td.innerHTML= JSON.stringify(obj3["deptime"]).replace('"','').replace('"','');
		    				    								    var td = tr.insertCell();
		    				    								    td.innerHTML= JSON.stringify(obj3["duration"]).replace('"','').replace('"','');
		    				    								    var td = tr.insertCell();
		    				    								    td.innerHTML= JSON.stringify(obj3["depdate"]).replace('"','').replace('"','');
		    				    								    var td = tr.insertCell();
		    				    								    td.innerHTML= JSON.stringify(obj3["arrdate"]).replace('"','').replace('"','');
		    				    								    
		    				    								    var td = tr.insertCell();
		    				    								    td.innerHTML= JSON.stringify(obj3["seatsavailable"]).replace('"','').replace('"','');
		    				    								    
		    				    								   obj5=$.parseJSON(JSON.stringify(obj3["fare"]));
		    				    								 
		    				    								   
		    				    									   for( key5 in obj5)
		    				    										   {
		    				    											if(key5=="grossamount")
		    				    												{
		    				    										   var td = tr.insertCell();
				    				    								    td.innerHTML= JSON.stringify(obj5[key5]).replace('"','').replace('"','');
				    				    								    var td = tr.insertCell();
				    				    								    td.innerHTML='<input type="submit" value="Book Ticket" id="'+key2+'" onclick="book('+key2+')">';
				    				    								    
				    				    								    
				    				    								    
				    				    								    
		    				    												}
		    				    											

		    					    				    					}
		    				    									  
		    				    								    	}
		    	    												
		    														}

		    													}
		    												}
		    										}	
		    									}
		    								}
		    							}
		    						}
		        			
		    					
		        			});

                			var travel;
		        			var dtime;
		        			var ddetail;
		        			var adetail;
		        			var fare;
		        			var duration;
		        			var dest;
		        			var source;
		        			var seats;
		        			var arr;
		        			var r1;
		        			var sa,dd,ad;
		        			
		        			 function book(key2)
							{
		        				//alert(JSON.stringify(key2));
			        				//alert("key2  "+key2);
		        				// alert("key2 in book "+key2);
		        				 var flight = obj2[key2];
		        				
		        				 //var flight=key2;
		        				 alert(JSON.stringify(flight));
		        				// alert("sss"+$.parseJSON(JSON.stringify(data));
		        				for(var key12 in flight)
		        					{
		        					//alert("origin inside for");
		        					if(key12=="origin")
		        						{
		        						//alert("origin");
		        						alert(JSON.stringify(flight["origin"]).replace('"',' ').replace('"',' '));
		        						source=JSON.stringify(flight["origin"]).replace('"',' ').replace('"',' ');
		        						
		        						}
		        					/* if(key12=="flightcode")
	        						{
		        						//alert("flightcode");
	        						alert(JSON.stringify(flight["flightcode"]).replace('"',' ').replace('"',' '));
	        						type=JSON.stringify(flight["flightcode"]).replace('"',' ').replace('"',' ');
	        						
	        						} */
		        					if(key12=="deptime")
	        						{
		        						//alert("deptime");
	        						alert(JSON.stringify(flight["deptime"]).replace('"',' ').replace('"',' '));
	        						dtime=JSON.stringify(flight["deptime"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="airline")
	        						{
		        						//alert("deptime");
	        						alert(JSON.stringify(flight["airline"]).replace('"',' ').replace('"',' '));
	        						travel=JSON.stringify(flight["airline"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="duration")
	        						{
	        						alert(JSON.stringify(flight["duration"]).replace('"',' ').replace('"',' '));
	        						duration=JSON.stringify(flight["duration"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="destination")
	        						{
	        						alert(JSON.stringify(flight["destination"]).replace('"',' ').replace('"',' '));
	        						dest=JSON.stringify(flight["destination"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="seatsavailable")
	        						{
	        						alert(JSON.stringify(flight["seatsavailable"]).replace('"',' ').replace('"',' '));
	        						seats=JSON.stringify(flight["seatsavailable"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="depdate")
	        						{
	        						alert(JSON.stringify(flight["depdate"]).replace('"',' ').replace('"',' '));
	        						ddetail=JSON.stringify(flight["depdate"]).replace('"',' ').replace('"',' ');
	        						
	        						}
	        						if(key12=="arrdate")
	        						{
		        						alert(JSON.stringify(flight["arrdate"]).replace('"',' ').replace('"',' '));
		        						adetail=JSON.stringify(flight["arrdate"]).replace('"',' ').replace('"',' ');
		        						
		        						}
								if(key12=="fare")
									{
								//	alert("fare");
									 obj11=$.parseJSON(JSON.stringify(obj3["fare"]));
    								 //alert("fare"  +obj11[key12]);
    								  for(  key11 in obj11)
									   {
   									  // alert("inside key11"+key11);
										if(key11=="grossamount")
											{
											alert(JSON.stringify(obj11["grossamount"]).replace('"',' ').replace('"',' '));
			        						fare=JSON.stringify(obj11["grossamount"]).replace('"',' ').replace('"',' ');


											}
									   }
									
									}
	        						
		        					}
		        				
		        				sessionStorage.setItem("travel",travel);
		        				sessionStorage.setItem("source",source);
		        				sessionStorage.setItem("dtime",dtime);
		        				sessionStorage.setItem("duration",duration);
		        				sessionStorage.setItem("dest",dest);
		        				sessionStorage.setItem("seats",seats);
		        				sessionStorage.setItem("fare",fare);
		        				sessionStorage.setItem("ddetail",ddetail);
		        				sessionStorage.setItem("adetail",adetail);
		        				
		        				window.location.href="gettingsingleflight.jsp";
		        				 

							} 
		        			
		        			
						
			
	</script> 

<table class="table table-hover table-bordered" id="table1">
			<thead style="background-color: #bce8f1;">
				<tr>
					<th>SOURCE</th>
					<th>DESTINATION</th>
				    <th>TRAVELS NAME </th>
					<th>DEPARTURE TIME</th>
					<th>DURATION</th>
					<th>DEPARTURE DETAILS</th>
					<th>ARRIVAL DETAILS</th>
					<th>NO OF SEATS</th>
					<th>FARE</th>
					<th>BOOKING</th>
					
				</tr>
			</thead>
		</table>
		
</body>
</html>