<%@page import="com.caltech.dao.StudentDAO"%>
<%@page import="com.caltech.dao.ClassDao"%>
<%@page import="com.caltech.dao.SubjectDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.caltech.dao.TeacherDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
System.out.println(request.getParameter("category"));
switch(request.getParameter("category"))
{
case "teacher" : TeacherDAO tdao = new TeacherDAO();	 				 
				 int res = tdao.deleteTeacher(Integer.parseInt(request.getParameter("id")));
				 System.out.println("hello, i am done deleting");
				 response.sendRedirect("TeacherMain.jsp");
				 break;
case "subject" : SubjectDAO sdao = new SubjectDAO();	 				 
					int res1 = sdao.deleteSubject(Integer.parseInt(request.getParameter("id")));
					System.out.println("hello, i am done deleting");
					if(res1>0)response.sendRedirect("SubjectMain.jsp");
					else
						response.sendRedirect("Index.jsp");
					break;
case "class":   ClassDao cdao = new ClassDao();
				int res2 = cdao.deleteClass(Integer.parseInt(request.getParameter("id")));
				System.out.println("hello, i am done deleting");
				if(res2 >0)response.sendRedirect("ClassMain.jsp");
				else
					response.sendRedirect("Index.jsp");
				
				break;
case "student" : StudentDAO stdao = new StudentDAO();
				int res3 = stdao.deleteStudent(Integer.parseInt(request.getParameter("id")));
				System.out.println("hello, i am done deleting");
				if(res3 > 0 )response.sendRedirect("StudentMain.jsp");
				else
					response.sendRedirect("Index.jsp");				
				break;
 default:        System.out.println("Wrong seelection");
 				 break;
}
%>

</body>
</html>