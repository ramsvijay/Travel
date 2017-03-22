<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
			<input type="submit" id="submit" value="Sign in"/>
			
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
		        			
		        			$('#submit').click(function() {
		        				
		        		alert("sdfgsdfg");
		                	$.ajax({
		        				type : "GET",
		        				contenttype:"application/json",
		        				url : "http://developer.goibibo.com/api/search/?app_id=87f8c388&app_key=f0c0b6f79b52eaabc97804e4b74c20ee&format=json&source=MAA&destination=CMB&dateofdeparture=20170228&seatingclass=E&adults=1&children=0&infants=0&counter=100",
		        				cache:false,
		        				success : function(data) {
		        					alert(JSON.stringify(data));
		    						
		    						 obj = $.parseJSON(JSON.stringify(data));

		    						for (  key in obj)
		    						{
		    							//alert("key of "+key);
		    							 obj1 = obj[key];
		    							//alert(obj1);
		    							alert(JSON.stringify(obj1));
		    							for (  key1 in obj1) 
		    							{
		    								
		    								 obj2 = obj1[key1];
		    								alert("key1 ret "+key1);
		    								for( key2 in obj2)
		    									{
		    									//alert(JSON.stringify(obj2));
		    									 obj3=obj2[key2];
		    								 var table = document.getElementById("table1");
		    								    
		    								for (  key3 in obj3)
		    								{
		    									
		    									if(key3=="origin")
		    										{
		    											if(obj3[key3]=="MAA")
		    												{
		    												for( key4 in obj3)
		    													{

		    												
		    													if(key4=="destination")
		    														{
		    														if(obj3[key4]=="CMB")
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
		        						travel=JSON.stringify(flight["origin"]).replace('"',' ').replace('"',' ');
		        						
		        						}
		        					if(key12=="flightcode")
	        						{
		        						//alert("flightcode");
	        						alert(JSON.stringify(flight["flightcode"]).replace('"',' ').replace('"',' '));
	        						type=JSON.stringify(flight["flightcode"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="deptime")
	        						{
		        						//alert("deptime");
	        						alert(JSON.stringify(flight["deptime"]).replace('"',' ').replace('"',' '));
	        						dp=JSON.stringify(flight["deptime"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="duration")
	        						{
	        						alert(JSON.stringify(flight["duration"]).replace('"',' ').replace('"',' '));
	        						duration=JSON.stringify(flight["duration"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="destination")
	        						{
	        						alert(JSON.stringify(flight["destination"]).replace('"',' ').replace('"',' '));
	        						at=JSON.stringify(flight["destination"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="seatsavailable")
	        						{
	        						alert(JSON.stringify(flight["seatsavailable"]).replace('"',' ').replace('"',' '));
	        						sa=JSON.stringify(flight["seatsavailable"]).replace('"',' ').replace('"',' ');
	        						
	        						}
		        					if(key12=="depdate")
	        						{
	        						alert(JSON.stringify(flight["depdate"]).replace('"',' ').replace('"',' '));
	        						dd=JSON.stringify(flight["depdate"]).replace('"',' ').replace('"',' ');
	        						
	        						}
	        						if(key12=="arrdate")
	        						{
		        						alert(JSON.stringify(flight["arrdate"]).replace('"',' ').replace('"',' '));
		        						ad=JSON.stringify(flight["arrdate"]).replace('"',' ').replace('"',' ');
		        						
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
			        						ga=JSON.stringify(obj11["grossamount"]).replace('"',' ').replace('"',' ');


											}
									   }
									
									}
	        						
		        					}
		        				
		        				sessionStorage.setItem("travel",travel);
		        				sessionStorage.setItem("type",type);
		        				sessionStorage.setItem("dp",dp);
		        				sessionStorage.setItem("duration",duration);
		        				sessionStorage.setItem("at",at);
		        				sessionStorage.setItem("sa",sa);
		        				sessionStorage.setItem("dd",dd);
		        				sessionStorage.setItem("ad",ad);
		        				sessionStorage.setItem("ga",ga);
		        				
		        				window.location.href="FlightBook.jsp";
		        				 

							} 
		        			
		        			
						
			
	</script> 
<table class="table table-hover table-bordered" id="table1">
			<thead style="background-color: #bce8f1;">
				<tr>
					<th>Origin</th>
					<th>Destination</th>
				    <th>Flight Name</th>
					<th>Depart Time</th>
					<th>Duration</th>
					<th>Departure Date</th>
					<th>Arrival Date</th>
					<th>Seats Available</th>
					<th>Fair</th>
					
					<th>Book Ticket</th>
					
					
				</tr>
			</thead>
		</table>
		
	
	
</body>

</html>