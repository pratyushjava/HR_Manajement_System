<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
    
<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script language="javascript"  src="../javascript/cal2.js"> </script>
<script language="javascript" src="../javascript/cal_conf2.js"></script>

</head>
<body>


<form name="editvac" action="/hr/basic1/edit1.action" method="post">
<!-- action="/projectname/namespace/actionname.action" -->
<table align="center">
<c:iterator id="itera" value="vaca">
<tr><td>Vacancy Id</td><td><input type="text" name="vid" readonly="readonly" value=<c:property value="#itera.vid"/> ></td></tr>

<tr><td><c:textfield name="title" label="Vacancy Title" /></td></tr>
<tr><td>Experience/Criteria</td><td><input type="text" name="vcriteria" value=<c:property value="#itera.vcriteria" /> /></td></tr>
<tr><td><c:textfield name="vloc" label="Location of Job"/></td></tr>
<tr><td>Number of Posts</td><td><input type="text" name="novacancy" value=<c:property value="#itera.novacancy" /> ></td></tr>
<tr><td>Date of Creation</td><td><input type="text" name="docr" readonly="readonly" value=<c:property value="#itera.docr" /> ></td></tr>
<tr><td>Date of Closing</td><td><input type="text" name="docl" readonly="readonly" value=<c:property value="#itera.docl" /> ></td><td><a href="javascript:showCal('Calendar4')"><img src="../images/cal.gif"></a></td></tr>
<tr><td><c:textfield name="vplace" label="Written Place"/></td></tr>
<tr><td><c:textfield name="vstatus" label="Vacancy Status" /></td></tr>
<tr><td><c:textfield name="scheduledstatus" label="Vacancy Scheduled Status" readonly="true"/></td></tr>
<tr><td>Job Description</td><td><textarea name="descr" ><c:property value="#itera.descr" /> </textarea></td></tr>
<tr><td colspan="2" align="right"><input type="submit" value="SUBMIT"/></td></tr>
</c:iterator>
</table>

 
<%--  <c:property value="#session.vaca.vid"/> --%>



 </form>
<%-- <c:form name="editvac" action="/hr/basic1/edit.action" method="post">
<c:textfield name="title" label="Title"/>
<c:textfield name="vcriteria" label="Experience/Crieteria"/>
<c:textfield name="vloc" label="Location of Job"/>
<c:textfield name="novacancy" label="Number of Posts"/>
<c:textfield name="docl" label="Date of Closing"/><c:a href="javascript:showCal('Calendar4')"><img src="../images/cal.gif"/></c:a>
<c:textfield name="vplace" label="Written place"/>
<c:textfield name="descr" label="Job Description"/>
<c:submit value="SUBMIT"/> --%>
<%-- <c:textfield name="" label=""/> --%>
<%-- </c:form> --%>
</body>
</html>