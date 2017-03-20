<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="/struts-tags"  prefix="c"%>
     
<c:if test="#session['eid'] == null">
<% response.sendRedirect("../hr/index1.html");%>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="javascript"  src="../javascript/cal2.js"> </script>
<script language="javascript" src="../javascript/cal_conf2.js"></script>
</head>
<body>
	
	<form name="editwrtnschdl" action="/hr/interview/updatewschdl.action" method="post">
<!-- action="/projectname/namespace/actionname.action" -->
<table align="center">
<c:iterator id="itrtr" value="ws">
<tr><td>written schedule id</td><td><input type="text" name="wscid" value=<c:property value="#itrtr.wscid" />  readonly="readonly"/></td></tr>
<tr><td>Vacancy Id</td><td><input type="text"  name="vid"  value=<c:property value="#itrtr.vid" />  readonly="readonly"/></td></tr>
<tr><td> Date Of Written</td><td><input type="text" name="dowritten" value=<c:property value="#itrtr.dowritten" /> /></td><td><a href="javascript:showCal('Calendar9')"><img src="../images/cal.gif"></a></td></tr>
<tr><td>Date Of Result</td><td><input type="text" name="dowresult" value=<c:property value="#itrtr.dowresult" /> /></td><td><a href="javascript:showCal('Calendar10')"><img src="../images/cal.gif"></a></td></tr>
<tr><td><c:textfield name="wplace" label="Place of Written"/></td></tr>
<tr><td><c:textfield name="wtime" label="Time of Written"/></td></tr>
 <td colspan="2"> <input align="middle" type="submit" value="SUBMIT"/></td>
</c:iterator>
</table>


</form>




	
	
</body>
</html>