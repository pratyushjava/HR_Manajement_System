<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>Edit interview schedules</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />

<script type="text/javascript" > 
function validate(form)
{


var dointerview=document.editinterview.dointerview.value;
var doiresult=document.editinterview.doiresult.value;
var itime=document.editinterview.itime.value;


if(dointerview=="")
{alert("enter your skills ");document.editinterview.dointerview.focus();return false;}
if(doiresult=="")
{alert("enter your graduation percentage ");document.editinterview.doiresult.focus();return false;}
if(itime=="")
{alert("enter your graduation percentage ");document.editinterview.itime.focus();return false;}

}
</script>

</head>
<body>
<form name="editinterview" action="/hr/basic1/editintsch1.action" method="post" onsubmit="return validate(this.form)">
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
			<h1>Edit interview schedules</h1>
					
		

	<table align="center">
		<c:iterator id="itera" value="isch">
		<tr><td>Scheduled Interview Id</td><td><input type="text" name="isid" readonly="readonly" value=<c:property value="#itera.isid"/> ></td></tr>
		<tr><td>Vacancy Id</td><td><input type="text" readonly="readonly" name="vacancy" value=<c:property value="#itera.vacancy" /> /></td></tr>
		<tr><td>Employee Id</td><td><input type="text" name="eid" readonly="readonly" value=<c:property value="#itera.eid" /> /></td></tr>
		<tr><td>Date Of Interview</td><td><input type="text" name="dointerview" value=<c:property value="#itera.dointerview" /> ></td></tr>
		<tr><td>Date Of Interview Result</td><td><input type="text" name="doiresult" value=<c:property value="#itera.doiresult" /> ></td></tr>
		<tr><td>Interview Place</td><td><input type="text" name="iplace" readonly="readonly" value=<c:property value="#itera.iplace" /> ></td><td>
		<tr><td>Interview Time</td><td><input type="text" name="itime" value=<c:property value="#itera.itime" /> ></td></tr>
		<c:submit value="Submit"/>
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