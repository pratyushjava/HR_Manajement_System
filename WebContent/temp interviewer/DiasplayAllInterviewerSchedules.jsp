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
<table border="1" align="center"> 

<tr><td><b>Interview Id</b></td>
<td><b>HR ID</b></td>
<td><b>Vacancy ID</b></td>
<td><b>Place of Interview</b></td>
<td><b>Date of Interview</b></td>
<td><b>Time of Interview</b></td>
<td><b>Date of Result</b></td></tr>
<c:iterator id="itera" value="islist">
<tr>
<td align="center"><c:property value="isid"/></td>
<td align="center"><c:property value="eid"/></td>
<td align="center"><c:property value="vacancy"/></td>
<td align="center"><c:property value="iplace"/></td>
<td align="center"><c:property value="dointerview"/></td>
<td align="center"><c:property value="itime"/></td>
<td align="center"><c:property value="doiresult"/></td>
<c:url action="edittime.action" id="edit" ><c:param name="isid"><c:property value="#itera.isid" /></c:param></c:url>
<td><a href="<c:property value="#edit" />">Edit</a></td></tr>
</c:iterator>
</table>
</body>
</html>