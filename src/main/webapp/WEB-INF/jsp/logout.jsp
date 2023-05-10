<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html> --%>


<%-- <%@ page language="java" %>
<%@ page session="false" %> --%>
<%@ page session="true" %>


<%
    // Invalidate the session
    session.invalidate();
    
    // Redirect the user to the login page (replace "login.jsp" with the appropriate URL or endpoint)
    response.sendRedirect("login");
%>
