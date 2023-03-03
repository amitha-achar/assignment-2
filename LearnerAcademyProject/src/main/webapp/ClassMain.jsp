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
<form action="AddClass.jsp">
<table>
<tr><td>Class Name: </td><td><input type="text" name="classname"></td></tr>
<tr><td colspan="2"><input type="submit"  value="Add Class" width="Auto"/></td></tr>
</table>
</form>
<table border="1">
<tr><th>ID</th><th>Class Name</th><th>Assign Subject and teacher </th><th>Edit</th><th>Delete</th><th>Report</th></tr>
<%
ClassDao dao = new ClassDao();
List<StudentClass> list = dao.display();
if(list != null || !list.isEmpty())
{
for(StudentClass t: list)
{
%>
  <tr>
  <td> <%=t.getClassid() %></td>
  <td> <%=t.getClassname() %> </td>
  <td> <a href="AssignSubjectTeacher.jsp?id=<%=t.getClassid()%>&classname=<%=t.getClassname() %>">Assign subject and teacher</a>  </td>
  <td> <a href="Edit.jsp?id=<%=t.getClassid()%>">Edit</a></td>
  <td> <a href="delete.jsp?id=<%=t.getClassid()%>&category=class">Delete</a></td>
  <td> <a href="ViewReport.jsp?id=<%=t.getClassid()%>&classname=<%=t.getClassname()%>">View Report</a></td>
  </tr>
<%}}
%>

</table>
</div>
</body>
</html>