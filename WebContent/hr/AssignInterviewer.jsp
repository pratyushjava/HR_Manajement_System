<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="s"%>
	<s:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</s:if>   
<html>
<head>
<meta charset="utf-8" />
<title>assign interviewers</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body>
<form action="/hr/basic1/asint1.action" method="post">
<h5 align="right">Your HR id is ' <s:property value="#session.eid"/> '        <s:a href="/hr/basic1/Logout.action">Sign_Out</s:a></h5>
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
			<h1>assign interviewers</h1>
			
	
			<s:select list ="#session['vlist']" label="Vacancy Id" name="vid"> 
			</s:select>
			<table>
				<s:iterator id="itera" value="#session.elist">
				<tr><td><!-- s:property value="#itera" ---></td><td><s:checkbox name="check" label="%{itera}" fieldValue="%{itera}" /></td></tr>
				
				</s:iterator>
				<tr><td><s:submit value="Submit"/></td></tr>
			</table>
			<%-- <s:select list ="#session['elist']" label="Employee Id" name="eid" multiple="true"> 
			</s:select> --%>
		
	

			
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
		</form>
	</body>
</html>