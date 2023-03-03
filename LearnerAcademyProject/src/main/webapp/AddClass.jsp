<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.caltech.pojo.*" %>
    <%@ page import="com.caltech.dao.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding new class</title>
</head>
<body>

<br>
<br>
<br>
<br>
<div align="center">
<% ClassDao dao =  new ClassDao();
 int res = dao.insert(request.getParameter("classname"));
 if(res > 0)
	 response.sendRedirect("ClassMain.jsp");
 else
	 response.sendRedirect("Index.jsp");


%>
</div>
</body>
</html>