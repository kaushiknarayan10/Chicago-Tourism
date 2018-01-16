<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Field Museum of Natural History</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.866173,-87.616986),
    zoom:15,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<%
session.setAttribute("place","Field Museum of Natural History");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Museum2.jsp");
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
<h3>Field Museum of Natural History</h3>
<img src="Images/Museum2.jpg" alt="Field Museum of Natural History" style="width:500px;height:228px;" align = "left">
<p>The Field Museum was primarily an outgrowth of the World’s Columbian Exposition held in
 Chicago in 1893. The first published suggestion that a museum should be formed as a result 
 of the exposition was, in the opinion of Frederick J.V. Skiff, first Director of the Museum, 
 an article by Professor F.W. Putnam in the Chicago Tribune of May 31, 1890. 
 In that year and the following one Putnam also addressed local bodies on this subject 
 and his views were duly reported in the newspapers.
<br>
The Field Museum of Natural History is one of a kind and is one of the largest in the world.
The diverse, high quality permanent exhibitions,[7] which attract up to 2 million visitors 
annually, range from the earliest fossils to past and current cultures from around the 
world to interactive programming demonstrating today's urgent conservation needs.
<br>Many of the original exhibitions at the museum were from the World's Columbian 
Exposition of 1893.Today the museum has permanent exhibitions that include:
Nature Walk, Mammals of Asia, Mammals of Africa, Ancient Egypt, Evolving Planet, Ancient 
Americas, and the most famous of them all, Sue the Tyrannosaurus rex. 
<br>
<br>
<br>For more information, click<a href="https://www.fieldmuseum.org/" target="_blank"><font color = "#ffff00">HERE</font></a>
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