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
	

<br>

	<table border="1" align="center">
	<tr>
		<td><b>Question Id</b></td>
		<td><b>Vacancy Id</b></td>
		<td><b>Question Type</b></td>
		<td><b>Question</b></td>
		<td><b>Answer</b></td>
		<td><b>Option 1</b></td>
		<td><b>Option 2</b></td>
		<td><b>Option 3</b></td>
		<td><b>Option 4</b></td>
	</tr>
	
	<c:iterator id="itera" value="#session.test">
	
	<tr>
		<td align="center"><c:property value="#itera.qid" /></td>
		<td align="center"><c:property value="#itera.vid"/></td>
		<td align="center"><c:property value="#itera.qtype"/></td>
		<td align="center"><c:property value="#itera.question"/></td>
		<td align="center"><c:property value="#itera.ans"/></td>
		<td align="center"><c:property value="#itera.options1"/></td>
		<td align="center"><c:property value="#itera.options2"/></td>
		<td align="center"><c:property value="#itera.options3"/></td>
		<td align="center"><c:property value="#itera.options4"/></td>
		
		 
		<td>
		<c:url action="editques.action" id="edit" >
		<c:param name="qid">
		<c:property value="#itera.qid" />
		</c:param>
		</c:url>
		<a href="<c:property value="#edit" />">Edit</a>
		</td>
		
		
		<td>
		<c:url action="deleteques.action" id="del" >
		<c:param name="qid">
		<c:property value="#itera.qid" />
		</c:param>
		</c:url>
		<a href="<c:property value="#del" />" >delete</a>
		</td>
		<%-- <c:a href="/hr/basic1/delete.action?vid=">delete</c:a> --%>
		
		
		<!-- <a href="DeleteVacancy.jsp?vid='#itera.vid'">Delete</a> --> 
	</tr>
	</c:iterator>
	
	</table>
<a href="../hr/welcomehr.jsp">Back</a>	
</body>
</html>