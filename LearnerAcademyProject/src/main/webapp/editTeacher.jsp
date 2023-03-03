<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Teacher</title>
</head>
<body>

<div align="center">
<p>
<p>
<p>
<br>
<br>
<h1>Updating teacher name <%= request.getParameter("name") %>  </h1>
<form action="edit.jsp" method="get">
<table>
<tr><td>Name:</td><td width="300"><input type="text" width="250" name="name" value="<%= request.getParameter("name") %>"/></td></tr>
<tr><td>Designation:</td><td><input type="text" name="design" value="<%= request.getParameter("design") %>"/></td></tr>
<tr><td><input type="hidden" value="<%=request.getParameter("id") %>" name="id"/></td></tr>
<tr><td><input type="hidden" value="teacher" name="category" /></td></tr>
<tr><td colspan="2"><input type="submit" name="Update" value="Update teacher details"/></td></tr>
</table>
</form>
<%

%>
</div>
</body>
</html>