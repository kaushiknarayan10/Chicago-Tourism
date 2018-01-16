<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Museums in Chicago</title>
	<link rel="stylesheet" type="text/css" href="normalize.css">
	<link rel="stylesheet" type="text/css" href="home.css">
	<link href='http://fonts.googleapis.com/css?family=Miltonian+Tattoo' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>


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


<br>
<%
String uname = (String)session.getAttribute("username");
session.setAttribute("username", uname);
%>
<h3> <a href="Index.jsp"><font color="#ffff00">Back to Home</font></a></h3>
<ul>
<li class="service-list">
<a href="Museum1.jsp"><img src="Images/Museum1.jpg" alt="icon" width="200" height="auto" /></a>

<h3><a href=Museum1.jsp><font color="#ffff00">Adler Planetarium</font></a></h3>
</li>
</ul>

<ul>
<li class="service-list">
<a href="Museum2.jsp"><img src="Images/Museum2.jpg" alt="icon" width="200" height="150" /></a>

<h3><a href = Museum2.jsp><font color="#ffff00">Field Museum of Natural History</font></a></h3>
</li>
</ul>

<ul>
<li class="service-list">
<a href="Museum3.jsp"><img src="Images/Museum3.jpg" alt="icon" width="200" height="150" /></a>

<h3><a href=Museum3.jsp><font color="#ffff00">Museum of Contemporary Art</font></a></h3>
</li>
</ul>


<ul>
<li class="service-list">
<a href="Museum4.jsp"><img src="Images/Museum4.jpg" alt="icon" width="200" height="150" /></a>

<h3><a href=Museum4.jsp><font color="#ffff00">Peggy Notebaert Nature Museum</font></a></h3>
</li>
</ul>


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
