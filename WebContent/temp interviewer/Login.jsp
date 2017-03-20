<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="/struts-tags" prefix="c" %>
    <c:if test="#session['aid'] != null">
<% response.sendRedirect("Welcome.jsp");%>
</c:if> 
<html>
<head>
<meta charset="utf-8" />
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
<script type="text/javascript" > 
function validate(form)
{

	var aemail1=document.loginapplicant.aemail1.value;
	var apassword=document.loginapplicant.apassword.value;
	
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	
	if(aemail1=="")
	{alert("enter your primary email id");document.loginapplicant.aemail1.focus();return false;}
	if(!aemail1.match(emailExp))
	{alert("enter valid email id");document.loginapplicant.aemail1.focus();return false;}
	
	if(apassword=="")
	{alert("enter your password");document.loginapplicant.apassword.focus();return false;}
}
</script>
</head>
<body>	<form name="loginapplicant" action="/hr/applicant/login.action" method="post" onsubmit="return validate(this.form)">

	<div id="header">
					
			<ul>
				<li ><a href="index.html"><span>home</span></a></li>
				<li><a href="about.html"><span>about us</span></a></li>
				<li><a href="services.html"><span>Register</span></a></li>
				<li class="selected"><a href="products.html"><span>Employee Login</span></a></li>
				<li><a href="contact.html"><span>contact us</span></a></li>			
			</ul>
	</div><br><br>
	<div id="body">
		<div class="header">
			<div>
				<ul>
					<li><img src="../images/discuss.jpg" alt="" /></li>	
					<li><img src="../images/flags.jpg" alt="" /></li>
					<li><img src="../images/graph.jpg" alt="" /></li>		
				</ul>		
				<div>
					<h3>This website has been designed for <span><a href="#">HR Recruitment</a> </span></h3>	
						
				</div></div>
			</div>
		</div>
		<div class="body">
			<div class="section">
<table align="center">
<tr><td><h3>enter Employee Id</h3></td><td><input type="text" name="aemail1"></td></tr>
<tr><td><h3>enter your password</h3></td><td><input type="password" name="apassword"></td></tr>

<tr><td></td><td><input type="submit" value="login"></td></tr>

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