<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<form action="student_page.jsp" method="post">
		<table>
			<tr>
				<td>&nbsp;User ID</td><td>&nbsp;:</td><td>&nbsp;<input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>&nbsp;Password</td><td>&nbsp;:</td><td>&nbsp;<input type="password" name="password"  /></td>
			</tr>
			<tr>
				<td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;<input type="submit" value="Login"/></td>
			</tr>
		</table>
	</form>
</body>
</html>