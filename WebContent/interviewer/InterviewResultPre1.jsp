<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>Select Applicant Id</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body>
<form action="/hr/interviewer/finalresult.action">
<h5 align="right">Your Interviewer id is ' <c:property value="#session.eid"/> '        <c:a href="/hr/basic1/Logout.action">Sign_Out</c:a></h5>
	
	<div id="header">		
			<ul>
				<li class="selected"><a href="../interviewer/welcome.jsp"><span>Home</span></a></li>
	
		
			</ul>
	</div>
	<div id="body">
		<div class="services">
			<h1>Select Applicant Id</h1>
			
<table align="center">
				<tr><td><c:select label="Applicant Id" name="aid" list="al2"/></td></tr>
				<tr>
					<td>
						<c:select label="Select Test"  name="istatus" list="#@java.util.HashMap@{'Hired':'Hired',' Not hired':'Not Hired'}"/>
					</td>
				</tr>
				<tr><td><c:submit value="Submit"/></td></tr>
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
		</div></form>
	</body>
</html>