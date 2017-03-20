<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>Welcome HR</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />

<script type="text/javascript" > 
function validate(form)
{

var com=document.shortint.com.value;

var digitsExp = /^[0-9]+$/;

if(com=="")
{alert("enter your graduation percentage ");document.shortint.com.focus();return false;}
if(!com.match(digitsExp) || com.length >2 )
{alert("enter your percentage upto 2 digit  ");document.shortint.com.focus();return false;}

}
</script>

</head>

<body>
<form name="shortint" action="/hr/basic1/shortlistint1.action" onsubmit="return validate(this.form)">
<h5 align="right">Your HR id is ' <c:property value="#session.eid"/> '        <c:a href="/hr/basic1/Logout.action">Sign_Out</c:a></h5>
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
			<h1>shortlist applicants for interview</h1>
			
			
		<table>
			
			<tr><td><c:select list ="#session['vidlist']" label="Vacancy Id" name="vacancy"> 
			</c:select></td></tr>
			
			<tr><td><c:textfield name="com" label="Enter Cutoff Marks"/></td></tr>
			
			<c:submit value="Submit"/>
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