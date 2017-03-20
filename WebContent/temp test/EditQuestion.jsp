<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib uri="/struts-tags" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="/hr/test/updateques.action" method="post"> 
	<table align="center">
	<c:iterator id="itera" value="test">
<tr><td>Question Id </td><td><input type="text" name="qid" readonly="readonly" value=<c:property value="#itera.qid" /> /></td></tr>
<tr><td>Vacancy Id</td><td><input type="text" name="vid" value=<c:property value="#itera.vid" /> /></td></tr>
<tr><td></td><td><c:select name="qtype" value="#itera.qtype" label="Question Type" list="#@java.util.HashMap@{'C':'C','C++':'C++','.NET':'.NET','JAVA':'JAVA'}"/></td></tr>
<tr><td><c:textfield name="question" label="Question"/></td></tr>
<tr><td><c:textfield name="options1" label="Option 1"/></td></tr>
<tr><td><c:textfield name="options2" label="Option 2"/></td></tr>
<tr><td><c:textfield name="options3" label="Option 3"/></td></tr>
<tr><td><c:textfield name="options4" label="Option 4"/></td></tr>
<tr><td></td><td><c:select  name="ans" label="Answer" value="#itera.ans" list="#@java.util.HashMap@{'1':'1','2':'2','3':'3','4':'4'}"/></td></tr>
	<tr><td></td><td><c:submit value="Submit"/></td></tr>
	</c:iterator>
	</table> 
</form>
</body>
</html>