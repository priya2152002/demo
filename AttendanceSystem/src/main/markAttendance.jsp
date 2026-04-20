<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="AttendanceServlet" method="post">
    Student Name: <input type="text" name="student_name"/><br/>
    Date: <input type="date" name="date"/><br/>
    Status:
    <select name="status">
        <option>Present</option>
        <option>Absent</option>
    </select><br/>
    <input type="submit" value="Submit"/>
</form>

<% if(request.getParameter("success") != null){ %>
<p>Attendance Marked Successfully</p>
<% } %>

</body>
</html>