<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="/hr/interviewer/update1.action" name="a" method="post">
<table>
<c:iterator id="itera" value="#session.is">
<tr><td><c:textfield name="itime" label="Edit Time Of Interview" /></td></tr>
<tr><td><c:submit value="submit"/></td></tr>
</c:iterator>
</table>
</form>
</body>
</html>