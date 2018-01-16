<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Millenium Park, Chicago</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.883372,-87.621842),
    zoom:15,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<%
session.setAttribute("place","Millenium Park, Chicago");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Park2.jsp");
%>

</head>
<body>

	<div id="header-wrapper">
		<header>
			<nav id="header-nav">
				<ul>
					<li>
						<a href="Index.jsp">
							<img id="logo" alt="Tourism Logo" src="Images/Logo.png">
						</a>
					</li>
					<li class="nav-item">
						<a href="About.html">About Us</a>
					</li>
					<li class="nav-item">
						<a href="contact.html">Contact Us</a>
					</li>
					<li class = "nav-item">
						<a href="Usersettings">Account Settings</a>
					</li>
					<li class = "nav-item">
						<a href="Login.jsp">Logout</a>
					</li>
                    </ul>
			</nav>
		</header>
	</div>

<h4> <a href="Parks.jsp"><font color="#ffff00">Back to Parks and Other Attractions</font></a></h4>
<h3>Millenium Park</h3>
<img src="Images/Parks2.jpg" alt="Millenium Park" style="width:500px;height:228px;" align = "left">
<p>Millennium Park is a public park located in the Loop community area of Chicago and 
originally intended to celebrate the second millennium. It is a prominent civic center 
near the city's Lake Michigan shoreline that covers a 24.5-acre (99,000 m2) section of 
northwestern Grant Park. The park, which is bounded by Michigan Avenue, Randolph Street, 
Columbus Drive and East Monroe Drive, features a variety of public art. As of 2009, 
Millennium Park trailed only Navy Pier as a Chicago tourist attraction. In 2015, the park 
became the location of the city's annual Christmas tree lighting.
<br>
<br>
Millennium Park is a portion of the 319-acre (1.3 km2) Grant Park, known as the 
"front lawn" of downtown Chicago,[9] and has four major artistic highlights: the 
Jay Pritzker Pavilion, Cloud Gate, the Crown Fountain, and the Lurie Garden. 
Millennium Park is successful as a public art venue in part due to the grand scale of 
each piece and the open spaces for display.
<br>
<br>
 A showcase for postmodern architecture, it 
also features the McCormick Tribune Ice Skating Rink, the BP Pedestrian Bridge, the 
Joan W. and Irving B. Harris Theater for Music and Dance, Wrigley Square, the McDonald's 
Cycle Center, the Exelon Pavilions, the AT&T Plaza, the Boeing Galleries, the Chase Promenade,
 and the Nichols Bridgeway.Millennium Park is considered one of the largest green roofs in the
  world, having been constructed on top of a railroad yard and large parking garages.
<br>
<br>
<br>For a full list of events at Millenium Park, click <a href="http://www.cityofchicago.org/city/en/depts/dca/supp_info/millennium_park.html" target="_blank"><font color = "#ffff00">HERE</font></a>
for the official website.

<br>
<br>
<br>
<br>

<form action = "Writereview.jsp" method = "post">
<input type = "submit" name = "submit" value = "Write Review"/>
</form>
<br>
<form action = "Readreview" method = "post">
<input type = "submit" name = "submit" value = "Read Review"/>
</form>
<br>
<br>


		<div id="googleMap" style="width:500px;height:300px;" align="right"></div>
	<br>
	<br>
	<br>
		
	<div id="footer-wrapper">
		<footer>
			<nav>
				<ul>
					<li>
						<a href="Index.jsp">Home</a>
					</li>
					<li>
						<a href="About.html">About Us</a>
					</li>
					<li>
						<a href="contact.html">Contact Us</a>
					</li>
				</ul>
			</nav>
			<div id="footer-info">
				© 1996 Chicago Tourism. All rights reserved<br>
				Stuart Building, Illinois Institute of Technology, IL 60616<br>
				262-309-2235<br>
				312-555-3000
			</div>
		</footer>
	</div>
</body>
</html>