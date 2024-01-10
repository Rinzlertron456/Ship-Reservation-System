<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <%@ page import="java.util.List" %>
    <%@ page isELIgnored = "false" %>
    <%@ page import="Wipro.ShipReservationSystem.model.PassengerDetails" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Passengers Details</title>

</head>
<style>
body {
	background-image: url("https://wallpaperaccess.com/full/1266157.jpg");
	background-size: cover;
	font-family: 'Rubik', sans-serif;
}



.container {

	display: flex;
	justify-content: center;
	align-items: center;
	height: 90vh;
	flex-direction: column;

}


table {
  border-collapse: collapse;
  width: 100%;

}

tr {
	text-align: left;
	
	
}

th {
	font-weight: 700;
}


.heading {
    	color: #fff;
    	letter-spacing: 1px;
    	font-size: 2.5rem;
    	margin-top: 0px;
    	margin-bottom: 40px;
    }


th, td {

  padding: 8px;

  text-align: left;


width: 200px;
height: 30px;

color: #fff;
font-size: 1.3rem;
  font-family: 'Rubik', sans-serif;
 /*  font-weight: 700; */
  letter-spacing: .7px;
    border-bottom: 1px solid #ddd;

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
<%List<PassengerDetails> passengers=(List<PassengerDetails>)request.getAttribute("passengerdetails"); %>
<button class="tag">
	<a href="/dashboard">HOME</a>
</button>
<div class="container">
		<h1 class="heading">Passengers Details</h1>
        <table border="1" cellpadding="5">

		<tr>

		<th>Passenger Name</th>

		<th>Age</th>
		
		<th>Ship Name</th>
		
		<th>Source</th>

		<th>Destination</th>

		<th>Date</th>

	<tr>

	<%for(int i=0;i<passengers.size();i++){%>

	<tr>

		<td><%=passengers.get(i).getPassengerName()%></td>

		<td><%=passengers.get(i).getPassengerAge() %></td>

		<td><%=passengers.get(i).getShipName()%></td>

		<td><%=passengers.get(i).getSource()%></td>
		
		<td><%=passengers.get(i).getDestination()%></td>
		
		<td><%=passengers.get(i).getDate()%></td>

	</tr>

	<%} %>

			</table>

</div>

</body>

</html>