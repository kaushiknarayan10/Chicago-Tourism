<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Chicago Theatre</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.885391,-87.627505),
    zoom:17,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<%
session.setAttribute("place","Chicago Theatre");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Theatre3.jsp");
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

<h4> <a href="Theatres.jsp"><font color="#ffff00">Back to Theatres</font></a></h4>
<h3>Chicago Theatre</h3>
<img src="Images/Theatre3.jpg" alt="Chicago Theatre" style="width:500px;height:268px;" align = "left">
<p>The Chicago Theatre, originally known as the Balaban and Katz Chicago Theatre, was built in 1921.
The Chicago Theatre was the flagship for the Balaban and Katz (B&K) group of theaters
 run by A. J. Balaban, his brother Barney Balaban and partner Sam Katz. Along with the 
 other B&K theaters, from 1925 to 1945 the Chicago Theatre was a dominant movie theater 
 enterprise.[6] Currently, Madison Square Garden, Inc. owns and operates the Chicago Theatre 
 as a performing arts venue for stage plays, magic shows, comedy, speeches, and popular
  music concerts.
<br>
The building was added to the National Register of Historic Places June 6, 1979, and was 
listed as a Chicago Landmark January 28, 1983.The distinctive Chicago Theatre marquee, 
"an unofficial emblem of the city", appears frequently in film, television, artwork, and 
photography.
<br>
<br>
<br>Click <a href="http://www.thechicagotheatre.com/" target="_blank"><font color = "#ffff00">HERE</font></a>
for any and all upcoming events and other details.
<br>
<br>

<br>

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