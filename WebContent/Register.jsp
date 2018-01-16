<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Chicago Tourism</title>
<link rel="stylesheet" type="text/css" href="normalize.css">
<link rel="stylesheet" type="text/css" href="register.css">
</head>
<body>


<div id="header-wrapper">
		<header>
			<nav id="header-nav">
				<ul>
					<li>
							<img id="logo" alt="Tourism Logo" src="Images/Logo.png">
					</li>
                    </ul>
			</nav>
		</header>
	</div>
	
<form action="Register" method="post">
<br><br>
  <br>First Name: <br><input type="text" name="fname" ><br>
  <br>Last Name: <br><input type="text" name="lname" ><br>
  <br>User Name: <br><input type="text" name="uname" ><br>
  <br>Password: <br><input type="password" name="pwd" ><br>
  <br>Confirm Password: <br><input type="password" name="cpwd" ><br>
  
  


  <p>Gender</p>
  <input type="radio" name = "gender" value = "male"/>Male
  <input type="radio" name = "gender" value = "female"/>Female<br>
  
  <br>E-Mail ID: <br><input type="text" name="email" ><br>
  <br>
  
  <br><input type="submit" name = "submit" value = "Register"/>
  <br><br>
  <br>
  <br>
  
  
</form>

</body>
</html>