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
<form action="/hr/test/question.action" method="post"> 
	<table align="center">
	
	
	
	<c:select list ="l2" label="Vacancy Id" name="vid"> 
	</c:select>
	<c:select name="qtype" label="Question Type" list="#@java.util.HashMap@{'C':'C','C++':'C++','.NET':'.NET','JAVA':'JAVA'}"/>
	<c:textfield name="question" label="Question"/>
	<c:textfield name="options1" label="Option 1"/>
	<c:textfield name="options2" label="Option 2"/>
	<c:textfield name="options3" label="Option 3"/>
	<c:textfield name="options4" label="Option 4"/>
	<c:select  name="ans" label="Answer" list="#@java.util.HashMap@{'1':'1','2':'2','3':'3','4':'4'}"/>
	<c:submit value="Submit"/>
	</table> 
</form>
</body>
</html>