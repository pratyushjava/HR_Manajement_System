<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script language="javascript"  src="../javascript/cal2.js"> </script>
 
<script language="javascript" src="../javascript/cal_conf2.js"></script>

</head>
<body>
	
		<s:form name="schedule_interview" action="sint1">
			
			<s:select list ="#session['list']" label="Vacancy Id" name="vacancy"> 
			</s:select>
			<s:textfield name="dointerview" label="Date of Interview"/>
			<s:textfield name="itime" label="Interview Time"/>
			<s:textfield name="iplace" label="Interview Place"/>
			<s:textfield name="doiresult" label="Date of Result"/>
			<s:submit value="Submit"/>
		</s:form>

</body>
</html>