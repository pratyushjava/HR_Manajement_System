<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s"%>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<s:form action="asint1">
	
			<s:select list ="#session['vlist']" label="Vacancy Id" name="vid"> 
			</s:select>
			<table>
				<s:iterator id="itera" value="#session.elist">
				<tr><td><!-- s:property value="#itera" ---></td><td><s:checkbox name="check" label="%{itera}" fieldValue="%{itera}" /></td></tr>
				
				</s:iterator>
				<tr><td><s:submit value="Submit"/></td></tr>
			</table>
			<%-- <s:select list ="#session['elist']" label="Employee Id" name="eid" multiple="true"> 
			</s:select> --%>
		</s:form>
</body>
</html>