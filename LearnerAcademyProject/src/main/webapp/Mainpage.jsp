<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to the main page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {margin:0;}

.navbar {
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}

.navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background: #ddd;
  color: black;
}

.main {
  padding: 16px;
  margin-top: 30px;
  height: 1500px; /* Used in this example to enable scrolling */
}
</style>

</head>
<body>

<div class="navbar">
 <a href="ClassMain.jsp" target="iframe-main" >Class</a>
 <a href="StudentMain.jsp" target="iframe-main">Student</a>
 <a href="SubjectMain.jsp" target="iframe-main">Subject</a>
 <a href="TeacherMain.jsp" target="iframe-main">Teacher</a>
 <a href="Index.jsp">Logout</a>
</div>


<div align="center">
<iframe id="Iframe-main" name="iframe-main" height="500px" width="100%">
<%@include file="ClassMain.jsp" %>
</iframe>
</div>
</body>
</html>