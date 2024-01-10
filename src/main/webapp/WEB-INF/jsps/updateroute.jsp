<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Route</title>
</head>
<style>

    body {
        margin: 0;
        padding: 0;
        background-image: url("https://wallpaperaccess.com/full/1266157.jpg");
		background-size: cover;
	    
    }
    .container {
    	display: flex;
		justify-content: center;
		align-items: center;
		height: 90vh;
		flex-direction: column;
		
    }
    
    .heading {
    	color: #fff;
    	letter-spacing: 1px;
    	font-size: 2rem;
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
        height: 1.5rem;
    }


    input[type="submit"] {
        /* display: block; */
       width: 19.5rem;
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

</style>

<body>
<%

response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");


if(session.getAttribute("name")==null)

{

response.sendRedirect("/");

}

%>
<div class="container">
		<h1 class="heading">UPDATE ROUTE DETAILS</h1>
<form:form modelAttribute="routes" action="/updateroute" method="post">
		<label>RouteId:</label>
		<form:input type="text" path="routeId"/><br>
		<form:errors path="routeId"></form:errors>
		<label>Source:</label>
		<form:input type="text" path="source"/><br>
		<form:errors path="source"></form:errors>
		<label>Destination:</label>
		<form:input type="text" path="destination"/><br>
		<form:errors path="destination"></form:errors>
		<label>Kms:</label>
		<form:input type="text" path="kms"/><br>
		<form:errors path="kms"></form:errors>
		<input type="submit" value="UPDATE" />
	</form:form>
	</div>
</body>
</html>