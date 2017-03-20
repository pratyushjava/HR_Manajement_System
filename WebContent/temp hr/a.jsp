<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <form action="/hr/basic1/handler.action" method="post">
    	<s:checkbox name="authority" fieldValue="OGINATOR" label="ORR"/>
    	<s:checkbox name="authority" fieldValue="EVALUATOR" label="EVALUATOR"/>
    	<s:checkbox name="authority" fieldValue="EXECUTOR" label="EXECUTOR"/>
    	
    	<s:radio list="#{'1':'Yes','2':'No'}" value="2" />
    	<input type="radio" name="a" value="a" checked="f"/>
    	<input type="radio" name="a" value="b" checked=""/>
    	<input type="radio" name="a" value="c"checked=""/>
    	<s:submit label="Submit"></s:submit>
    </form>
</body>
</html>