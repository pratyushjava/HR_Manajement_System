<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="c" %>
    <c:if test="#session['aid'] == null">
<% response.sendRedirect("Login.jsp");%>
</c:if> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Error</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body>

	<div id="body">
		<div class="contact">
<h1>Login Failed <a href="../index.jsp"> Try Again </a></h1>
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