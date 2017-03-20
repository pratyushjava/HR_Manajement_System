<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="s"%>
	<s:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</s:if>   
<html>
<head>
<meta charset="utf-8" />
<title>shortlist applicants for written</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />

<script type="text/javascript" > 
function validate(form)
{

var hscpercent=document.shortlist.hscpercent.value;
var sscpercent=document.shortlist.sscpercent.value;
var gpercent=document.shortlist.gpercent.value;

var percentageExp =  /^[0-9][0-9]\.[0-9][0-9]$/;

if(hscpercent=="")
{alert("enter your 10th percentage ");document.shortlist.hscpercent.focus();return false;}
if(!hscpercent.match(percentageExp))
{alert("enter your percentage upto 2 decimal places ");document.shortlist.hscpercent.focus();return false;}

if(sscpercent=="")
{alert("enter your 10th percentage ");document.shortlist.sscpercent.focus();return false;}
if(!sscpercent.match(percentageExp))
{alert("enter your percentage upto 2 decimal places ");document.shortlist.sscpercent.focus();return false;}

if(gpercent=="")
{alert("enter your 10th percentage ");document.shortlist.gpercent.focus();return false;}
if(!gpercent.match(percentageExp))
{alert("enter your percentage upto 2 decimal places ");document.shortlist.gpercent.focus();return false;}

}
</script>

</head>
<body>
<form name="shortlist" action="/hr/basic1/viewshortlist.action" method="post" onsubmit="return validate(this.form)">
<h5 align="right">Your HR id is ' <s:property value="#session.eid"/> '        Sign_Out</h5>
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
			<h1>shortlist applicants for written</h1>
				

	<table align="center">
	
		<tr><td></td><td><s:select list ="#session['vaca']" label="Select vacancy id" name="vid" /> 
			</td></tr>
			
		<tr> <td>Enter hscpercent</td><td><input type="text" name="hscpercent"/> </td></tr>
		<tr> <td>Enter sscpercent</td><td><input type="text" name="sscpercent"/> </td></tr>
		<tr> <td>Enter gpercent</td><td><input type="text" name="gpercent"/> </td></tr>
		<tr><td><input type="submit" value="SUBMIT"/></td></tr>
			
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