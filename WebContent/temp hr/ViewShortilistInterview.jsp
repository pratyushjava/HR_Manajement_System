<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
<tr>
<td><b>Interview Result Id</b></td>
<td><b>Vacancy Id</b></td>
<td><b>Applicant Id</b></td>
<td><b>Applicant First Name</b></td>
<td><b>Applicant Middle Name</b></td>
<td><b>Applicant Last Name</b></td>
<td><b>Interview Status</b></td>
</tr>

<c:iterator id="itera" value="al">

<tr>
<td align="center"><c:property value="irid" /></td>
<td align="center"><c:property value="vid"/></td>
<td align="center"><c:property value="aid"/></td>
<td align="center"><c:property value="afname"/></td>
<td align="center"><c:property value="amname"/></td>
<td align="center"><c:property value="alname"/></td>
<td align="center"><c:property value="istatus"/></td>

</tr>
</c:iterator>

</table>
<br>
<br><br>
<a href="../hr/welcomehr.jsp"><=BACK</a>
</body>
</html>