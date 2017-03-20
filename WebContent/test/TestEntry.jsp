<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>Insert Test Question</title>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />

<script type="text/javascript" > 
function validate(form)
{

var vid=document.testentry.vid.value;
var qtype=document.testentry.qtype.value;
var question=document.testentry.question.value;
var options1=document.testentry.options1.value;
var options2=document.testentry.options2.value;
var options3=document.testentry.options3.value;
var options4=document.testentry.options4.value;

if(vid=="")
{alert("Select vacancy id ");document.testentry.vid.focus();return false;}

if(qtype=="")
{alert("enter question type");document.testentry.qtype.focus();return false;}

if(question=="")
{alert("enter Question ");document.testentry.question.focus();return false;}

if(options1=="")
{alert("enter options1 ");document.testentry.options1.focus();return false;}

if(options2=="")
{alert("enter options2 ");document.testentry.options2.focus();return false;}

if(options3=="")
{alert("enter options3 ");document.testentry.options3.focus();return false;}

if(options4=="")
{alert("enter options4 ");document.testentry.options4.focus();return false;}

}
</script>

</head>
<body>
<form name="testentry" action="/hr/test/question.action" method="post" onsubmit="return validate(this.form)"> 
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
			<h1>Insert Test Question</h1>
						
				<table align="center">
				<c:select list ="l2" label="Vacancy Id" name="vid"> 
				</c:select>
				<c:select name="qtype" label="Question Type" list="#@java.util.HashMap@{'C':'C','C++':'C++','.NET':'.NET','JAVA':'JAVA'}"/>
				<c:textfield name="question" label="Question"/>
				<c:textfield name="options1" label="Option 1"/>
				<c:textfield name="options2" label="Option 2"/>
				<c:textfield name="options3" label="Option 3"/>
				<c:textfield name="options4" label="Option 4"/>
				<c:select  name="ans" label="Answer" list="#@java.util.HashMap@{'1':'1','2':'2','3':'3','4':'4'}"/>
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