<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="c" %>
<c:if test="#session['aid'] == null">
<% response.sendRedirect("Login.jsp");%>
</c:if> 
<html>
<head>
<meta charset="utf-8" />
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body>
<h5 align="right">Your Applicant id is ' <c:property value="#session.appli.aid"/> '        <c:a href="/hr/basic1/Logout.action">Sign_Out</c:a></h5>
	<div id="header">
			<ul>
				<li class="selected"><a href="Welcome.jsp"><span>home</span></a></li>
				<li><a href="EditApplicant.jsp"><span>Edit Profile</span></a></li>
				<li><c:a href="/hr/applicant/viewcurrentvacancy.action"><span>view_current vacancy</span></c:a></li>
				<li><c:a href="/hr/applicant/viewvapplied.action" ><span>view_vacancy applied</span></c:a></li>
							
			</ul>
	</div>
	<div id="body">
		<div class="contact">
			<h1>Welcome <c:property value="#session.appli.afname"/></h1>
			
		


<table align="center" >


<tr><td><h3>give test</h3></td><td align="right"><c:a href="/hr/applicant/getvacancy.action"><h3>click</h3></c:a></td></tr>
<tr><td><h3>view result </h3></td><td align="right"><c:a href="/hr/applicant/.action"><h3>click</h3></c:a></td></tr>

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