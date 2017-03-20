<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="/struts-tags" prefix="c" %>
<s:if test="#session['eid'] == null">
<% response.sendRedirect("../hr/index1.html");%>
</s:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<h1>Welcome,<c:property value="#session.eid"/>
department-<c:property value="#session.did"/>
</h1>
<body>
</body>
</html>