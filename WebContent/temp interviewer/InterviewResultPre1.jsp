<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<form action="/hr/interviewer/finalresult.action">
			<table>
				<tr><td><c:select label="Applicant Id" name="aid" list="al2"/></td></tr>
				<tr>
					<td>
						<c:select label="Select Test"  name="istatus" list="#@java.util.HashMap@{'Hired':'Hired',' Not hired':'Not Hired'}"/>
					</td>
				</tr>
				<tr><td><c:submit value="Submit"/></td></tr>
			</table>
		</form>
	</center>
</body>
</html>