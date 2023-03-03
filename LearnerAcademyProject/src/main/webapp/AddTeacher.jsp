<%@page import="java.io.PrintWriter"%>
<%@page import="com.caltech.dao.TeacherDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.caltech.pojo.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding new teacher</title>
</head>
<body>
<%
Teacher t = new Teacher();
t.setTeachername(request.getParameter("name"));
t.setDname(request.getParameter("design"));
TeacherDAO dao = new TeacherDAO();
int ret = dao.insert(t);
PrintWriter pw = response.getWriter();
if(ret >0)
{
	pw.print("inserted successfully");
	response.sendRedirect("TeacherMain.jsp");
}
else
{
	pw.print("error");
}

%>
</body>
</html>