<%@page import="java.io.PrintWriter"%>
<%@ page import="com.caltech.controller.LoginController"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<% 
LoginController lc = new LoginController();
PrintWriter pw =  response.getWriter();
boolean valid = lc.isValidUser(request.getParameter("user"),request.getParameter("pwd"));
pw.print(valid);
if(valid == true)
{
	response.sendRedirect("Mainpage.jsp");
}
else
{
	pw.print("Invalid User. Try again!");
	response.sendRedirect("Index.jsp");
}
%>
</body>
</html>