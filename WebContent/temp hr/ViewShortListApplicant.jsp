<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="" action="/hr/basic1/shrtListSubmit.action">
<table border="1">
<tr>
<td><b>VID</b></td>
<td><b>Applicant ID</b></td>
<td><b>First Name</b></td>
<td><b>Middle Name</b></td>
<td><b>Last Name</b></td>
<td><b>HSC Percent</b></td>
<td><b>SSC Percent</b></td>
<td><b>G Percent</b></td>
</tr>


<c:iterator id="itera" value="list">

<tr>

<td align="center"><c:property value="#itera.vid" /></td>
<td align="center"><c:property value="#itera.avid"/></td>
<td align="center"><c:property value="#itera.afname"/></td>
<td align="center"><c:property value="#itera.amname"/></td>
<td align="center"><c:property value="#itera.alname"/></td>
<td align="center"><c:property value="#itera.hscpercent"/></td>
<td align="center"><c:property value="#itera.sscpercent"/></td>
<td align="center"><c:property value="#itera.gpercent"/></td>
</tr>
</c:iterator>
<tr><td align="center"> <input type="submit" value="SUBMIT"></td></tr>
</table>
</form>
</body>
</html>