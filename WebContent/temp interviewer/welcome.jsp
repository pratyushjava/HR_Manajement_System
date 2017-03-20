<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="c" %>
    
<c:if test="#session['eid'] == null">
<% response.sendRedirect("../hr/index1.html");%>
</c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table align="center">
<tr><td>view schedules</td><td><c:a href="/hr/interviewer/view.action">click</c:a></td></tr>
<tr><td>Enter Interview Result</td><td><c:a href="/hr/interviewer/interviewresult.action">click</c:a></td></tr>
</table>

</body>
</html>