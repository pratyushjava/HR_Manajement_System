<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib uri="/struts-tags" prefix="c" %>
        <c:if test="#session['aid'] == null">
<% response.sendRedirect("Login.jsp");%>
</c:if> 
<html>
<head>
<meta charset="utf-8" />
<title>View Applied Vacancies</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body>
	<h5 align="right">Your Applicant id is ' <c:property value="#session.appli.aid"/> '        <c:a href="/hr/basic1/Logout.action">Sign_Out</c:a></h5>
	<div id="header">
			<ul>
				<li><a href="Welcome.jsp"><span>home</span></a></li>
				<li><a href="EditApplicant.jsp"><span>Edit Profile</span></a></li>
				<li><c:a href="/hr/applicant/viewcurrentvacancy.action"><span>view_current vacancy</span></c:a></li>
				<li  class="selected"><c:a href="/hr/applicant/viewvapplied.action" ><span>view_vacancy applied</span></c:a></li>
							
			</ul>
	</div>
	<div id="body">
		<div class="services">
			<h1>Applied Vacancies</h1>
			
			<a href="../applicant/Welcome.jsp"><=Back To Welcome Page</a><br/><br/>

<table border="1" align="center">
<tr>
	<td><b>Vacancy Id</b></td>
	<td><b>Vacancy Title</b></td>
	<td><b>Experience required(in years)</b></td>
	<td><b>Number of post</b></td>
	<td><b>Vacancy location</b></td>
	<td><b>Date of closing</b></td>
	<td><b>Vacancy place</b></td>
	<td><b>Description</b></td>
	
</tr>

<c:iterator id="itera" value="list">

<tr>
	<td align="center"><c:property value="#itera.vid" /></td>
	<td align="center"><c:property value="#itera.title"/></td>
	<td align="center"><c:property value="#itera.vcriteria"/></td>
	<td align="center"><c:property value="#itera.novacancy"/></td>
	<td align="center"><c:property value="#itera.vloc"/></td>
	<td align="center"><c:property value="#itera.docl"/></td>
	<td align="center"><c:property value="#itera.vplace"/></td>
	<td align="center"><c:property value="#itera.descr"/></td>
	



<tr/>

</c:iterator>

</table>

		</div>
	</div>
		<div id="footer">
			<div>
				<div>
					<h3>america</h3>
					<ul>
						<li>457-380-1654 main</li>				
						<li>257-301-9417 toll free</li>
					</ul>			
				</div>		
				<div>
					<h3>europe</h3>
					<ul>
						<li>457-380-1654 main</li>				
						<li>257-301-9417 toll free</li>
					</ul>			
				</div>	
				<div>
					<h3>canada</h3>
					<ul>
						<li>457-380-1654 main</li>				
						<li>257-301-9417 toll free</li>
					</ul>			
				</div>	
				<div>
					<h3>middle east</h3>
					<ul>
						<li>457-380-1654 main</li>				
						<li>257-301-9417 toll free</li>
					</ul>			
				</div>	
				<div>
					<h3>follow us:</h3>
					<a class="facebook" href="http://facebook.com/freewebsitetemplates" target="_blank">facebook</a>		
					<a class="twitter" href="http://twitter.com/fwtemplates" target="_blank">twitter</a>
				</div>	
			</div>
			<div>
				<p>&copy Copyright 2012. All rights reserved</p>
			</div>
		</div>
	</body>
</html>