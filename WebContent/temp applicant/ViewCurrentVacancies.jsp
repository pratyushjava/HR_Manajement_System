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
<a href="../applicant/Welcome.jsp"><=Back To Welcome Page</a><br/><br/>
welcome,your applicant id is <c:property value="#session.aid"/> <br/>
welcome,your applicant id is <c:property value="#session.appli.aid"/>
<table border="1">
<tr>
	<td><b>Vacancy Id</b></td>
	<td><b>Vacancy Title</b></td>
	<td><b>Experience required(in years)</b></td>
	<td><b>Number of post</b></td>
	<td><b>Vacancy location</b></td>
	<td><b>Date of closing</b></td>
	<td><b>Vacancy place</b></td>
	<td><b>Description</b></td>
	
</tr>

<c:iterator id="itera" value="list">

<tr>
	<td align="center"><c:property value="#itera.vid" /></td>
	<td align="center"><c:property value="#itera.title"/></td>
	<td align="center"><c:property value="#itera.vcriteria"/></td>
	<td align="center"><c:property value="#itera.novacancy"/></td>
	<td align="center"><c:property value="#itera.vloc"/></td>
	<td align="center"><c:property value="#itera.docl"/></td>
	<td align="center"><c:property value="#itera.vplace"/></td>
	<td align="center"><c:property value="#itera.descr"/></td>
	
		
	
		<c:url action="apply.action" id="apply" >
		<c:param name="vid">
			<c:property value="#itera.vid" />
		</c:param>
	</c:url>
	
	
<td><a href="<c:property value="#apply"/>">Apply</a></td>


<tr/>

</c:iterator>

</table>
</body>
</html>