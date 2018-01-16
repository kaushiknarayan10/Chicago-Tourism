<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Write Review</title>
<link rel="stylesheet" type="text/css" href="normalize.css">
<link rel="stylesheet" type="text/css" href="home.css">
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
String file = (String)session.getAttribute("file");
String place = (String)session.getAttribute("place");
session.setAttribute("place", place);
%>
<h4> <a href= <%session.getAttribute("file");%>><font color="#ffff00">Back</font></a></h4>

<br>
<br>
<br>
<form action = "Writereview" method="post">
<p>Write Review</p>

<textarea name = "review" rows = "5" cols="30">
</textarea>
<br>

<input type = "submit" name = "Submit Review" value = "Submit Review">

<%
//String place = (String)session.getAttribute("Place");
String uname = (String)session.getAttribute("username");
//session.setAttribute("place", place);
session.setAttribute("uname", uname);
%>

</form>

<br>
<br>
<br>
<br>
<br>
<br>
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