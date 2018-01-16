<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Grant Park, Chicago</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.872789,-87.618923),
    zoom:15,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>


<%
session.setAttribute("place","Grant Park, Chicago");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Park1.jsp");
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
<h3>Grant Park</h3>
<img src="Images/Parks1.JPG" alt="Grant Park" style="width:500px;height:228px;" align = "left">
<p>Grant Park is a large urban park (319 acres or 1.29 km²) in the Loop community area of Chicago. 
Located in Chicago's central business district, the park's most notable features are
 Millennium Park, Buckingham Fountain, the Art Institute of Chicago and the Museum Campus.
  Originally known as Lake Park, and dating from the city's founding, it was renamed in 1901 
  to honor Ulysses S. Grant. The park's area has been expanded several times through land 
  reclamation. The park contains performance venues, gardens, art work, sporting, and 
  harbor facilities. It hosts public gatherings, and several large annual events.
The park is often called "Chicago's front yard".
<br>
<br>
When it was landscaped in the early 20th century in a formal beaux arts style, tall 
American Elms were planted in allées and rectangular patterns. There are several gardens and 
flower displays throughout the park. Millennium Park houses the Lurie Garden, known for its 
display of tall grass flowers, particularly lavender, and a decorative post-modern water 
stream. To the east, across the BP Pedestrian Bridge, Daley Plaza holds a formal garden. 
<br>
<br>
<br>For a full list of events at Grant Park, click <a href="http://www.chicagoparkdistrict.com/parks/grant-park/" target="_blank"><font color = "#ffff00">HERE</font></a>
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