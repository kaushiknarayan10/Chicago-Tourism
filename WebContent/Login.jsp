<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Chicago Tourism</title>
<link rel="stylesheet" type="text/css" href="normalize.css">
<link rel="stylesheet" type="text/css" href="home.css">
</head>
<body BACKGROUND = "Images/chicago.jpg" >


<div id="header-wrapper">
		<header>
			<nav id="header-nav">
				<ul>
					<li>
							<img id="logo" alt="Tourism Logo" src="Images/Logo.png">
					</li>
					<li class="nav-item">
						<a href="About.html">About Us</a>
					</li>
					<li class="nav-item">
						<a href="contact.html">Contact Us</a>
					</li>
                    </ul>
			</nav>
		</header>
	</div>
<%
session.invalidate();
%>	
<form action="Loginservlet" method="post">
<br><br>
  <br>UserName: <br><input type="text" name="uname"><br>
  Password: <br><input type="password" name="pwd"><br>
  <input type="submit" name = "Submit" value="Login"/>
  <br><br>
  <br>
<a href="Register.jsp"><font color="#ffff00">New User? Register here.</font></a>
<br>
<br>
<br>
<br>
<br>
<br>
</form>
</body>
</html>