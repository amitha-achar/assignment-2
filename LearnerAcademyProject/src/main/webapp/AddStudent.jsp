<%@page import="com.caltech.dao.ClassDao"%>
<%@page import="java.util.*"%>
<%@page import="com.caltech.pojo.StudentClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add new student</title>
</head>
<body>
<div align="center">
<p>
<p>
<p>
<br>
<br>
<h1>Adding new student</h1>
<form action="NewStudent.jsp">
<table>
 
<tr><td>Student First Name:</td><td><input type="text" name="stufname"></td></tr>
<tr><td>Student Last Name:</td><td><input type="text" name="stulname"></td></tr>
<tr><td>Student Phone Number:</td><td><input type="number" name="stuphone"></td></tr>
<tr><td>Student Address</td><td><input type="text" name="stuaddress"></td></tr>
<tr><td>Student DOB::</td><td><input type="date" name="studob"></td></tr>
<tr><td>Student Class:</td>
<td><select name="stuclass" required>
<%
ClassDao dao =  new ClassDao();
List<StudentClass> list =   dao.display();
if(list != null)
	for(StudentClass stu:list)
	{
%>

<option  value =<%=stu.getClassid() %>><%= stu.getClassname() %></option>
<%} %>
</select>
</td></tr>

<tr><td><input type="submit" value="Add new Student"></td></tr>
<tr></tr>
</table>
</form>
</div>
</body>
</html>