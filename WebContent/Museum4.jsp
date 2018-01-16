<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Peggy Notebaert Nature Museum</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
<script src="http://maps.googleapis.com/maps/api/js"></script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(41.926785,-87.635185),
    zoom:15,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>

<%
session.setAttribute("place","Peggy Notebaert Nature Museum");
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
session.setAttribute("file","Museum4.jsp");
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
<h3>Peggy Notebaert Nature Museum</h3>
<img src="Images/Museum4.jpg" alt="Peggy Notebaert Nature Museum" style="width:500px;height:228px;" align = "left">
<p>Founded in 1857 to give scientists and nature aficionados a place to study and 
share the specimens they collected, the Chicago Academy of Sciences developed a
 national and international reputation for its leadership in conservation, its collection 
 and citizen science. Dubbed the first Museum in the West, the Academy's collection has
  expanded to 390,000 artifacts and specimens, making it the definitive collection of our 
  region's natural history and a valuable resource for researchers. Ongoing research, 
  restoration and conservation initiatives directly benefit local ecology. Artifacts from
   the collection are featured throughout the Nature Museum, the public face of the Academy.
<br>
The original series of long-term exhibitions and botanic recreations around the building – 
including Butterfly Haven, City Science house, Water Lab and Wilderness Walk habitat exhibits –
 were developed by a team of Academy staff, led by Paul G. Heltne, Kevin Coffee and
  Douglas Taron, and designed by Lee H. Skolnick Design + Architecture Partnership with 
  Carol Naughton Associates.
<br>
<br>
The museum's exhibits today include displays about the ecological history of the Illinois 
region, a live butterfly house, and a green home demonstration. The butterfly house 
features more than 200 species of native and exotic butterflies. One of the museum's ongoing 
scientific efforts is the study, care, and breeding of native butterflies for species 
population support in the Chicago area. The museum also offers more than 100 educational
 programs in the natural sciences for adults and children.
<br>
<br>
<br>For more information, click<a href="http://www.naturemuseum.org/" target="_blank"><font color = "#ffff00">HERE</font></a>
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