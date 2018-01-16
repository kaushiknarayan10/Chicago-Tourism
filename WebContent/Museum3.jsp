<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Museum of Contemporary Art Chicago</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.897212,-87.621071),
    zoom:15,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<%
session.setAttribute("place","Museum of Contemporary Art Chicago");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Museum3.jsp");
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
						<a href="Users.jsp">Account Settings</a>
					</li>
					<li class = "nav-item">
						<a href="Login.jsp">Logout</a>
					</li>
                    </ul>
			</nav>
		</header>
	</div>


<h4> <a href="Museum.jsp"><font color="#ffff00">Back to Museums</font></a></h4>
<h3>Museum of Contemporary Art Chicago</h3>
<img src="Images/Museum3.jpg" alt="Museum of Contemporary Art Chicago" style="width:500px;height:228px;" align = "left">
<p>In 1964, a group of collectors, art dealers, artists, art critics, and 
architects united under the belief that the city of Chicago deserved a 
great contemporary art museum that was dedicated to exploring the new. The institution’s 
founders originally conceived of the museum as a Kunsthalle, or a noncollecting “art hall” 
that organized and hosted temporary exhibitions of new and experimental artists.
<br>
The museum's collection is composed of thousands of objects of Post-World War II visual art. 
The museum is run gallery-style, with individually curated exhibitions throughout the year.
 Each exhibition may be composed of temporary loans, pieces from their permanent collection,
  or a combination of the two.
<br>
The MCA has exhibited the works of famous artists which include <a href="https://en.wikipedia.org/wiki/Enrico_Baj" target="_blank"><font color = "#ffff00">Enrico Baj</font></a>
, <a href="https://en.wikipedia.org/wiki/Lee_Bontecou" target="_blank"><font color = "#ffff00">Lee Bontecou</font></a>
and  <a href="https://en.wikipedia.org/wiki/Magdalena_Abakanowicz" target="_blank"><font color = "#ffff00">Magdalena Abakanowicz</font></a>
. In 2006, the MCA was the only American museum to host <a href="https://en.wikipedia.org/wiki/Bruce_Mau" target="_blank"><font color = "#ffff00">Bruce Mau</font></a>'s Massive Change exhibit, which concerned the social, 
economic, and political effects of design. 
<br>
<br>
<br>For more information, click<a href="https://mcachicago.org/Home" target="_blank"><font color = "#ffff00">HERE</font></a>
for the official website.


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

</p>


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