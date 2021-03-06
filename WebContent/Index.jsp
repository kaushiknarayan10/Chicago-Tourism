<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Chicago Tourism</title>
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
	
<%
String uname = (String)session.getAttribute("username");
out.write("Welcome "+uname);
session.setAttribute("username",uname);
%>



<ul>
<li class="service-list">
<a href="Museum.jsp"><img src="Images/Museum1.jpg" alt="icon" width="200" height="auto" /></a>

<h3><a href=Museum.jsp><font color = "#ffff00">Museums of Chicago</font></a></h3>
</li>
</ul>

<ul>
<li class="service-list">
<a href="Theatres.jsp"><img src="Images/Theatre1.jpg" alt="icon" width="200" height="150" /></a>

<h3><a href = Theatres.jsp><font color = "#ffff00">Theatres in Chicago</font></a></h3>
</li>
</ul>

<ul>
<li class="service-list">
<a href="Restaurants.jsp"><img src="Images/Rest1.jpg" alt="icon" width="200" height="150" /></a>

<h3><a href=Restaurants.jsp><font color = "#ffff00">Restaurants in Chicago</font></a></h3>
</li>
</ul>


<ul>
<li class="service-list">
<a href="Parks.jsp"><img src="Images/Parks1.JPG" alt="icon" width="200" height="150" /></a>

<h3><a href=Parks.jsp><font color = "#ffff00">Parks and Other Attractions in Chicago</font></a></h3>
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