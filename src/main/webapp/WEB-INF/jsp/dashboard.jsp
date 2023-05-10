<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>hello!!!!</h1>
 ${emp}
</body>
</html> --%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<html>
<head>
<title>Dashboard</title>


<style type="text/css">

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	
	margin-top: 6px; 
	margin-bottom: 16px; 
	resize: vertical
		
}


input[type=submit] {
	background-color: #04AA6D;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

.table-wrap {
  height: 600px;
  overflow-y: auto;
  
}
table th {
    position: -webkit-sticky;
    position: sticky;
    top: 0;
}
.cnter{
    TEXT-ALIGN: -webkit-center;
}
.button{
text-align:center;

}
</style>


</head>
<body>
	
	<script>
      function displayCurrentDate() {
        var currentDateElement = document.getElementById("currentDate");
        var currentDate = new Date();
        currentDateElement.innerHTML = currentDate.toLocaleString();
      }

      // Update the current date every second
      setInterval(displayCurrentDate, 1000);
    </script>
    
	
	<% Date currentTime = new Date();
       SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");
       String formattedTime = sdf.format(currentTime);
    %>
    
    
	<p>
		Current Time: <span id="currentDate"></span>
	</p>
	
	<p>
		Last Login Time:
		<%= formattedTime %>
	</p>
		
	


	<button class="button" style="margin-left: 580px;" onclick="location.href='logout'">Logout</button>


	<div class="container">
		<button class="button">AddTask</button>
		<form method="POST" action="task">
			<label>Description</label> <input type="text" name="description"
				class="form-control" value="" placeholder="description"> <label>Attachment</label>
			<input type="text" class="form-control" name="filename"
				placeholder="Attachment"> <input type="file" id="myFile"
				name="attachment">
			<button name="submit" value="submit" type="submit"
				class="btn login_btn btn-primary">Submit</button>
		</form>
	</div>

<div class="container cnter">

	<form method="GET" action="gettask">
		<button name="submit" value="submit" type="submit"
			class="btn login_btn btn-primary">Refresh</button>
	</form>


	<div class="table-wrap">
		<table class="table">
			<thead class="header-fixed">
				<tr class="table-danger">
					<th scope="col">Description</th>
					<th scope="col">Attachment</th>
				</tr>
			</thead>
			<tbody style="background-color: white;">
				<c:forEach items="${taskList}" var="task">
					<tr>
						<td>${task.description}</td>
						<td>${task.filename}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>
