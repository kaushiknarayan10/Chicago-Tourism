<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Navy Pier</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.891703,-87.602643),
    zoom:17,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<%
session.setAttribute("place","Navy Pier");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Park4.jsp");
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
<h3>Navy Pier</h3>
<img src="Images/Parks4.jpg" alt="Navy Pier" style="width:500px;height:228px;" align = "left">
<p>Navy Pier is a 3,300-foot-long (1,010 m) pier on the Chicago shoreline of Lake Michigan.
 It is located in the Streeterville neighborhood of the Near North Side community area. 
 The pier was built in 1916 at a cost of $4.5 million. Today, the pier is one of the most 
 visited attractions in the entire Midwestern United States and is Chicago's number one 
 tourist attraction.
<br>
<br>
Navy Pier attractions include sightseeing tours from companies such as Seadog Ventures, 
Shoreline Sightseeing cruises and Water Taxi service, and the Tall Ship Windy. There are also 
dinner cruises by Entertainment Cruises, on their ships the Spirit of Chicago, The Odyssey II,
 and the Mystic Blue. The Pier has fireworks on Wednesday and Saturday nights during the 
 summer and Saturday nights during the fall. The popular Chicago Flower and Garden Show is 
 held at the Pier, as are many other fairs and expositions throughout the year. 
 There are also seasonal festivals for Halloween and Christmas. The Chicago Children's 
 Museum is a part of Navy Pier, with many different exhibits and activities for both 
 children and adults to enjoy while visiting the museum. The Driehaus Gallery of Stained 
 Glass is a free display of Louis Comfort Tiffany stained glass windows. The Pier also
  has an IMAX theater. The famous Chicago Shakespeare Theater performs at the pier.
<br>
<br>
<br>For more information, click <a href="https://navypier.com/" target="_blank"><font color = "#ffff00">HERE</font></a>
for the Navy Pier's official website.

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