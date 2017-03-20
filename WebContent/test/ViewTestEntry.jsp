<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>view/edit test question</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body>
<h5 align="right">Your HR id is ' <c:property value="#session.eid"/> '        Sign_Out</h5>
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
			<h1>view/edit test question</h1>
			
			<br>

			<table border="1" align="center">
			<tr>
				<td><b>Question Id</b></td>
				<td><b>Vacancy Id</b></td>
				<td><b>Question Type</b></td>
				<td><b>Question</b></td>
				<td><b>Answer</b></td>
				<td><b>Option 1</b></td>
				<td><b>Option 2</b></td>
				<td><b>Option 3</b></td>
				<td><b>Option 4</b></td>
			</tr>
			
			<c:iterator id="itera" value="#session.test">
			
			<tr>
				<td align="center"><c:property value="#itera.qid" /></td>
				<td align="center"><c:property value="#itera.vid"/></td>
				<td align="center"><c:property value="#itera.qtype"/></td>
				<td align="center"><c:property value="#itera.question"/></td>
				<td align="center"><c:property value="#itera.ans"/></td>
				<td align="center"><c:property value="#itera.options1"/></td>
				<td align="center"><c:property value="#itera.options2"/></td>
				<td align="center"><c:property value="#itera.options3"/></td>
				<td align="center"><c:property value="#itera.options4"/></td>
				
				 
				<td>
				<c:url action="editques.action" id="edit" >
				<c:param name="qid">
				<c:property value="#itera.qid" />
				</c:param>
				</c:url>
				<a href="<c:property value="#edit" />">Edit</a>
				</td>
				
				
				<td>
				<c:url action="deleteques.action" id="del" >
				<c:param name="qid">
				<c:property value="#itera.qid" />
				</c:param>
				</c:url>
				<a href="<c:property value="#del" />" >delete</a>
				</td>
				<%-- <c:a href="/hr/basic1/delete.action?vid=">delete</c:a> --%>
				
				
				<!-- <a href="DeleteVacancy.jsp?vid='#itera.vid'">Delete</a> --> 
			</tr>
			</c:iterator>
			
			</table>
			<br>
			<br>
			<a href="../hr/welcomehr.jsp">Back</a>

			
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