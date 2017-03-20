<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="c" %>
<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>    
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>welcome hr</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<table align="center">
<tr><td>create vacancy</td><td><a href="../hr/createvacancy.jsp">click</a></td></tr>

<tr><td>edit  vacancy details</td><td><c:a href="/hr/basic1/ActionTag.action">click</c:a></td></tr>
<tr><td>create new applicant</td><td><c:a href="../hr/CreateApplicant.jsp">Click</c:a></td></tr>
<tr><td>edit applicant details</td><td><c:a href="../hr/EditApplicant.jsp">Click</c:a></td></tr><tr><td><b>Search:</b></td></tr>
<tr><td><c:a href="../hr/SearchApplicant.jsp"> Search For Applicant </c:a> </td></tr>
<tr><td><c:a href="../hr/SearchVacancy.jsp"> Search For Vacancy </c:a> </td></tr>
<tr><td><b>Attach applicant to vacancy:</b></td></tr>
<tr><td>enter applicant id</td><td><input type="text" name="appid"></td></tr>
<tr><td>enter vacancy id</td><td><input type="text" name="vacid"></td><td><a href="#"><input type="button" value="attach"></a></td></tr>
<tr><td><b>Written:</b></td></tr>
<tr><td>schedule written</td><td><c:a href="../interview/getallvaca.action">click</c:a></td></tr>
<tr><td>view all written schedules</td><td><c:a href="/hr/interview/view.action">click</c:a></td></tr>

<tr><td>enter test question</td><td><c:a href="../test/TestEntry.jsp">click</c:a></td></tr>
<tr><td>view/edit test question</td><td><c:a href="/hr/test/view_test.action">click</c:a></td></tr>
<tr><td>shortlist applicants for written</td><td><c:a href="/hr/basic1/shortlist.action">click</c:a></td></tr>
<tr><td>view shortlisted applicants for written</td><td><a href="#"><input type="button" value="click"></a></td></tr>
<tr><td>view written result</td><td><a href="#"><input type="button" value="click"></a></td></tr>
<tr><td><b>Interview:</b></td></tr>
<tr><td>schedule interview</td><td><c:a href="/hr/basic1/sint.action">click</c:a></td></tr>
<tr><td>view all interview schedules</td><td><c:a href="/hr/basic1/vsint.action">click</c:a></td></tr>
<tr><td>assign interviewers</td><td><c:a href="/hr/basic1/asint.action">click</c:a></td></tr>
<tr><td>shortlist applicants for interview</td><td><a href="#"><input type="button" value="click"></a></td></tr>
<tr><td>view shortlisted applicants for interview</td><td><a href="#"><input type="button" value="click"></a></td></tr>
<tr><td>view interview result</td><td><a href="#"><input type="button" value="click"></a></td></tr>

</table>

<c:a href="/hr/basic1/Logout.action">LOGOUT</c:a>
</body>
</html>
