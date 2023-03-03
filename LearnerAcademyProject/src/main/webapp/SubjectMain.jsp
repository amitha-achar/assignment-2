<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.caltech.pojo.*" %>
    <%@ page import="com.caltech.dao.*" %>
    <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Learner Academy - Subjects</title>
</head>
<body>
<p>
<p>
<p>
<br>
<br>
<div align="center">
<form action="AddSubject.jsp">
<table>
<tr><td>Subject Name: </td><td><input type="text" name="subjectname"></td></tr>
<tr><td colspan="2"><input type="submit"  value="Add Subject" width="Auto"/></td></tr>
</table>
</form>
<table border="1">
<tr><th>ID</th><th>Subject Name</th><th>Edit</th><th>Delete</th></tr>
<%
SubjectDAO dao = new SubjectDAO();
List<Subject> list = dao.display();
if(list!=null && !list.isEmpty())
	for(Subject s:list)
	{
%>
<tr><td><%=s.getSubjectid() %><td><%=s.getSubjectName() %></td><td><a href="edit.jsp?id=<%=s.getSubjectid()%>&category=subject">Edit</a></td><td><a href="delete.jsp?id=<%=s.getSubjectid()%>&category=subject">Delete</a></td></tr>
<%} %>
</table>

</div>
</body>
</html>