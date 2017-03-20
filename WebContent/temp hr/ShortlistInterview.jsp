<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
	<form action="/hr/basic1/shortlistint1.action">
		<table>
			
			<tr><td><c:select list ="#session['list']" label="Vacancy Id" name="vacancy"> 
			</c:select></td></tr>
			
			<tr><td><c:textfield name="com" label="Enter Cutoff Marks"/></td></tr>
			
			<c:submit value="Submit"/>
		</table>
	</form>
	</center>	
</body>
</html>