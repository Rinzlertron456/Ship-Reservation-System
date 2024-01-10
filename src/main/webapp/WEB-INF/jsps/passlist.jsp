<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<!DOCTYPE html>

<html>

<head>
<style>


body {
	background-image: url("https://wallpaperaccess.com/full/1266157.jpg");
	background-size: cover;
	font-family: 'Rubik', sans-serif;
}</style>


<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>

<style type="text/css">

.search{

padding-top: 200px; 

}

label {
        margin-top: 10px;
        color: #fff;
         margin-top: 10px;
         letter-spacing: .7px;
         font-size: 3rem;
    }
    
    input[type="text"] {
        width: 15%;
        height: 4rem;
        padding: 5px;
        margin-top: 5px;
        border: 1px solid #fff;
        border-radius: 3px;
       /*  background-color: #555; */
        color: white;
        background-color: transparent;
      
    }
    ::placeholder { 
  color: white;
  opacity: 3; 
  font-size: :2rem;
}
   
input[type="submit"] {
        /* display: block; */
       width: 19rem;
        height: 3.5rem;
       /*  background-color: #777; */
        color: black;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        margin-top: 30px;
        background-color: #de6d40;
        border: 1px solid #fff;
        font-size: 2rem;
       	letter-spacing: .7px

    }
    
    input[type="submit"]:hover {

      background-color: #f07b4c;  
    }
    
    select{
    	width: 19rem;
        height: 3.5rem;
       /*  background-color: #777; */
        color: white;
        border: none;
        border-radius: 3px;
        cursor: pointer;
        margin-top: 30px;
        border: 1px solid #fff;
        font-size: 2rem;
       	letter-spacing: .7px;
       	background-color: transparent;
    }
</style>

</head>

<body>
<%

response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");


if(session.getAttribute("name")==null)

{

response.sendRedirect("/");

}

%>
<div class= search align="center">

<form action="/passengerdetails">

  <label for="shipName" >SHIP -></label>

  <select name="shipName" id="shipName">

	<option value="Titanic">Titanic</option>

	<option value="Black Pearl">Black Pearl</option>
	<option value="Pegasus">Pegasus</option>

</select>

 

  <label for="date">DATE -></label>

  <input type="text" id="date" name="date" placeholder="yyyy-mm-dd" >


  <br><br>

  <input type="submit" value="SEARCH">

</form>

</div>

</body>

</html>