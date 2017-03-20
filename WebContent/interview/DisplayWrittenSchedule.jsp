<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>written schedules </title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body><h5 align="right">Your HR id is ' <c:property value="#session.eid"/> '        Sign_Out</h5>
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
			<h1>written schedules </h1>
			<br>
			<br>
					<a href="../hr/Written.jsp"> Back </a>
			<br><br>
			<table border="1" align="center">
				<tr>
					<th>Wscid </th>
					<th>Eid </th>
					<th>Vid </th>
					<th>Date Of Written </th>
					<th>Time Of Written </th>
					<th>Place Of Written </th>
					<th>Date Of Result </th>
				
				</tr>
				
		<c:iterator id="itrtr" value="list">

		<tr>
		<td align="center"><c:property value="#itrtr.wscid" /></td>
		<td align="center"><c:property value="#itrtr.eid"/></td>
		<td align="center"><c:property value="#itrtr.vid"/></td>
		<td align="center"><c:property value="#itrtr.dowritten"/></td>
		<td align="center"><c:property value="#itrtr.wtime"/></td>
		<td align="center"><c:property value="#itrtr.wplace"/></td>
		<td align="center"><c:property value="#itrtr.dowresult"/></td>
		<td><c:url action="editwschdl.action" id="edit" ><c:param name="wscid"><c:property value="#itrtr.wscid" /></c:param></c:url>
		<a href="<c:property value="#edit" />">Edit</a>
		</td>
		<td><c:url action="deletewschdl.action" id="del" ><c:param name="wscid"><c:property value="#itrtr.wscid" /></c:param></c:url>
		<a href="<c:property value="#del" />" >delete</a>
		</td></tr>
		</c:iterator>
		</table> 
		<br>
		<c:a href="../interview/getallvaca.action">schedule written for more vacancy</c:a>	

			
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