<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.caltech.pojo.*"%>
<%@page import="com.caltech.dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

switch(request.getParameter("category"))
{
case "teacher" : TeacherDAO tdao = new TeacherDAO();
				 Teacher t = new Teacher();
				 t.setTeachername(request.getParameter("name"));
				 t.setDname(request.getParameter("design"));
				 t.setTeacherid(Integer.parseInt(request.getParameter("id")));
				 int res = tdao.edit(t);
				 System.out.println("hello, i am done editing");
				 response.sendRedirect("TeacherMain.jsp");
				 break;
case "subject" : SubjectDAO sdao = new SubjectDAO();
				 Subject s= new Subject();
				 s.setSubjectid(Integer.parseInt(request.getParameter("id")));
				 s.setSubjectName(request.getParameter("name"));
				 sdao.edit(s);
				 System.out.println("hello, i am done editing");
				 response.sendRedirect("SubjectMain.jsp");
				 break;
 default:        System.out.println("Wrong seelection");
 				 break;
}
%>
</body>
</html>