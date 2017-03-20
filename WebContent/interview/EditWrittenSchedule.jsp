<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>Edit written schedules</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
<script type="text/javascript" > 
function validate(form)
{

var vid=document.editwrtnschdl.vid.value;
var dowritten=document.editwrtnschdl.dowritten.value;
var dowresult=document.editwrtnschdl.dowresult.value;
var wplace=document.editwrtnschdl.wplace.value;
var wtime=document.editwrtnschdl.wtime.value;

var alphaspaceExp = /^[a-zA-Z ]+$/;

if(vid=="")
{alert("Select vacancy id ");document.editwrtnschdl.vid.focus();return false;}

if(dowritten=="")
{alert("enter Date of written");document.editwrtnschdl.dowritten.focus();return false;}

if(dowresult=="")
{alert("enter Date of Result ");document.editwrtnschdl.dowresult.focus();return false;}

if(wplace=="")
{alert("enter Place of written");document.editwrtnschdl.wplace.focus();return false;}
if(!wplace.match(alphaspaceExp))
{alert("omly string is allowed in Written place");document.editwrtnschdl.wplace.focus();return false;}

if(wtime=="")
{alert("enter time of written ");document.editwrtnschdl.wtime.focus();return false;}

}
</script>

</head>
<body>
<form name="editwrtnschdl" action="/hr/interview/updatewschdl.action" method="post" onsubmit= "return validate(this.form)">
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
			<h1>Edit written schedules </h1>
			
						
			<!-- action="/projectname/namespace/actionname.action" -->
			<br><br>
			
			<table align="center">
			<c:iterator id="itrtr" value="ws">
			<tr><td>written schedule id</td><td><input type="text" name="wscid" value=<c:property value="#itrtr.wscid" />  readonly="readonly"/></td></tr>
			<tr><td>Vacancy Id</td><td><input type="text"  name="vid"  value=<c:property value="#itrtr.vid" />  readonly="readonly"/></td></tr>
			<tr><td> Date Of Written</td><td><input type="text" name="dowritten" value=<c:property value="#itrtr.dowritten" /> /></td><td><a href="javascript:showCal('Calendar9')"><img src="../images/cal.gif"></a></td></tr>
			<tr><td>Date Of Result</td><td><input type="text" name="dowresult" value=<c:property value="#itrtr.dowresult" /> /></td><td><a href="javascript:showCal('Calendar10')"><img src="../images/cal.gif"></a></td></tr>
			<tr><td><c:textfield name="wplace" label="Place of Written"/></td></tr>
			<tr><td><c:textfield name="wtime" label="Time of Written"/></td></tr>
			 <td colspan="2"> <input align="middle" type="submit" value="SUBMIT"/></td>
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