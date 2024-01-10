<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Schedule</title>
</head>
<style>

    body {
        font-family: 'Rubik', sans-serif;
        margin: 0;
        padding: 0;
        background-image: url("https://wallpaperaccess.com/full/1266157.jpg");
		background-size: cover;
			
    }
    .container {
    	display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
		
    }
    
    .heading {
    	color: #fff;
    	letter-spacing: 1px;
    	font-size: 2.5rem;
    	margin-top: 0px;
    	margin-bottom: 40px;
    }
    
    form {
        /* margin: 20px auto */;
        width: 300px; 
    }

    label {
        display: block;
        margin-top: 10px;
        color: #fff;
         margin-top: 10px;
         letter-spacing: .7px
    }

    input[type="text"] {
        width: 100%;
        padding: 5px;
        margin-top: 5px;
        border: 1px solid #fff;
        border-radius: 3px;
       /*  background-color: #555; */
        color: white;
        background-color: transparent;
        height: 2.2rem;
    }


    input[type="submit"] {
        /* display: block; */
       width: 18.8rem;
        height: 2.5rem;
       /*  background-color: #777; */
        color: black;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        margin-top: 30px;
        background-color: #de6d40;
        border: 1px solid #fff;
        font-size: 1.2rem;
       	letter-spacing: .7px

    }


    input[type="submit"]:hover {

      background-color: #f07b4c;  
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
<button class="tag">
	<a href="/dashboard" >HOME</a>
</button>
	<div class="container">
		<h1 class="heading">Add New Schedule</h1>
		<form:form modelAttribute="schedules" action="/addschedule" method="post">
		<label>Schedule Id:</label>
		<form:input type="text" path="scheduleId"/><br>
		<form:errors path="scheduleId"></form:errors>
		<label>Ship Id:</label>
		<form:input type="text" path="shipId"/><br>
		<form:errors path="shipId"></form:errors>
		<label>Route Id:</label>
		<form:input type="text" path="routeId"/><br>
		<form:errors path="routeId"></form:errors>
		<label>Date:</label>
		<form:input type="text" path="date"/><br>
		<form:errors path="date"></form:errors>
		<label>Time:</label>
		<form:input type="text" path="time"/><br>
		<form:errors path="time"></form:errors>
		<label>Seat Availability:</label>
		<form:input type="text" path="seatAvailability"/><br>
		<form:errors path="seatAvailability"></form:errors>
		<input type="submit" value="ADD" />
	</form:form>
	</div>
</body>
</html>