<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Bottlefork</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.890428,-87.630757),
    zoom:17,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<%
session.setAttribute("place","Bottlefork");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Rest4.jsp");
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

<h4> <a href="restaurant.html"><font color="#ffff00">Back to Restaurants</font></a></h4>
<h3>Bottlefork</h3>
<img src="Images/Rest4.jpg" alt="Bottlefork" style="width:500px;height:228px;" align = "left">
<p>Named one of “Chicago’s 10 Hottest Restaurants” by Zagat, Bottlefork is a 
comfortably stylish New American bar and kitchen showcasing locally sourced and globally 
inspired cuisine & cocktails. From Rockit Ranch Productions partners Billy Dec, Brad Young & 
Arturo Gomez, and former Four Seasons Executive Chef Kevin Hickey, Bottlefork is located
 in the heart of River North.
<br>
<br>
he Bottlefork experience is exciting yet approachable, with an inviting 
atmosphere that is perfect for specialty cocktails, wine, innovative small plates, or a more
 formal meal. Guests are able to enjoy the action of watching their food and drink being 
 prepared behind the 40 foot long Kitchen/Bar counter; like a dinner party congregating in 
 the kitchen of a great foodie friend’s house. According to USA Today, “Bottlefork’s easy 
 atmosphere and refreshing food & drink menu make this one of the best new restaurants the 
 neighborhood has seen in a long time.”
<br>
<br>Bottlefork is open 7 days a week for lunch, brunch, dinner and late night cocktails.
<br>

For more information, click <a href="http://bottlefork.com/" target="_blank"><font color = "#ffff00">HERE</font></a>
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