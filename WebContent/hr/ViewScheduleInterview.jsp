<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>All interview schedules</title>
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
			<h1>All interview schedules</h1>
				<br><br>
				<a href="../hr/Interview.jsp"> Back </a>
				<br><br>
				
				<table border="1" align="center">
				<tr>
				<td><b>Scheduled Interview Id</b></td>
				<td><b>Vacancy Id</b></td>
				<td><b>Employee Id</b></td>
				<td><b>Date Of Interview</b></td>
				<td><b>Date Of Interview Result</b></td>
				<td><b>Interview Place</b></td>
				<td><b>Interview Time</b></td>


				<c:iterator id="itera" value="al">

				<tr>
				<td align="center"><c:property value="#itera.isid" /></td>
				<td align="center"><c:property value="#itera.vacancy"/></td>
				<td align="center"><c:property value="#itera.eid"/></td>
				<td align="center"><c:property value="#itera.dointerview"/></td>
				<td align="center"><c:property value="#itera.doiresult"/></td>
				<td align="center"><c:property value="#itera.iplace"/></td>
				<td align="center"><c:property value="#itera.itime"/></td>

				<c:url action="editintsch.action" id="edit" ><c:param name="isid"><c:property value="#itera.isid" /></c:param></c:url>
				<td><a href="<c:property value="#edit" />">Edit</a></td>
				<td>
				<c:url action="delintsch" id="del" ><c:param name="isid"><c:property value="#itera.isid" /></c:param></c:url>
				</td>
				<td><a href="<c:property value="#del" />" >delete</a></td>

				</tr>
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