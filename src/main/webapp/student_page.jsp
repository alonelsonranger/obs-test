<%@page import="com.obs.util.Calculator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.net.HttpRetryException"%>
<%@page import="com.obs.model.Student"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Date"%>
<%@page import="com.obs.service.StudentService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Page</title>
</head>
<body>
	<% StudentService studentService = new StudentService(); %>
	<% String username = request.getParameter("username"); %>
	<% String password = request.getParameter("password"); %>
	<% if(password.equals("admin") && password.equals("admin")){
		out.print("Welcome "+ username);
		studentService.init();
		Map<String, List<Student>> map = studentService.findAll();
		%>
		<table border="1">
		<tr><td>&nbsp;Department</td><td>&nbsp;Student ID</td><td>&nbsp;Mark</td><td>&nbsp;Pass</td></tr>
		<%
		for(Map.Entry<String, List<Student>>entry : map.entrySet()){
			String key = entry.getKey();
			List<Student> value = entry.getValue();
			int i = 1;
			double percentage = Calculator.calculatePercentage(key, value);
			for(Student student : value){
				if(i == 1){
					out.print("<tr><td rowspan=\""+ value.size() +"\">&nbsp;"+ key +"</td><td>&nbsp;<a href=\"#\" onclick=\"window.alert('"+ student.getStudentName() +"')\">"+ student.getStudentID() +"</a></td><td>&nbsp;"+ student.getMark() +"</td><td rowspan=\""+ value.size() +"\">&nbsp;"+ percentage +"</td></tr>");
				}else{
					out.print("<tr><td>&nbsp;<a href=\"#\" onclick=\"window.alert('"+ student.getStudentName() +"')\">"+ student.getStudentID() +"</a></td><td>&nbsp;"+ student.getMark() +"</td></tr>");
				}
				i++;
			}
		}
		%>
		</table>
		<%
	}else{
		 String site = new String("http://localhost:8080/obs");
         response.setStatus(response.SC_MOVED_TEMPORARILY);
         response.setHeader("location", site);
	} %>
	

</body>
</html>