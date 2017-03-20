<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/hr/test/vacancy.action" method="post">
<table>
<tr><td><c:select list="#session['list']" name="vid" label="Select Vacancy Id"/></td></tr>
<tr><td></td><td><input type="submit" value="submit"/></td></tr>
</table>
</form>
</body>
</html>