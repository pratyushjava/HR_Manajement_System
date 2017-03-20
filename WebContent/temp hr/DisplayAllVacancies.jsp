<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="/struts-tags" prefix="c" %>
<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body><a href="../hr/welcomehr.jsp"><=BACK</a>
<br>
your employee id is <c:property value="#session.eid"/>
<br>
your department id is <c:property value="#session.did"/>
<br>

<table border="1">
<tr>
<td><b>Vacancy Id</b></td>
<td><b>Vacancy Title</b></td>
<td><b>Experience required(in years)</b></td>
<td><b>Number of post</b></td>
<td><b>Vacancy location</b></td>
<td><b>Date of creation</b></td>
<td><b>Date of closing</b></td>
<td><b>Vacancy place</b></td>
<td><b>Description</b></td>
<td><b>Employee Id</b></td>
<td><b>Department Id</b></td>
<td><b>Vacancy Status</b></td>
<td><b>Scheduled Status</b></td>
</tr>

<c:iterator id="itera" value="list">

<tr>
<td align="center"><c:property value="#itera.vid" /></td>
<td align="center"><c:property value="#itera.title"/></td>
<td align="center"><c:property value="#itera.vcriteria"/></td>
<td align="center"><c:property value="#itera.novacancy"/></td>
<td align="center"><c:property value="#itera.vloc"/></td>
<td align="center"><c:property value="#itera.docr"/></td>
<td align="center"><c:property value="#itera.docl"/></td>
<td align="center"><c:property value="#itera.vplace"/></td>
<td align="center"><c:property value="#itera.descr"/></td>
<td align="center"><c:property value="#itera.eid"/></td>
<td align="center"><c:property value="#itera.did"/></td>
<td align="center"><c:property value="#itera.vstatus"/></td>
<td align="center"><c:property value="#itera.scheduledstatus"/></td>
<c:url action="edit.action" id="edit" ><c:param name="vid"><c:property value="#itera.vid" /></c:param></c:url>
<td><a href="<c:property value="#edit" />">Edit</a></td>
<td>
<c:url action="delete.action" id="del" ><c:param name="vid"><c:property value="#itera.vid" /></c:param></c:url>
</td>
<td><a href="<c:property value="#del" />" >delete</a></td>
<%-- <c:a href="/hr/basic1/delete.action?vid=">delete</c:a> --%>
<!-- <a href="DeleteVacancy.jsp?vid='#itera.vid'">Delete</a> -->
</tr>
</c:iterator>

</table>
</body>
</html>