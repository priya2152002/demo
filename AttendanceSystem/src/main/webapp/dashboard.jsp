<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String role = (String) session.getAttribute("role");
%>

<h2>Welcome <%= session.getAttribute("user") %></h2>

<% if(role.equals("admin") || role.equals("staff")) { %>
    <a href="markAttendance.jsp">Mark Attendance</a><br/>
<% } %>

<a href="viewAttendance.jsp">View Attendance</a>

</body>
</html>