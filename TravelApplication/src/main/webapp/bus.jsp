<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
			<input type="button" id="submit" value="Sign in"/>
			
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		                    <script>

		               
		                 
		                  var search=new Array;
		        			
		        			var obj3;
		        			var obj2;
		        			var key2;
		        			var key3;
		        			$('#submit').click(function() {
		        				
		        		
		                	$.ajax({
		        				type : "GET",
		        				contenttype:"application/json",
		        				url : "http://developer.goibibo.com/api/bus/search/?app_id=87f8c388&app_key=f0c0b6f79b52eaabc97804e4b74c20ee&format=json&source=chennai&destination=salem&dateofdeparture=20170225",
		        				cache:false,
		        				success : function(data) {
		        					
		        					alert(JSON.stringify(data));
		    						
		    						var obj = $.parseJSON(JSON.stringify(data));
		    					
		    						for ( var key in obj)
		    						{
		    							var obj1 = obj[key];
		    							

		    							for ( var key1 in obj1) 
		    							{
		    								obj2 = obj1[key1];
		    								
		    								for (key2 in obj2)
		    								{
		    								
		    									obj3=obj2[key2];
		    									
		    									var table = document.getElementById("table1");
		    								    var tr = table.insertRow();
		    									for(key3 in obj3)
		    										{
		    										
		    										if(key3=="TravelsName")
		    										{
		    									var td = tr.insertCell();
		    								    td.innerHTML= JSON.stringify(obj3["TravelsName"]).replace('"',' ').replace('"',' ');
		    								   //JSON.stringify(obj3["TravelsName"]).replace('"',' ').replace('"',' ');
		    										}
		    										if(key3=="BusType")
		    										{
		    								    var td = tr.insertCell();
		    								    td.innerHTML= JSON.stringify(obj3["BusType"]).replace('"',' ').replace('"',' ');
		    								   //JSON.stringify(obj3["BusType"]).replace('"',' ').replace('"',' ');
		    										}
		    										if(key3=="DepartureTime")
		    										{
		    								    var td = tr.insertCell();
		    								    td.innerHTML= JSON.stringify(obj3["DepartureTime"]).replace('"',' ').replace('"',' ');
		    								     //JSON.stringify(obj3["DepartureTime"]).replace('"',' ').replace('"',' ');
		    										}
		    										if(key3=="duration")
		    										{
		    										
		    								    var td = tr.insertCell();
		    								    td.innerHTML= JSON.stringify(obj3["duration"]).replace('"',' ').replace('"',' ');
		    								    //JSON.stringify(obj3["duration"]).replace('"',' ').replace('"',' ');
		    								    
		    										}
		    										if(key3=="ArrivalTime")
		    										{
		    								    var td = tr.insertCell();
		    								    td.innerHTML= JSON.stringify(obj3["ArrivalTime"]).replace('"',' ').replace('"',' ');
		    								    var td = tr.insertCell();
			    								 td.innerHTML='<input type="button" value="book ticket" id="'+key2+'" onclick="book('+key2+')">';
			    									}
		    										
		    									
		    										
		    										
		    							if(key3=="BPPrims")
		    									{
		    								   
		    								    
		    								    var ob1=$.parseJSON(JSON.stringify(obj3["BPPrims"]));
		    								   
		    								   for(var key7 in ob1)
		    									   {
		    									   if(key7=="list")
		    										   {
		    										   var ob2=$.parseJSON(JSON.stringify(ob1["list"]));
		    										  
		    										   for(var key8 in ob2)
		    										   {
		    											   var ob3=ob2[key8]; 
		    											   for(var key9 in ob3)
		    												   {
		    												   if(key9=="BPTime")
		    													   {
		    												   			//var td = tr.insertCell();
				    								   					///td.innerHTML= JSON.stringify(ob3[key9]).replace('"','').replace('"','');
		    													   }
		    												   if(key9=="BPLocation")
	    													   		{
	    												   				//var td = tr.insertCell();
			    								   						//td.innerHTML= JSON.stringify(ob3[key9]).replace('"','').replace('"','');
	    													   		}
		    												   }
		    										   }
		    										   }
		    						
		    									   }
		    								    
		    									} 
		    											    										
		    										if(key3=="DPPrims")
		    										{
		    											var ob4=$.parseJSON(JSON.stringify(obj3["DPPrims"]));
		 		    								   // alert(JSON.stringify(ob1));
		 		    								   for(var key10 in ob4)
		 		    									   {
		 		    									   if(key10=="list")
		 		    										   {
		 		    										   var ob5=$.parseJSON(JSON.stringify(ob4["list"]));
		 		    										  
		 		    										   for(var key8 in ob5)
		 		    										   {
		 		    											   var ob6=ob5[key8]; 
		 		    											   for(var key11 in ob6)
		 		    												 
		 		    												   {
		 		    												  
		 		    												   if(key11=="DPTime")
		 		    													   {
		 		    												   			//var td = tr.insertCell();
		 				    								   					//td.innerHTML= JSON.stringify(ob6[key11]).replace('"','').replace('"','');
		 				    								   				//JSON.stringify(obj3["DPTime"]).replace('"',' ').replace('"',' ');
		 				    								   				
		 				    								   				 	
		 				    								   			
		 				    								   		
		 				    								   			
		 		    													   }
		 		    												   if(key11=="DPLocation")
		 	    													   		{
		 	    												   				//var td = tr.insertCell();
		 			    								   						//td.innerHTML= JSON.stringify(ob6[key11]).replace('"','').replace('"','');
		 			    								   					 //JSON.stringify(obj3["DPLocation"]).replace('"',' ').replace('"',' ');
		 			    								   					
		 			    								   					
		 			    								   					
		 	    													   		}
		 		    												   }
		 		    										   }
		 		    										   }
		 		    						
		 		    									   }
		    										}
		    										 
		    										if(key3=="RouteSeatTypeDetail")
		    										{
		    								 
		    											var obj4=$.parseJSON(JSON.stringify(obj3["RouteSeatTypeDetail"]));
		    											 for(var key4 in obj4)
		    												 {
		    												 if(key4=="list")
		    													 {
		    													
		    				    								    var x=$.parseJSON(JSON.stringify(obj4["list"]));
		    				    								    
		    				    								   for(var key5 in x)
		    				    									   {
		    				    									   var obj5=x[key5];
		    				    									   
		    				    									   for(var key6 in obj5)
		    				    										   {
		    				    										   if(key6=="SellFare")
		    				    											   {
		    				    									   			var td = tr.insertCell();
			    				    								   			 td.innerHTML= JSON.stringify(obj5[key6]).replace('"','').replace('"','');
			    				    								   			 //JSON.stringify(obj3["SellFare"]).replace('"',' ').replace('"',' ');
			    				    								   			 
		    				    											   }
		    				    										   if(key6=="SeatsAvailable")
	    				    											   {
	    				    									   				var td = tr.insertCell();
		    				    								    			td.innerHTML= JSON.stringify(obj5[key6]).replace('"','').replace('"','');
		    				    								    			 //JSON.stringify(obj3["SeatsAvailable"]).replace('"',' ').replace('"',' ');
		    				    								    			 
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
		        			});
		        			var travel;
		        			var type;
		        			var dp;
		        			var duration;
		        			var at;
		        			var sl;
		        			var seats;
		        			
		        			 function book(key2)
							{
		        				 alert(key2);
		        				 //alert(JSON.stringify(obj2[key2]));
		        				 var bus=obj2[key2];
		        				 //alert(JSON.stringify(bus));
		        				for(var key12 in bus)
		        					{
		        					if(key12=="TravelsName")
		        						{
		        						alert(JSON.stringify(bus["TravelsName"]).replace('"',' ').replace('"',' '));
		        						travel=JSON.stringify(bus["TravelsName"]).replace('"',' ').replace('"',' ');
		        						
		        						}
		        					if(key12=="BusType")
	        						{
	        						alert(JSON.stringify(bus["BusType"]).replace('"',' ').replace('"',' '));
	        						type=JSON.stringify(bus["BusType"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="DepartureTime")
	        						{
	        						alert(JSON.stringify(bus["DepartureTime"]).replace('"',' ').replace('"',' '));
	        						dp=JSON.stringify(bus["DepartureTime"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="duration")
	        						{
	        						alert(JSON.stringify(bus["duration"]).replace('"',' ').replace('"',' '));
	        						duration=JSON.stringify(bus["duration"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="ArrivalTime")
	        						{
	        						alert(JSON.stringify(bus["ArrivalTime"]).replace('"',' ').replace('"',' '));
	        						at=JSON.stringify(bus["ArrivalTime"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="RouteSeatTypeDetail")
									{
							 
										var r1=$.parseJSON(JSON.stringify(bus["RouteSeatTypeDetail"]));
										
										 for(var key13 in r1)
											 {
											 if(key13=="list")
												 {
												
			    								    var r2=$.parseJSON(JSON.stringify(r1["list"]));
			    								   
			    								   for(var key14 in r2)
			    									   {
			    									   var r3=r2[key14];
			    									   for(var key15 in r3)
			    										   {
			    										   if(key15=="SellFare")
			    											   {
			    											   alert(JSON.stringify(r3["SellFare"]).replace('"',' ').replace('"',' '));
			    				        						sl=JSON.stringify(r3["SellFare"]).replace('"',' ').replace('"',' ');
				    								   			 
			    											   }
			    										   if(key15=="SeatsAvailable")
		    											   {
			    											   alert(JSON.stringify(r3["SeatsAvailable"]).replace('"',' ').replace('"',' '));
			    				        						seats=JSON.stringify(r3["SeatsAvailable"]).replace('"',' ').replace('"',' ');
			    								    			 
		    											   }
			    										   }
			    									   }
			    								    
												 }
											 }
							   		
							   			
									}
		        					}
		        				
		        				sessionStorage.setItem("travel",travel);
		        				sessionStorage.setItem("type",type);
		        				sessionStorage.setItem("dp",dp);
		        				sessionStorage.setItem("duration",duration);
		        				sessionStorage.setItem("at",at);
		        				sessionStorage.setItem("sl",sl);
		        				sessionStorage.setItem("seats",seats);
		        					window.location.href="book.jsp";
		        				 

							} 
		        			
		        			
						
			
	</script> 
	
<table class="table table-hover table-bordered" id="table1">
			<thead style="background-color: #bce8f1;">
				<tr>
					<th>localized_display_name</th>
					<th>distance</th>
				    <th>display_name</th>
					<th>product_id</th>
					<th>high_estimate</th>
					<th>Surge-Multiplier</th>
					<th>Minimum</th>
					<th>low-estimate</th>
					<th>Time Duration</th>
					<th>Estimate</th>
					<th>currency code</th>
				</tr>
			</thead>
		</table>
		
	
	
</body>

</html>