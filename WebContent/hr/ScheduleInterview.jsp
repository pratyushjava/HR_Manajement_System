<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="s"%>
	<s:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</s:if>   
<html>
<head>
<meta charset="utf-8" />
<title>schedule interview</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />

<script type="text/javascript" > 
function validate(form)
{

var vacancy=document.schedule_interview.vacancy.value;
var dointerview=document.schedule_interview.dointerview.value;
var itime=document.schedule_interview.itime.value;
var iplace=document.schedule_interview.iplace.value;
var doiresult=document.schedule_interview.doiresult.value;

if(vacancy=="")
{alert("enter your graduation percentage ");document.schedule_interview.vacancy.focus();return false;}
if(dointerview=="")
{alert("enter your skills ");document.schedule_interview.dointerview.focus();return false;}
if(itime=="")
{alert("enter your graduation percentage ");document.schedule_interview.itime.focus();return false;}
if(iplace=="")
{alert("enter your skills ");document.schedule_interview.iplace.focus();return false;}
if(doiresult=="")
{alert("enter your graduation percentage ");document.schedule_interview.doiresult.focus();return false;}


}
</script>


</head>
<body>
	<form name="schedule_interview" action="/hr/basic1/sint1.action" onsubmit="return validate(this.form)">
		<h5 align="right">
			Your HR id is '
			<s:property value="#session.eid" />
			'
			<s:a href="/hr/basic1/Logout.action">Sign_Out</s:a>
		</h5>
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
				<h1>schedule interview</h1>

				<table align="center">
					<tr>
						<td><s:select list="#session['list']" label="Vacancy Id"
								name="vacancy">
							</s:select></td>
					</tr>
					<tr>
						<td><s:textfield name="dointerview" label="Date of Interview" /></td>
					</tr>
					<tr>
						<td><s:textfield name="itime" label="Interview Time" /></td>
					</tr>
					<tr>
						<td><s:textfield name="iplace" label="Interview Place" /></td>
					</tr>
					<tr>
						<td><s:textfield name="doiresult" label="Date of Result" /></td>
					</tr>
					<tr>
						<td><s:submit value="Submit" /></td>
					</tr>
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
					<a class="facebook" href="http://facebook.com/freewebsitetemplates"
						target="_blank">facebook</a> <a class="twitter"
						href="http://twitter.com/fwtemplates" target="_blank">twitter</a>
				</div>
			</div>
			<div>
				<p>&copy Copyright 2012. All rights reserved</p>
			</div>
		</div>
	</form>
</body>
</html>