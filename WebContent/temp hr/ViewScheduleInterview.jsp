<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags"  prefix="c"%>
<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
				<a href="../hr/welcomehr.jsp"><=BACK</a>
<br>
your employee id is <c:property value="#session.eid"/>
<br>
your department id is <c:property value="#session.did"/>
<br>

<table border="1">
<tr>
<td><b>Scheduled Interview Id</b></td>
<td><b>Vacancy Id</b></td>
<td><b>Employee Id</b></td>
<td><b>Date Of Interview</b></td>
<td><b>Date Of Interview Result</b></td>
<td><b>Interview Place</b></td>
<td><b>Interview Time</b></td>


<c:iterator id="itera" value="al">

<tr>
<td align="center"><c:property value="#itera.isid" /></td>
<td align="center"><c:property value="#itera.vacancy"/></td>
<td align="center"><c:property value="#itera.eid"/></td>
<td align="center"><c:property value="#itera.dointerview"/></td>
<td align="center"><c:property value="#itera.doiresult"/></td>
<td align="center"><c:property value="#itera.iplace"/></td>
<td align="center"><c:property value="#itera.itime"/></td>

<c:url action="editintsch.action" id="edit" ><c:param name="isid"><c:property value="#itera.isid" /></c:param></c:url>
<td><a href="<c:property value="#edit" />">Edit</a></td>
<td>
<c:url action="delintsch" id="del" ><c:param name="isid"><c:property value="#itera.isid" /></c:param></c:url>
</td>
<td><a href="<c:property value="#del" />" >delete</a></td>

</tr>
</c:iterator>

</table>
</body>
</html>