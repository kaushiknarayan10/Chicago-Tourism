<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Oriental Theatre</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.884700,-87.628685),
    zoom:17,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<%
session.setAttribute("place","Oriental Theatre");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Theatre2.jsp");
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
<h3>Oriental Theatre</h3>
<img src="Images/Theatre2.jpg" alt="Oriental Theatre" style="width:500px;height:228px;" align = "left">
<p>Broadway In Chicago was created in July 2000 and, over the past 14 years, has grown 
to be one of the largest commercial touring homes in the country. A Nederlander Company,
 Broadway In Chicago lights up the Chicago Theater District entertaining well over 1.7 
 million people annually in five theatres. Broadway In Chicago presents a full range of 
 entertainment, including musicals and plays, on the stages of five of the finest theatres
  in Chicago’s Loop including The PrivateBank Theatre, Oriental Theatre, Cadillac Palace 
  Theatre, the Auditorium Theatre of Roosevelt University and just off the Magnificent Mile,
   the Broadway Playhouse at Water Tower Place.
<br>
This place is for the lovers of Broadway.
<br>
<br>
<br>Click <a href="http://www.chicago-theater.com/theaters/oriental-theatre/theater.php" target="_blank"><font color = "#ffff00">HERE</font></a>
for show timings and other details.
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