<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="forgot" action="/hr/basic1/forgot.action" method="post">
	<table>
		<tr>
			<td>E-mail</td>
			<td><input type="text" name="email" value="rohitasharora2010@gmail.com"/></td>
		</tr>
		
		
		
		<tr>
			<td>EID</td>
			<td><input type="text" name="eid" value="e6"/></td>
		</tr>
		<tr><td>enter new password</td><td><input type="text" name="newpassword"/></td></tr>
		<tr><td>reenter new password</td><td><input type="text" name="renewpassword"/></td></tr>
		<tr>
			<td colspan="2" ><input type="submit" value="submit"/></td>
		</tr>
	</table>
</form>
</body>
</html>