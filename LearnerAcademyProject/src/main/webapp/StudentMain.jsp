<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.caltech.dao.StudentDAO" %>
<%@ page import="java.util.*" %>
<%@ page import="com.caltech.pojo.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>

<p>
<p>
<br>
<br>
<div align="center">
<form action="AddStudent.jsp">
<input type="submit"  value="Add Student" width="Auto"/>
</form>
<table border="1">
<tr><th>ID</th><th>First Name</th><th>Last Name</th><th>Address</th><th>Phone No</th><th>Edit</th><th>Delete</th></tr>
<%
StudentDAO dao = new StudentDAO();
List<Student> list = dao.display();
if(list != null && !list.isEmpty())
{
for(Student t: list)
{
%>
  <tr>
  <td> <%=t.getStuid() %></td>
  <td> <%=t.getFirstname() %> </td>
  <td> <%=t.getLastname() %> </td>
  <td> <%=t.getAddress() %> </td>
  <td> <%=t.getStuphone()%> </td>
  <td> <a href="Edit.jsp?id=<%=t.getStuid()%>">Edit</a></td>
  <td> <a href="delete.jsp?id=<%=t.getStuid()%>&category=student">Delete</a></td>
  </tr>
<%}}
%>

</table>

</body>
</html>