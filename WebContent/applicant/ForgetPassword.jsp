<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="c" %>
    <c:if test="#session['aid'] == null">
<% response.sendRedirect("Login.jsp");%>
</c:if> 
<html>
<head>
<meta charset="utf-8" />
<title>Forget Password</title>
<link rel="stylesheet" type="text/css" href="style.css" media="all" />
</head>
<body>
	<div id="header">
			<div id="logo">
				<a href="index.html"><img src="images/logo.jpg" alt="" /></a>			
			</div>		
			<ul>
				<li><a href="index.html"><span>home</span></a></li>
				<li><a href="about.html"><span>about us</span></a></li>
				<li><a href="services.html"><span>services</span></a></li>
				<li><a href="products.html"><span>products</span></a></li>
				<li><a href="contact.html"><span>contact us</span></a></li>			
			</ul>
	</div>
	<div id="body">
		<div class="blog">
			<h1>Forget Password</h1>
			<form name="forgot" action="/hr/applicant/forgot.action" method="post">
	<table align="center">
		<tr>
			<td>E-mail</td>
			<td><input type="text" name="aemail1" /></td>
		</tr>
		
		
		
		<tr>
			<td>AID</td>
			<td><input type="text" name="aid" /></td>
		</tr>
		<tr><td>enter new password</td><td><input type="text" name="newpassword"/></td></tr>
		<tr><td>re-enter new password</td><td><input type="password" name="renewpassword"/></td></tr>
		<tr>
			<td colspan="2" ><input type="submit" value="submit"/></td>
		</tr>
	</table>
</form>
			
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