<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>Edit Interviewer Schedules</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body>
<form action="/hr/interviewer/update1.action" name="a" method="post">
<h5 align="right">Your Interviewer id is ' <c:property value="#session.eid"/> '        <c:a href="/hr/basic1/Logout.action">Sign_Out</c:a></h5>
	
	<div id="header">		
			<ul>
				<li class="selected"><a href="../interviewer/welcome.jsp"><span>Home</span></a></li>
	
		
			</ul>
	</div>
	<div id="body">
		<div class="services">
			<h1>Edit Interviewer Schedules</h1>
			
<table>
<c:iterator id="itera" value="#session.is">
<tr><td><c:textfield name="itime" label="Edit Time Of Interview" /></td></tr>
<tr><td><c:submit value="submit"/></td></tr>
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
		</div></form>
	</body>
</html>