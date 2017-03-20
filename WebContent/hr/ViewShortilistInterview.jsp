<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>shortlisted applicants</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body><h5 align="right">Your HR id is ' <c:property value="#session.eid"/> '        <c:a href="/hr/basic1/Logout.action">Sign_Out</c:a></h5>
	<div id="header">		
			<ul>
				<li class="selected"><a href="../hr/welcomehr.jsp"><span>Home</span></a></li>
				<li><a href="../hr/Vacancy.jsp"><span>Vacancy</span></a></li>
				<li><a href="../hr/Written.jsp"><span>Written</span></a></li>
				<li><a href="../hr/Interview"><span>Interview</span></a></li>
		
			</ul>
	</div>
	<div id="body">
		<div class="services">
			<h1>shortlisted applicants for interview</h1>
			<br>
			<table border="1">
			<tr>
			<td><b>Interview Result Id</b></td>
			<td><b>Vacancy Id</b></td>
			<td><b>Applicant Id</b></td>
			<td><b>Applicant First Name</b></td>
			<td><b>Applicant Middle Name</b></td>
			<td><b>Applicant Last Name</b></td>
			<td><b>Interview Status</b></td>
			</tr>

			<c:iterator id="itera" value="al">

			<tr>
			<td align="center"><c:property value="irid" /></td>
			<td align="center"><c:property value="vid"/></td>
			<td align="center"><c:property value="aid"/></td>
			<td align="center"><c:property value="afname"/></td>
			<td align="center"><c:property value="amname"/></td>
			<td align="center"><c:property value="alname"/></td>
			<td align="center"><c:property value="istatus"/></td>

			</tr>
			</c:iterator>

			</table>
			<br>
			<br>
			<a href="../hr/Interview.jsp">Back</a>

			
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