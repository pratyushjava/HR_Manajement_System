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

		<form action="/hr/basic1/editintsch1.action" method="post">

	<table align="center">
		<c:iterator id="itera" value="isch">
		<tr><td>Scheduled Interview Id</td><td><input type="text" name="isid" readonly="readonly" value=<c:property value="#itera.isid"/> ></td></tr>
		<tr><td>Vacancy Id</td><td><input type="text" readonly="readonly" name="vacancy" value=<c:property value="#itera.vacancy" /> /></td></tr>
		<tr><td>Employee Id</td><td><input type="text" name="eid" readonly="readonly" value=<c:property value="#itera.eid" /> /></td></tr>
		<tr><td>Date Of Interview</td><td><input type="text" name="dointerview" value=<c:property value="#itera.dointerview" /> ></td></tr>
		<tr><td>Date Of Interview Result</td><td><input type="text" name="doiresult" value=<c:property value="#itera.doiresult" /> ></td></tr>
		<tr><td>Interview Place</td><td><input type="text" name="iplace" readonly="readonly" value=<c:property value="#itera.iplace" /> ></td><td>
		<tr><td>Interview Time</td><td><input type="text" name="itime" value=<c:property value="#itera.itime" /> ></td></tr>
		<c:submit value="Submit"/>
		</c:iterator>
	</table>

 




 </form>

</body>
</html>