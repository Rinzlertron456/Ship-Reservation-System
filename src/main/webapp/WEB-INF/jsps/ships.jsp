<%@page import="org.springframework.context.annotation.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page isELIgnored = "false" %>
    <%@ page import="Wipro.ShipReservationSystem.model.ShipDetails" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ships</title>
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
	font-weight: 1000;
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
		
<% List<ShipDetails> ships=(List<ShipDetails>)request.getAttribute("ships"); %>
<button class="tag">
	<a href="/dashboard" >HOME</a>
</button>
	<div class="container">
		<h1 class="heading">UPDATE SHIPS</h1>
		
		
		<table>
			<tr>
				<td>S.No</td>
				<td>Ship Name</td>
				<td>Model</td>
				<td>Capacity</td>
				<td>Reservation Capacity</td>
				<td>Per Km</td>
				<td>Update</td>
				<td>Delete</td>
			</tr>
			<%for(int i=0;i<ships.size();i++){ %>
				<tr><td><%=i+1 %></td>
				<td><%=ships.get(i).getShipName() %></td>
				<td><%=ships.get(i).getModel() %></td>
				<td><%=ships.get(i).getCapacity() %></td>
				<td><%=ships.get(i).getReservationCapacity() %></td>
				<td><%=ships.get(i).getPerKM() %></td>
				<td>
					<form action="update" method="get">
						<input name="id" value=<%=ships.get(i).getShipId()%> type="hidden" >
						<input type="submit" value="UPDATE" style="background-color:#de6d40" />
					</form>
				</td>
				<td>
					<form action="delete" method="get">
						<input name="id" value=<%=ships.get(i).getShipId()%> type="hidden" >
						<input type="submit" value="DELETE" style="background-color:#de6d40"/>
					</form>
				</td>
				
				
				</tr>
			<%} %>
		</table>
	</div>
</body>
</html>