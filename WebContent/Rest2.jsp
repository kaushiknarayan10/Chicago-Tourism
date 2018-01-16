<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Giordanos</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.864582,-87.624558),
    zoom:17,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<%
session.setAttribute("place","Giordanos");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Rest2.jsp");
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

<h4> <a href="Restaurants.jsp"><font color="#ffff00">Back to Restaurants</font></a></h4>
<h3>Giordanos</h3>
<img src="Images/Rest2.jpg" alt="Giordanos" style="width:500px;height:228px;" align = "left">
<p>Giordanos first began in a small northern Italian town near Torino, Italy. 
Soon, the exquisite deep dish pizza became famous throught Italy and it became a 
 sacred tradition in the Giordano family and a legend in the town of Torino. Years later, 
 Italian immigrants Efren and Joseph Boglio moved to Chicago to start their own pizza
  business. The brothers introduced this recipe for stuffed pizza. In 1974, on 
  Chicago’s historic south side, Efren and Joseph opened the first Giordano’s in the world.
   Over the next 40 years and counting, millions of happy and loyal fans as well as hundreds
    of critics call Giordano’s the city’s “best” stuffed pizza.
<br>
<br>
Today there are a total of about 40+ stores in the Chicago area, and some located elsewhere.
 There are three locations which are franchisee, located in Florida. They plan to open new 
 locations in Carmel, Andersonville, Navy Pier, Vernon Hills and Matteson along with the existing 
 Giordanos at Minnesota and Indiana
<br>
<br>
<br>
<br>For more information and to order online, click <a href="https://giordanos.com/locations/south-loop/" target="_blank"><font color = "#ffff00">HERE</font></a>
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