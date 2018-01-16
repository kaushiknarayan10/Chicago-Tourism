<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Sky Deck</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.878885,-87.635878),
    zoom:17,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<%
session.setAttribute("place","Sky Deck");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Park3.jsp");
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
<h3>Sky Deck</h3>
<img src="Images/Parks3.jpg" alt="Sky Deck" style="width:500px;height:228px;" align = "left">
<p4>Located in the Willis Tower, the Skydeck opened on June 22, 1974. 
Located on the 103rd floor of the tower, it is 1,353 feet (412 m) high and is one of the most
 famous tourist attractions in Chicago. Tourists can experience how the building sways on a 
 windy day. They can see far over the plains of Illinois and across Lake Michigan to Indiana, 
 Michigan and Wisconsin on a clear day. Elevators take tourists to the top in about 
 60 seconds, and allow tourists to feel the pressure change as they rise up. The 
 Skydeck competes with the John Hancock Center's observation floor a mile and a half away,
  which is 323 feet (98 m) lower. Some 1.3 million tourists visit the Skydeck annually. 
  A second Skydeck on the 99th floor is also used if the 103rd floor is closed. 
  The tourist entrance can be found on the south side of the building along Jackson Boulevard.
<br>
<br>
	In January 2009, Willis Tower's owners began a major renovation of the Skydeck, including
 the installation of retractable glass balconies, which can be extended approximately 4 
 feet (1.2 m) from the facade of the 103rd floor, overlooking South Wacker Drive. 
 The all-glass boxes, informally dubbed "The Ledge", allow visitors to look through the glass
  floor to the street 1,353 feet (412 m) below. The boxes, which can bear 5 short tons 
  (4.5 metric tons) of weight, opened to the public on July 2, 2009.
<br>
<br>
<br>Plan your visit <a href="http://theskydeck.com/" target="_blank"><font color = "#ffff00">HERE</font></a>
at the Sky Deck's official website.

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