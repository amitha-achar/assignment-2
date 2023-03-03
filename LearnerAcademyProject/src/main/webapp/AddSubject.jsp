<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.caltech.dao.SubjectDAO"%>
<%@page import="java.util.*"%>
<%@page import="com.caltech.pojo.Subject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding subject</title>
</head>
<body>
<br>
<br>
<br>
<br>
<div align="center">
<% SubjectDAO dao =  new SubjectDAO();
 int res = dao.insert(request.getParameter("subjectname"));
 if(res > 0)
	 response.sendRedirect("SubjectMain.jsp");
 else
	 response.sendRedirect("Index.jsp");


%>
</div>
</body>
</html>