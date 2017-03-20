<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="/struts-tags" prefix="s" %>
<s:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</s:if>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href="../hr/welcomehr.jsp"><=BACK</a>
<form name="" action="/hr/basic1/searchapplicant.action" method="post">
	<tr><td>Enter The Applicant ID </td><td><input type="text" name="aid" /></td></tr>
	<tr><td><input type="submit" value="SUBMIT"></td></tr>
</form>

</body>
</html>