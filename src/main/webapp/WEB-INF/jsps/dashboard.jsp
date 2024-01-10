<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dashboard</title>
</head>
<style>
/* Navbar container */
body {
	font-family: 'Rubik', sans-serif;
	background-image: url("https://wallpaperaccess.com/full/1266157.jpg");
	background-size: cover;
}

.heading{
display: flex;
justify-content: center;
color: #fff;
font-size: 3rem;
margin-top: 3rem;

}

.navbar {
/* background-color: #333; */
overflow: hidden;
display: flex;
justify-content: space-between;
}

/* Navbar links */
.link {
float: left;
color: #f2f2f2;
text-align: center;
padding: 14px 16px;
text-decoration: none;
font-size: 1.1rem;
font-family: 'Rubik', sans-serif;
letter-spacing: .7px;
}

/* Change the color of navbar links on hover */
.link:hover {
background-color: #ddd;
color: black;
}

/* Style the unordered list (ul) and list items (li) */
.navbar ul {
 margin: 0;
padding: 0; 
list-style: none;
}

.navbar li {
display: inline-block;
}

span {
	
	background-color: transparent;
	border: none;
	padding: 15px;
	
}

.btn{

	text-decoration: none;
	font-size: 1rem;
	text-transform: uppercase;
	color: #fff;
	padding: 15px;
	font-family: 'Rubik', sans-serif;
  letter-spacing: .7px;
}

.btn:hover {
	color: black;
	background-color: #ddd;
}

</style>

<body> 
<%

response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");


if(session.getAttribute("name")==null)

{

response.sendRedirect("/");

}

%>
<%--  <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);

  if(session.getAttribute("name")==null)
      response.sendRedirect("home");

  %>  --%>
	<div class="navbar">
		<ul>
			<li>
				<a href="/passlist" class="link">Passengers Details</a>
			</li>
			<li>
				<a href="/shipform" class="link">Add Ships</a>
			</li>
			<li>
				<a href="/scheduleform" class="link">Add Schedules</a>
			</li>
			<li>
				<a href="/routeform" class="link">Add Routes</a>
			</li>
			<li>
				<a href="/ships" class="link">U/D Ships</a>
			</li>
			<li>
				<a href="/schedules" class="link">U/D Schedules</a>
			</li>
			<li>
				<a href="/routes" class="link" >U/D Routes</a>
			</li>
		</ul>
		<span>
			<a href="/logout" class="btn">Log Out</a>
		</span>
		
	</div>
	<h1 class="heading">Flying Dutchman Needs You</h1>
</body>
</html>