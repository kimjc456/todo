<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<%
	Statement stmt = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/computer_db?characterEncoding=utf8&serverTimezone=UTC", "root", "1234");
	String item = request.getParameter("todo-item");
	String sql = "insert into todo(item) values('" + item + "')";  
	stmt = conn.createStatement();
	stmt.executeUpdate(sql);
	response.sendRedirect("todo.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	insert <%= item %>!!
</body>
</html>