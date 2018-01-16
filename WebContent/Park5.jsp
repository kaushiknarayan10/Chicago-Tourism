<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Chicago Bean</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.883372,-87.621842),
    zoom:17,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<%
session.setAttribute("place","Chicago Bean");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Park5.jsp");
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
<h3>Chicago Bean</h3>
<img src="Images/Parks5.jpg" alt="Bean" style="width:500px;height:228px;" align = "left">
<p>Officially called Cloud Gate, the Chicago Bean is a public sculpture by Indian-born 
British artist Anish Kapoor, that is the centerpiece of AT&T Plaza at Millennium Park in 
the Loop community area of Chicago. Constructed between 2004 and 2006, the sculpture is 
nicknamed The Bean because of its shape. Made up of 168 stainless steel plates welded
 together, its highly polished exterior has no visible seams.
<br>
<br>
The design was inspired by liquid mercury and the sculpture's surface reflects and 
distorts the city's skyline. Visitors are able to walk around and under Cloud Gate's 12-foot 
(3.7 m) high arch. On the underside is the "omphalos" (Greek for "navel"), a concave chamber 
that warps and multiplies reflections. The Bean is popular with tourists as a photo-taking 
opportunity for its unique reflective properties.
<br>
<br>
The sculpture has been used as a backdrop in commercial films, such as The Break-Up, 
Source Code, Dhoom 3 and Transformers.
<br> 
<br>For more information, click <a href="http://www.cityofchicago.org/city/en/depts/dca/supp_info/millennium_park_-artarchitecture.html#cloud" target="_blank"><font color = "#ffff00">HERE</font></a>
for the information about the Chicago Bean at Millenium Park.

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