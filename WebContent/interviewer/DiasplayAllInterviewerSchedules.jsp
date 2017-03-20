<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>Interviewer Schedules</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body><h5 align="right">Your Interviewer id is ' <c:property value="#session.eid"/> '        <c:a href="/hr/basic1/Logout.action">Sign_Out</c:a></h5>
	
	<div id="header">		
			<ul>
				<li class="selected"><a href="../interviewer/welcome.jsp"><span>Home</span></a></li>
	
		
			</ul>
	</div>
	<div id="body">
		<div class="services">
			<h1>Interviewer Schedules</h1>
			<br><br>
<table border="1" align="center"> 

<tr><td><b><h3>Interview Id</h3></b></td>
<td><b><h3>HR ID</h3></b></td>
<td><b><h3>Vacancy ID</h3></b></td>
<td><b><h3>Place of Interview</h3></b></td>
<td><b><h3>Date of Interview</h3></b></td>
<td><b><h3>Time of Interview</h3></b></td>
<td><b><h3>Date of Result</h3></b></td></tr>
<c:iterator id="itera" value="islist">
<tr>
<td align="center"><c:property value="isid"/></td>
<td align="center"><c:property value="eid"/></td>
<td align="center"><c:property value="vacancy"/></td>
<td align="center"><c:property value="iplace"/></td>
<td align="center"><c:property value="dointerview"/></td>
<td align="center"><c:property value="itime"/></td>
<td align="center"><c:property value="doiresult"/></td>
<c:url action="edittime.action" id="edit" ><c:param name="isid"><c:property value="#itera.isid" /></c:param></c:url>
<td><a href="<c:property value="#edit" />"><h3>Edit</h3></a></td></tr>
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