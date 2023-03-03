<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.caltech.dao.ClassDao" %>
<%@ page import="com.caltech.dao.StudentDAO" %>
<%@ page import="java.util.List" %>  
<%@ page import="com.caltech.pojo.Report" %>
<%@ page import="com.caltech.pojo.Student" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learner Academy - Display Reports</title>
</head>
<body>
<p>
<p>
<p>
<br>
<br>
<div align="center">
<h1>View Teacher and subjects of <%=request.getParameter("classname") %></h1>
<table border=1>
<tr><th>Class name</th><th>Subject</th><th> Teacher</th></tr>
<%

ClassDao cdao = new ClassDao();
List<Report> res =   cdao.getReport1(Integer.parseInt( request.getParameter("id")));
for(Report r: res)
{
%><tr><td><%=r.getClassname() %></td><td><%=r.getDname() %></td><td><%=r.getTeachername() %></td></tr>
<%} %>
</table>
<h1>View all students of <%=request.getParameter("classname") %></h1>
<table border=1>
<tr><th>Class name</th><th>Student First Name</th><th>Student Last Name</th><tr>
<%
StudentDAO sdao = new StudentDAO();
List<Student> res1 = sdao.getReport(Integer.parseInt(request.getParameter("id")));
for(Student s:res1){
%>
<tr><td><%=request.getParameter("classname") %></td><td><%=s.getFirstname() %></td><td><%=s.getLastname() %></td></tr>
<%} %>
</table>
</div>
</body>
</html>