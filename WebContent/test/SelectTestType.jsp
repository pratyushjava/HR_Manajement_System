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
	<c:form action="Instructions.jsp">
	<c:select label="Select Test"  list="#@java.util.HashMap@{'C':'C','C++':'C++','Java':'Java','ASP.NET':'ASP.NET'}"/>
	<c:submit value="Submit"/>
	</c:form>
</body>
</html>