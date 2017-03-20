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
welcome,your applicant id is <c:property value="#session.aid"/> <br/>
welcome,your applicant id is <c:property value="#session.appli.aid"/><br/>

<table align="center">
<tr><td>view current vacancy </td><td><c:a href="/hr/applicant/viewcurrentvacancy.action">click</c:a></td></tr>
<tr><td>view vacancy applied</td><td><c:a href="/hr/applicant/viewvapplied.action">click</c:a></td></tr>
<tr><td>Edit your info</td><td><a href="EditApplicant.jsp">click</a></td></tr>
<tr><td>give test</td><td><c:a href="/hr/applicant/getvacancy.action">click</c:a></td></tr>
<tr><td>view result </td><td><c:a href="/hr/applicant/.action">click</c:a></td></tr>

</table>
</body>
</html>