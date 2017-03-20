<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/hr/basic1/viewshortlist.action" method="post">

	<table align="center">
	
		<tr><td></td><td><s:select list ="#session['vaca']" label="Select vacancy id" name="vid" /> 
			</td></tr>
			
		<tr> <td>Enter hscpercent</td><td><input type="text" name="hscpercent"/> </td></tr>
		<tr> <td>Enter sscpercent</td><td><input type="text" name="sscpercent"/> </td></tr>
		<tr> <td>Enter gpercent</td><td><input type="text" name="gpercent"/> </td></tr>
		<tr><td><input type="submit" value="SUBMIT"/></td></tr>
			
	</table>
	
	
	</form>
</body>
</html>