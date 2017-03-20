<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>Welcome HR</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body><h5 align="right">Your HR id is  ' <c:property value="#session.eid"/> '           <c:a href="/hr/basic1/Logout.action">Sign_Out</c:a></h5>
	<div id="header">		
			<ul>
				<li class="selected"><a href="../hr/welcomehr.jsp"><span>Home</span></a></li>
				<li><a href="../hr/Vacancy.jsp"><span>Vacancy</span></a></li>
				<li><a href="../hr/Written.jsp"><span>Written</span></a></li>
				<li><a href="../hr/Interview.jsp"><span>Interview</span></a></li>
		
			</ul>
	</div>
	<div id="body">
		<div class="services">
			<h1>Welcome HR</h1>
			
			<table align="center">
<tr><td><h3>create new applicant</h3></td><td><c:a href="../hr/CreateApplicant.jsp"><h3>Click</h3></c:a></td></tr>
<tr><td><h3>edit applicant details</h3></td><td><c:a href="../hr/EditApplicant.jsp"><h3>Click</h3></c:a></td></tr><tr><td><b><h4>Search:</h4></b></td></tr>
<tr><td><c:a href="../hr/SearchApplicant.jsp"><h3>Search For Applicant </h3> </c:a> </td></tr>
<tr><td><c:a href="../hr/SearchVacancy.jsp"><h3>Search For Vacancy </h3> </c:a> </td></tr>

<tr><td><h3>enter test question</h3></td><td><c:a href="/hr/test/testentry.action"><h3>click</h3></c:a></td></tr>
<tr><td><h3>view/edit test question</h3></td><td><c:a href="/hr/test/view_test.action"><h3>click</h3></c:a></td></tr>

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