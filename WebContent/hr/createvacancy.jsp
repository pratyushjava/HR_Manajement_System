<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>Create Vacancy</title>
<script language="javascript"  src="../javascript/cal2.js"> </script>
<script language="javascript" src="../javascript/cal_conf2.js"></script>

<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
<script type="text/javascript" > 
function validate(form)
{
var title=document.crevac.title.value;
var vcriteria=document.crevac.vcriteria.value;
var vloc=document.crevac.vloc.value;
var novacancy=document.crevac.novacancy.value;
var docl=document.crevac.docl.value;
var vplace=document.crevac.vplace.value;

var alphaspaceExp = /^[a-zA-Z ]+$/;
var digitsExp = /^[0-9]+$/;




if(title=="")
{alert("enter Title ");document.crevac.title.focus();return false;}

if(vcriteria=="")
{alert("enter Experience/Crieteria");document.crevac.vcriteria.focus();return false;}
if(!vcriteria.match(digitsExp))
{alert("only number is allowed in Experience/Criteria");document.crevac.vcriteria.focus();return false;}

if(vloc=="")
{alert("enter Location of Job ");document.crevac.vloc.focus();return false;}
if(!vloc.match(alphaspaceExp))
{alert("omly string is allowed in job location");document.crevac.vloc.focus();return false;}

if(novacancy=="")
{alert("enter Number of Posts");document.crevac.novacancy.focus();return false;}
if(!novacancy.match(digitsExp))
{alert("only number is allowed in Posts");document.crevac.novacancy.focus();return false;}

if(docl=="")
{alert("enter Date of Closing ");document.crevac.docl.focus();return false;}

if(vplace=="")
{alert("enter Written place");document.crevac.vplace.focus();return false;}
if(!vloc.match(alphaspaceExp))
{alert("omly string is allowed in Written place");document.crevac.vloc.focus();return false;}

}
</script>


</head>
<body><form name="crevac" action="/hr/basic1/create2.action" method="post" onsubmit= "return validate(this.form)">
<h5 align="right">Your HR id is  ' <c:property value="#session.eid"/> '           <c:a href="/hr/basic1/Logout.action">Sign_Out</c:a></h5>
	<div id="header">		
			<ul>
				<li class="selected"><a href="../hr/welcomehr.jsp"><span>Home</span></a></li>
				<li><a href="../hr/Vacancy.jsp"><span>Vacancy</span></a></li>
				<li><a href="../hr/Written.jsp"><span>Written</span></a></li>
				<li><a href="../hr/Interview.jsp"><span>Interview</span></a></li>
		
			</ul>
	</div>
	<div id="body">
		<div class="services">
			<h1>Create Vacancy</h1>
			

<!-- action="/projectname/namespace/actionname.action" -->
<table align="center">
<tr><td>Title</td><td><input type="text" name="title"></td></tr>
<tr><td>Experience/Criteria</td><td><input type="text" name="vcriteria"></td></tr>
<tr><td>Location of Job</td><td><input type="text" name="vloc"></td></tr>
<tr><td>Number of Posts</td><td><input type="text" name="novacancy"></td></tr>
<tr><td>Date of Closing</td><td><input type="text" name="docl" readonly=""></td><td><a href="javascript:showCal('Calendar2')"><img src="../images/cal.gif"></a></td></tr>
<tr><td>Written place</td><td><input type="text" name="vplace"></td></tr>
<tr><td>Job Description</td><td><textarea name="descr"></textarea></td></tr>
<tr><td colspan="2" align="right"><input type="submit" value="SUBMIT"/></td></tr>
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