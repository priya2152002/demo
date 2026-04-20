<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*, dao.DBConnection" %>

<table border="1">
<tr>
    <th>Name</th>
    <th>Date</th>
    <th>Status</th>
</tr>

<%
Connection con = DBConnection.getConnection();
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("SELECT * FROM attendance");

while(rs.next()) {
%>
<tr>
    <td><%= rs.getString("student_name") %></td>
    <td><%= rs.getString("date") %></td>
    <td><%= rs.getString("status") %></td>
</tr>

</table>
</body>
</html>