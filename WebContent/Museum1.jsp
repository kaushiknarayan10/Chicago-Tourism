<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Adler Planeterium</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.866382,-87.606676),
    zoom:15,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<%
session.setAttribute("place","Adler Planeterium");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Museum1.jsp");
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

<h4> <a href="Museum.jsp"><font color="#ffff00">Back to Museums</font></a></h4>
<br>
<h3>Adler Planeterium</h3>
<img src="Images/Museum1.jpg" alt="Adler Planeterium" style="width:500px;height:228px;" align = "left">
<p>The Adler Planetarium, the first planetarium in the western hemisphere, opened to the 
public on May 12, 1930. Chicago business leader Max Adler contributed funds for the museum’s
 construction, a Zeiss projector, and the Mensing Collection of astronomical instruments.
<br>
The Adler Planetarium’s Astronomy department and Webster Institute for the History of 
Astronomy conduct and publish research for both the scientific community as well as the 
general public.
<br>Adler astronomers possess rich and diverse expertise in many areas of astronomy as
 well as other closely related science fields. Their studies include planetary geology, 
 star formation, gamma-rays, and telescope observing.
<br>
<br>
<br>For more information, click<a href="http://www.adlerplanetarium.org/" target="_blank"><font color = "#ffff00">HERE</font></a>
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