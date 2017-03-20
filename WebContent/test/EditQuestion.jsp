<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>Edit Test Question</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body>
<form action="/hr/test/updateques.action" method="post">
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
			<h1>View Test Question</h1>
			
						 
			<table align="center">
				<c:iterator id="itera" value="test">
					<tr><td>Question Id </td><td><input type="text" name="qid" readonly="readonly" value=<c:property value="#itera.qid" /> /></td></tr>
					<tr><td>Vacancy Id</td><td><input type="text" name="vid" value=<c:property value="#itera.vid" /> /></td></tr>
					<tr><td></td><td><c:select name="qtype" value="#itera.qtype" label="Question Type" list="#@java.util.HashMap@{'C':'C','C++':'C++','.NET':'.NET','JAVA':'JAVA'}"/></td></tr>
					<tr><td><c:textfield name="question" label="Question"/></td></tr>
					<tr><td><c:textfield name="options1" label="Option 1"/></td></tr>
					<tr><td><c:textfield name="options2" label="Option 2"/></td></tr>
					<tr><td><c:textfield name="options3" label="Option 3"/></td></tr>
					<tr><td><c:textfield name="options4" label="Option 4"/></td></tr>
					<tr><td></td><td><c:select  name="ans" label="Answer" value="#itera.ans" list="#@java.util.HashMap@{'1':'1','2':'2','3':'3','4':'4'}"/></td></tr>
					<tr><td></td><td><c:submit value="Submit"/></td></tr>
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
		</form>
	</body>
</html>