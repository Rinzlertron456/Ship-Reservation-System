<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    <%@ page isELIgnored = "false" %>
    <%@ page import="Wipro.ShipReservationSystem.model.ShipSchedule" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Schedules</title>
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
    	font-size: 2.2rem;
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
	font-size: 1.1rem;
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
<% List<ShipSchedule> schedules=(List<ShipSchedule>)request.getAttribute("schedules"); %>
<button class="tag">
	<a href="/dashboard" >HOME</a>
</button>
<div class="container">
<table>
		<h1 class="heading">UPDATE SCHEDULES</h1>
	<tr><td>Schedule Id</td>
	<td>Ship Id</td>
	<td>Route Id</td>
	<td>Date</td>
	<td>Time</td>
	<td>Seat Availability</td>
	<td>Update</td>
	<td>Delete</td></tr>
	<%for(int i=0;i<schedules.size();i++){ %>
		<tr>
		<td><%=schedules.get(i).getScheduleId() %></td>
		<td><%=schedules.get(i).getShipId() %></td>
		<td><%=schedules.get(i).getRouteId() %></td>
		<td><%=schedules.get(i).getDate() %></td>
		<td><%=schedules.get(i).getTime() %></td>
		<td><%=schedules.get(i).getSeatAvailability() %></td>
		<td>
			<form action="updateSchedule" method="get">
				<input name="id" value=<%=schedules.get(i).getScheduleId()%> type="hidden" >
				<input type="submit" value="UPDATE" style="background-color:#de6d40"/>
			</form>
		</td>
		<td>
			<form action="deleteSchedule" method="get">
				<input name="id" value=<%=schedules.get(i).getScheduleId()%> type="hidden" >
				<input type="submit" value="DELETE" style="background-color:#de6d40"/>
			</form>
		</td>
		</tr>
	<%} %>
</table>
</div>
</body>
</html>