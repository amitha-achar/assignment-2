<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.caltech.pojo.StudentClass"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.caltech.dao.StudentDAO" %>
<%@ page import="java.util.*" %>
<%@ page import="com.caltech.pojo.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert new student</title>
</head>
<body>
<%
StudentDAO dao = new StudentDAO();
Student st = new Student();
st.setFirstname(request.getParameter("stufname"));
st.setLastname(request.getParameter("stulname"));
st.setAddress(request.getParameter("stuaddress"));
st.setStuphone(Integer.parseInt(request.getParameter("stuphone")));
String pdate=request.getParameter("studob");
//convert string into a java date [yyyy-MM-dd]-mysql db date format
SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-MM-dd");
Date date=dateFormat.parse(pdate);
st.setDob(date);

StudentClass stc = new StudentClass();
stc.setClassid(Integer.parseInt(request.getParameter("stuclass")));
st.setStuclass(stc);
int res = dao.insert(st);
if(res>0)
	response.sendRedirect("StudentMain.jsp");
else
	response.sendRedirect("Index.jsp");
%>
</body>
</html>