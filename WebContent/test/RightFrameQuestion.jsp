<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function redirect()
{

window.close()
}
</script>
</head>
<body>
<form action="/hr/test/ok.action">
<!--<input type="hidden" name="txt" value='<s:property value="#session.tqid" />' />
-->
<s:hidden name="txt" value="%{#session['tqid']}"/>
<s:iterator id="itera" value="#session.q">
	<table>
		<tr><td><s:property value="#itera.question"/></td></tr> 
<%-- 		<tr><td><input type="radio" value="1" name="answer" /> <s:property value="#itera.options1"/></td></tr> --%>
<%-- 		<tr><td><input type="radio" value="2" name="answer" /> <s:property value="#itera.options2"/></td></tr> --%>
<%-- 		<tr><td><input type="radio" value="3" name="answer" /> <s:property value="#itera.options3"/></td></tr> --%>
<%-- 		<tr><td><input type="radio" value="4" name="answer" /> <s:property value="#itera.options4"/></td></tr> --%>
<tr><td><s:radio list="#session.options" name="answer"  value="#session.s" /></td></tr>
 		<tr><td><input type="submit" value="Submit your Option" /></td></tr>
 	</table>
 	
</s:iterator>
	<table>
	<tr><td><input type="submit" value="Submit Test" /></td></tr>
	</table>
</form>
</body>
</html>