<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    <%@ page isELIgnored = "false" %>
    <%@ page import="Wipro.ShipReservationSystem.model.RouteDetails" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Routes</title>
<script type="text/javascript">
if("${response}"){
	alert("${response}");
}</script>
</head>
<style>
body {
	background-image: url("https://wallpaperaccess.com/full/1266157.jpg");
	background-size: cover;
}

.heading {
    	color: #fff;
    	letter-spacing: 1px;
    	font-size: 2.5rem;
    	margin-top: 0px;
    	margin-bottom: 40px;
    }

.container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 90vh;
	flex-direction: column;

}

table{
	border-collapse: collapse;
	
}


tr {
	text-align: left;
	
	
}

th {
	font-weight: 700;
}



th, td {
	padding: 8px;
	text-align: left;
	width: 100px;
	height: 30px;
	color: #fff;
	font-size: 1.2rem;
	font-family: 'Rubik', sans-serif;
	letter-spacing: .7px;
	border: 1px solid #000;
}


tr:hover {

background-color: coral;

}

.tag{  
   	padding: 15px;
    background-color: #de6d40;
	border:none;
	border-radius: 3px;
	font-family: 'Rubik',sans-serif;     
}

a{
	text-decoration:none;
	align-items: center;
	text-align: center;
	font-size: 1.1rem;
	color: #fff;
	letter-spacing: .7px
}


.tag:hover {
    background-color: #f07b4c;  
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
<% List<RouteDetails> routes=(List<RouteDetails>)request.getAttribute("routes"); %>
<button class="tag">
	<a href="/dashboard" >HOME</a>
</button>
<div class="container">
		<h1 class="heading">Update Routes</h1>
<table>
	<tr><td>Route Id</td>
	<td>Source</td>
	<td>Destination</td>
	<td>kms</td>
	<td>Update</td>
	<td>Delete</td>
	</tr>
	<%for(int i=0;i<routes.size();i++){ %>
		<tr>
		<td><%=routes.get(i).getRouteId() %></td>
		<td><%=routes.get(i).getSource() %></td>
		<td><%=routes.get(i).getDestination() %></td>
		<td><%=routes.get(i).getKms() %></td>
		
		<td>
			<form action="updates" method="get">
				<input name="id" value=<%=routes.get(i).getRouteId()%> type="hidden" >
				<input type="submit" value="UPDATE" style="background-color:#de6d40"/>
			</form>
		</td>
		<td>
			<form action="deletes" method="get">
				<input name="id" value=<%=routes.get(i).getRouteId()%> type="hidden" >
				<input type="submit" value="DELETE" style="background-color:#de6d40"/>
			</form>
		</td>
		</tr>
	<%} %>
</table>
</div>
</body>
</html>