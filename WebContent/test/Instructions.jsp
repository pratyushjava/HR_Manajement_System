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
	<form action="/hr/test/test.action">
	<table align="center">
		<tr><td><u><font color="Blue">INSTRUCTIONS</font></u></td></tr>
		
		<tr>
			<td colspan="2">Read the Instructions Carefully before giving exam.</td>
		</tr>
		<tr>
			<td colspan="2">1.The paper carries 50 questions.</td>
		</tr>
		<tr>
			<td colspan="2">1.Choose any one option and submit the answer.</td>
		</tr>
		<tr>
			<td colspan="2">1.Total Time is 60 minutes.</td>
		</tr>
		<tr></tr><tr></tr>
		<tr>
			<td><b>Select Test</b></td>
			<td >
					<select name="qtype">
						<option>C</option>
						<option>C++</option>
						<option>Java</option>
						<option>ASP.NET</option>
					</select>
			</td>
			
		</tr>
		<tr></tr><tr></tr><tr></tr>
		<tr>
			<td colspan="2"><input type="submit" value="Next"/></td>
		</tr>
	</table>
	</form>
</body>
</html>