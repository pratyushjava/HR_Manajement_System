<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="s"%>
	<s:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</s:if>   
<html>
<head>
<meta charset="utf-8" />
<title>schedule written</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
<script language="javascript"  src="../javascript/cal2.js"> </script>
<script language="javascript" src="../javascript/cal_conf2.js"></script>

<script type="text/javascript" > 
function validate(form)
{

var vid=document.wschdl.vid.value;
var dowritten=document.wschdl.dowritten.value;
var dowresult=document.wschdl.dowresult.value;
var wplace=document.wschdl.wplace.value;
var wtime=document.wschdl.wtime.value;

var alphaspaceExp = /^[a-zA-Z ]+$/;

if(vid=="")
{alert("Select vacancy id ");document.wschdl.vid.focus();return false;}

if(dowritten=="")
{alert("enter Date of written");document.wschdl.dowritten.focus();return false;}

if(dowresult=="")
{alert("enter Date of Result ");document.wschdl.dowresult.focus();return false;}

if(wplace=="")
{alert("enter Place ");document.wschdl.wplace.focus();return false;}
if(!wplace.match(alphaspaceExp))
{alert("omly string is allowed in Written place");document.wschdl.wplace.focus();return false;}

if(wtime=="")
{alert("enter time ");document.wschdl.wtime.focus();return false;}

}
</script>


</head>
<body>
<form name="wschdl" action="/hr/interview/wsch.action" method="post" onsubmit= "return validate(this.form)">
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
			<h1>schedule written</h1>
							
				<table align="center">
				
					<tr><td></td><td>
					<s:select list ="l2" label="Select vacancy id" name="vid"> 
						</s:select></td></tr>
					
					<tr>
						<td>
							Date Of Written
						</td>
						<td>
							<input type="text" name ="dowritten" readonly="readonly"/>
						</td><td><a href="javascript:showCal('Calendar7')"><img src="../images/cal.gif"></a></td>
					</tr>
					
					<tr>
						<td>
							Date Of Result
						</td>
						<td>
						  <input type="text" name="dowresult" readonly="readonly"/>
						</td><td><a href="javascript:showCal('Calendar8')"><img src="../images/cal.gif"></a></td>
					</tr>
					
					<tr>
						<td>Place Of Written</td>
						<td>
						  <input type="text" name="wplace"/>
						</td>
					</tr>
					
					<tr>
						<td>Time Of Written</td>
						
						<td>
							<input type="text" name="wtime"/>
						</td>
						
					</tr>
					
					<tr>
					
					<td colspan="2"> <input align="middle" type="submit" value="SUBMIT"/></td>
					
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