<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="/struts-tags" prefix="s" %>    
<s:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</s:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="javascript"  src="../javascript/cal2.js"> </script>
<script language="javascript" src="../javascript/cal_conf2.js"></script>

</head>
<body>

<form name="crevac" action="/hr/basic1/create2.action" method="post">
<!-- action="/projectname/namespace/actionname.action" -->
<table align="center">
<tr><td>Title</td><td><input type="text" name="title"></td></tr>
<tr><td>Experience/Crieteria</td><td><input type="text" name="vcriteria"></td></tr>
<tr><td>Location of Job</td><td><input type="text" name="vloc"></td></tr>
<tr><td>Number of Posts</td><td><input type="text" name="novacancy"></td></tr>
<tr><td>Date of Closing</td><td><input type="text" name="docl" readonly=""></td><td><a href="javascript:showCal('Calendar2')"><img src="../images/cal.gif"></a></td></tr>
<tr><td>Written place</td><td><input type="text" name="vplace"></td></tr>
<tr><td>Job Description</td><td><textarea name="descr"></textarea></td></tr>
<tr><td colspan="2" align="right"><input type="submit" value="SUBMIT"/></td></tr>
</table>
</form>

</body>
</html>