
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
    /* Add some basic styling to the buttons */
     .button {
      padding: 10px 20px;
      background-color: #4CAF50;
      color: white;
      border: none;
      cursor: pointer;
      font-size: 16px;
     
    }
    .button:hover {
      background-color: #45a049;
    } 
    .container{
    text-align:center;
    }
  </style>
</head>
<body>
<div class="container">
	<h3 style="color:red">${msg}</h3>
	
  <h1 class="text-center">Welcome to the Home Page</h1>
  
  <button class="button" onclick="location.href='login'">Login</button>
  <button class="button" onclick="location.href='signup'">Sign Up</button>
  </div>
</body>
</html>
