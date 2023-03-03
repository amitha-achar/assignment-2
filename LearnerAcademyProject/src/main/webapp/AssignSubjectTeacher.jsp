<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.caltech.dao.*" %>
<%@ page import="com.caltech.pojo.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assign Subject and Teacher to class</title>
</head>
<body>
<p>
<p>
<p>
<br>
<br>
<div align="center">
<h1>Assigning Subject and teacher to class <%= request.getParameter("classname") %></h1>
<form action="AssignSubTForClass.jsp">
<table>
<tr>
<td>Subjects:</td><td><select name="subject">
<%
SubjectDAO dao = new SubjectDAO();
List<Subject> list =   dao.display();
if(list!= null && !list.isEmpty())
	for(Subject s: list)
	{
%>
<option value=<%=s.getSubjectid() %>><%=s.getSubjectName() %></option>
<%} %>
</select>
</tr>
<tr>
<td> Teachers:</td><td><select name="teacher">
<%
TeacherDAO dao1 = new TeacherDAO();
List<Teacher> list1 =   dao1.display();
if(list1!= null || !list1.isEmpty())
for(Teacher t: list1)
	{
%>

<option value="<%= t.getTeacherid() %>"><%= t.getTeachername() %></option>
<%} %>
</select>

</tr>
<tr><td colspan="1"><input type="submit" value="Assign this subject and teacher"/></td></tr>
<tr><td><input type="hidden" name="id" value=<%=request.getParameter("id") %>></td>
</table>
</form>
</div>
</body>
</html>