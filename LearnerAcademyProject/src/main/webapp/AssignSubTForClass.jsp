<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.caltech.pojo.StudentClass" %>
<%@ page import="com.caltech.dao.ClassDao" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
ClassDao cs = new ClassDao();

int ret = cs.setteacherSubject(request.getParameter("id"),request.getParameter("teacher"),request.getParameter("subject"));
if(ret >0)
	response.sendRedirect("ClassMain.jsp");
else
	response.sendRedirect("Index.jsp");
%>
</body>
</html>