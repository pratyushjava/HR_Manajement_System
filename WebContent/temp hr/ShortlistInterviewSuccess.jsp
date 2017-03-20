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

<table border="1">
<tr>
<td><b>Applicant Vacancy Id</b></td>
<td><b>Applicant First Name</b></td>
<td><b>Applicant Middle Name</b></td>
<td><b>Applicant Last Name</b></td>
<td><b>Score</b></td>
<td><b>Total marks</b></td>

</tr>

<c:iterator id="itera" value="#session.shortlistint">

<tr>
<td align="center"><c:property value="avid"  /></td>
<td align="center"><c:property value="afname"/></td>
<td align="center"><c:property value="amname"/></td>
<td align="center"><c:property value="alname"/></td>
<td align="center"><c:property value="wscore"/></td>
<td align="center"><c:property value="wtotalmarks"/></td>

</c:iterator>


</table>
<br/>
<form method="post" action="/hr/basic1/saveshortlistint.action">
<table><tr><td><c:submit value="Submit"/></td></tr></table>

</form>
</body>
</html>