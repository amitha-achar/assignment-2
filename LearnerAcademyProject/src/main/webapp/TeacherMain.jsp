<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.caltech.dao.TeacherDAO" %>
<%@ page import="java.util.*" %>
<%@ page import="com.caltech.pojo.Teacher" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher Maintenance Page</title>
</head>
<body>
<br>
<br>
<br>
<br>
<div align="center">
<form action="AddTeacher.jsp" >
<table>
<tr><td>Name : </td><td><input type="text" name="name"/></td></tr>
<tr><td>Designation: </td><td><input type="text" name="design"/></td></tr>
<tr><td><input type="submit" value="Add teacher"></td></tr>
</table>
</form>
<table border="1">
<tr>
<th>ID</th><th>Teacher Name</th><th>Teacher Designation</th><th> Action</th>
</tr>
<tr>
<%
TeacherDAO dao = new TeacherDAO();
List<Teacher> list = dao.display();
if(list != null && !list.isEmpty())
{
for(Teacher t: list)
{
%>
  <tr>
  <td> <%=t.getTeacherid() %></td>
  <td> <%=t.getTeachername() %> </td>
  <td> <%=t.getDname() %> </td>
  <td> <a href="editTeacher.jsp?id=<%=t.getTeacherid()%>&name=<%=t.getTeachername()%>&design=<%=t.getDname()%>" >Edit</a></td><td><a href="delete.jsp?id=<%=t.getTeacherid()%>&category=teacher">Delete</a></td>
  </tr>
<%}}
%>
</table>
</div>
</body>
</html>