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
<a href="../hr/welcomehr.jsp"><=BACK</a>
	<table border="1">
		<tr>
			<th>Wscid </th>
			<th>Eid </th>
			<th>Vid </th>
			<th>Date Of Written </th>
			<th>Time Of Written </th>
			<th>Place Of Written </th>
			<th>Date Of Result </th>
		
		</tr>
		
<c:iterator id="itrtr" value="list">

<tr>
<td align="center"><c:property value="#itrtr.wscid" /></td>
<td align="center"><c:property value="#itrtr.eid"/></td>
<td align="center"><c:property value="#itrtr.vid"/></td>
<td align="center"><c:property value="#itrtr.dowritten"/></td>
<td align="center"><c:property value="#itrtr.wtime"/></td>
<td align="center"><c:property value="#itrtr.wplace"/></td>
<td align="center"><c:property value="#itrtr.dowresult"/></td>
<td><c:url action="editwschdl.action" id="edit" ><c:param name="wscid"><c:property value="#itrtr.wscid" /></c:param></c:url>
<a href="<c:property value="#edit" />">Edit</a>
</td>
<td><c:url action="deletewschdl.action" id="del" ><c:param name="wscid"><c:property value="#itrtr.wscid" /></c:param></c:url>
<a href="<c:property value="#del" />" >delete</a>
</td></tr>
</c:iterator>
	</table> 
<c:a href="../interview/getallvaca.action">schedule written for more vacancy</c:a>	
</body>
</html>