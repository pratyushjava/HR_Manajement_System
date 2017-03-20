<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>Edit Details</title>
<script language="javascript" src="../javascript/cal2.js"></script>

<script language="javascript" src="../javascript/cal_conf2.js"></script>

<link rel="stylesheet" type="text/css" href="../style.css" media="all" />

<script type="text/javascript" > 
function validate(form)
{

var afname=document.sampleform.afname.value;
var alname=document.sampleform.alname.value;
var apassword=document.sampleform.apassword.value;
var frname=document.sampleform.frname.value;

var adob=document.sampleform.adob.value;
var amobile=document.sampleform.amobile.value;
var allno=document.sampleform.allno.value;
var aemail2=document.sampleform.aemail2.value;
var aadd1=document.sampleform.aadd1.value;

var acity=document.sampleform.acity.value;
var apincode=document.sampleform.apincode.value;
var astate=document.sampleform.astate.value;
var anationality=document.sampleform.anationality.value;

var sscyoa=document.sampleform.sscyoa.value;
var sscyop=document.sampleform.sscyop.value;
var sscsch=document.sampleform.sscsch.value;
var sscboard=document.sampleform.sscboard.value;
var sscpercent=document.sampleform.sscpercent.value;

var hscyoa=document.sampleform.hscyoa.value;
var hscyop=document.sampleform.hscyop.value;
var hscsch=document.sampleform.hscsch.value;
var hscboard=document.sampleform.hscboard.value;
var hscpercent=document.sampleform.hscpercent.value;

var gbranch=document.sampleform.gbranch.value;
var gyoa=document.sampleform.gyoa.value;
var gyob=document.sampleform.gyob.value;
var gcoll=document.sampleform.gcoll.value;
var guni=document.sampleform.guni.value;
var gpercent=document.sampleform.gpercent.value;
var skills=document.sampleform.skills.value;


var alphaExp = /^[a-zA-Z]+$/;
var alphaspaceExp = /^[a-zA-Z ]+$/;
var digitsExp = /^[0-9]+$/;
var percentageExp =  /^[0-9][0-9]\.[0-9][0-9]$/;
var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;



if(afname=="")
{alert("enter your first name");document.sampleform.afname.focus();return false;}
if(!afname.match(alphaExp))
{alert("only Alphabets are allowed in name");document.sampleform.afname.focus();return false;}
if(alname=="")
{alert("enter your last name");document.sampleform.alname.focus();return false;}
if(!alname.match(alphaExp))
{alert("only Alphabets are allowed in name");document.sampleform.alname.focus();return false;}
if(apassword=="")
{alert("enter your password");document.sampleform.apassword.focus();return false;}
if(frname=="")
{alert("enter your father name");document.sampleform.frname.focus();return false;}
if(!frname.match(alphaspaceExp))
{alert("only Alphabets and Spaces are allowed in father name");document.sampleform.frname.focus();return false;}

if(adob=="")
{alert("enter your date of birth");document.sampleform.adob.focus();return false;}
if(amobile=="")
{alert("enter your amobile number");document.sampleform.amobile.focus();return false;}
if(!amobile.match(digitsExp)|| amobile.length != 10)
{alert("enter valid mobile number");document.sampleform.amobile.focus();return false;}
if(allno=="")
{alert("enter your landline number");document.sampleform.allno.focus();return false;}
if(!allno.match(digitsExp))
{alert("only digits ars allowed in ladline no");document.sampleform.allno.focus();return false;}
if(allno.length < 11 && allno.length > 15)
{alert("enter valid landline number ");document.sampleform.allno.focus();return false;}
if(!aemail2.match(emailExp))
{alert("enter valid email id");document.sampleform.aemail2.focus();return false;}

if(aadd1=="")
{alert("enter your address1 field ");document.sampleform.aadd1.focus();return false;}

if(acity=="")
{alert("enter your city ");document.sampleform.acity.focus();return false;}
if(!acity.match(alphaExp))
{alert("only alphabets are allowed in city ");document.sampleform.acity.focus();return false;}

if(apincode=="")
{alert("enter your pincode ");document.sampleform.apincode.focus();return false;}
if(!apincode.match(digitsExp) || apincode.length != 6 )
{alert("enter valid pincode ");document.sampleform.apincode.focus();return false;}
if(astate=="")
{alert("enter your state ");document.sampleform.astate.focus();return false;}
if(!astate.match(alphaspaceExp))
{alert("only alphabets and spaces are allowed in state ");document.sampleform.astate.focus();return false;}

if(anationality=="")
{alert("enter your nationality ");document.sampleform.anationality.focus();return false;}
if(!anationality.match(alphaExp))
{alert("only alphabets are allowed in nationality ");document.sampleform.anationality.focus();return false;}

if(sscyoa == "" )
{alert("enter your year of applying in 10th ");document.sampleform.sscyoa.focus();return false;}
if(sscyoa < 1920 || sscyoa > 2011 )
{alert("enter valid year of applying in 10th ");document.sampleform.sscyoa.focus();return false;}
if(sscyop=="")
{alert("enter your year of passing in 10th ");document.sampleform.sscyop.focus();return false;}
if(sscyop < 1920 || sscyop > 2011 || sscyoa > sscyop)
{alert("enter valid year of passing in 10th ");document.sampleform.sscyop.focus();return false;}
if(sscsch=="")
{alert("enter your 10th school name ");document.sampleform.sscsch.focus();return false;}
if(!sscsch.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in 10th school name ");document.sampleform.sscsch.focus();return false;}
if(sscboard=="")
{alert("enter your 10th board name");document.sampleform.sscboard.focus();return false;}
if(!sscboard.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in 10th board name");document.sampleform.sscboard.focus();return false;}
if(sscpercent=="")
{alert("enter your 10th percentage ");document.sampleform.sscpercent.focus();return false;}
if(!sscpercent.match(percentageExp))
{alert("enter your percentage upto 2 decimal places ");document.sampleform.sscpercent.focus();return false;}

if(hscyoa=="")
{alert("enter your year of applying in 12th ");document.sampleform.hscyoa.focus();return false;}
if(hscyoa < 1920 || hscyoa > 2011)
{alert("enter valid year of applying in 12th ");document.sampleform.hscyoa.focus();return false;}
if(hscyop=="")
{alert("enter your year of passing in 12th  ");document.sampleform.hscyop.focus();return false;}
if(hscyop < 1920 || hscyop > 2011 || hscyoa > hscyop)
{alert("enter valid year of passing in 12th  ");document.sampleform.hscyop.focus();return false;}
if(hscsch=="")
{alert("enter your 12th school name ");document.sampleform.hscsch.focus();return false;}
if(!hscsch.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in 12th school name ");document.sampleform.hscsch.focus();return false;}
if(hscboard=="")
{alert("enter your 12th board name ");document.sampleform.hscboard.focus();return false;}
if(!hscboard.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in 12th board name ");document.sampleform.hscboard.focus();return false;}
if(hscpercent=="")
{alert("enter your 12th percentage ");document.sampleform.hscpercent.focus();return false;}
if(!hscpercent.match(percentageExp))
{alert("enter your percentage upto 2 decimal places ");document.sampleform.hscpercent.focus();return false;}

if(gbranch=="")
{alert("enter your branch in graduation");document.sampleform.gbranch.focus();return false;}
if(!gbranch.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in graduation branch");document.sampleform.gbranch.focus();return false;}
if(gyoa=="")
{alert("enter your year of applying in graduation ");document.sampleform.gyoa.focus();return false;}
if(gyoa < 1920 || gyoa > 2011)
{alert("enter valid year of applying in graduation ");document.sampleform.gyoa.focus();return false;}
if(gyob=="")
{alert("enter your year of passing in graduation ");document.sampleform.gyob.focus();return false;}
if(gyob < 1920 || gyob > 2013 || gyoa > gyob)
{alert("enter valid year of passing in graduation ");document.sampleform.gyob.focus();return false;}
if(gcoll=="")
{alert("enter your graduation college name ");document.sampleform.gcoll.focus();return false;}
if(!gcoll.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in graduation college name ");document.sampleform.gcoll.focus();return false;}
if(guni=="")
{alert("enter your graduation university ");document.sampleform.guni.focus();return false;}
if(!guni.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in graduation university ");document.sampleform.guni.focus();return false;}
if(gpercent=="")
{alert("enter your graduation percentage ");document.sampleform.gpercent.focus();return false;}
if(!gpercent.match(percentageExp))
{alert("enter your percentage upto 2 decimal places  ");document.sampleform.gpercent.focus();return false;}
if(skills=="")
{alert("enter your skills ");document.sampleform.skills.focus();return false;}

}
</script>


</head>
<body>
<form  name="sampleform" action="/hr/basic1/editapplicant1.action" method="post" onsubmit=" return validate(this.form)">
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
			<h1>Edit Applicant Details</h1>
			
<!-- action="/projectname/namespace/actionname.action" -->

<table align="center">
<c:iterator id="itera" value="#session.sappli">
<tr><td></td><td>First Name<span class="mandatory">*</span></td> <td>Middle Name</td><td>Last Name<span class="mandatory">*</span></td> </tr>
<tr><td>Enter name</td><td><input type="text" name="afname" value=<c:property value="#itera.afname"/> /> </td> <td><input type="text" name="amname" value=<c:property value="#itera.amname"/> ></input> </td><td><input type="text" name="alname" value=<c:property value="#itera.alname"/> /> </td> </tr>
<tr>
      <td>Gender<span class="mandatory">*</span></td>
      <td><input type="radio" name="agender" value="m" checked="checked"/>male</td>
	  <td><input type="radio" name="agender" value="f" />female</td></tr>
<tr>
      <td>Password<span class="mandatory">*</span></td>
      <td><input type="password" name="apassword" value=<c:property value="#itera.apassword"/> /></td></tr>
<tr>
      <td>Father Name<span class="mandatory">*</span></td>
      <td><input type="text" name="frname" value=<c:property value="#itera.frname"/> /></td></tr>
<tr>
      <td>Date Of Birth(mm/dd/yyyy)<span class="mandatory">*</span></td>
      <td><input type="text" name="adob" readonly="" value=<c:property value="#itera.adob"/> /><a href="javascript:showCal('Calendar1')"><img src="../images/cal.gif"></a></td></tr>
<tr>
      <td>Mobile Number<span class="mandatory">*</span></td>
      <td><input type="text" name="amobile" value=<c:property value="#itera.amobile"/> /></td></tr>
<tr>
      <td>Landline Number<span class="mandatory">*</span></td>
      <td><input type="text" name="allno" value=<c:property value="#itera.allno"/> /></td></tr>
<tr>  
      <td>Alternate Email id</td>
	  <td><input type="text" name="aemail2" value=<c:property value="#itera.aemail2"/> ></input></td></tr>
<tr>
	  <td>Communication Address:</td></tr>
<tr>
      <td>Address line1<span class="mandatory">*</span></td>
      <td><input type="text" name="aadd1" value=<c:property value="#itera.aadd1"/> /></td></tr>
<tr>
	<td>Address line2</td>
	<td><input type="text" name="aadd2" value=<c:property value="#itera.aadd2"/> /></td></tr>
<tr>
      <td>City<span class="mandatory">*</span></td>
      <td><input type="text" name="acity" value=<c:property value="#itera.acity"/> /></td></tr>
<tr>
      <td>Pincode<span class="mandatory">*</span></td>
      <td><input type="text" name="apincode" value=<c:property value="#itera.apincode"/>  /></td></tr>
<tr>
      <td>State<span class="mandatory">*</span></td>
      <td><input type="text" name="astate" value=<c:property value="#itera.astate"/> /></td></tr>
<tr>
      <td>Nationality<span class="mandatory">*</span></td>
      <td><input type="text" name="anationality" value=<c:property value="#itera.anationality"/> /></td></tr>

<tr><td>Education Details:</td></tr>

<tr>
      <td>SSC</td>
    </tr>
<tr>
      <td>Year of Applying<span class="mandatory">*</span></td>
      <td><input type="text" name="sscyoa" size="4" value=<c:property value="#itera.sscyoa"/> /></td>
      
      <td>Year of Passing<span class="mandatory">*</span></td>
      <td><input type="text" name="sscyop" size="4" value=<c:property value="#itera.sscyop"/> /></td>
</tr>
<tr>
      <td>School Name<span class="mandatory">*</span></td>
      <td><input type="text" name="sscsch" value=<c:property value="#itera.sscsch"/> /></td>
	  <td>Board<span class="mandatory">*</span></td>
      <td><input type="text" name="sscboard" value=<c:property value="#itera.sscboard"/> /></td>
</tr>
<tr>
      <td>Percentage<span class="mandatory">*</span></td>
      <td><input type="text" name="sscpercent" value=<c:property value="#itera.sscpercent"/> /></td></tr>

<tr><td>HSC</td></tr>
<tr>
      <td>Year of Applying<span class="mandatory">*</span></td>
      <td><input type="text" name="hscyoa" size="4" value=<c:property value="#itera.hscyoa"/> /></td>
      <td>Year of Passing<span class="mandatory">*</span></td>
      <td><input type="text" name="hscyop" size="4" value=<c:property value="#itera.hscyop"/> /></td>
</tr>
<tr>
      <td>School Name<span class="mandatory">*</span></td>
      <td><input type="text" name="hscsch" value=<c:property value="#itera.hscsch"/> /></td>
	  <td>Board<span class="mandatory">*</span></td>
      <td><input type="text" name="hscboard" value=<c:property value="#itera.hscboard"/> /></td>
</tr>
<tr>
      <td>Percentage<span class="mandatory">*</span></td>
      <td><input type="text" name="hscpercent" value=<c:property value="#itera.hscpercent"/> /></td></tr>


<tr><td>Graduation Details</td></tr>
<tr>
      <td>Course</td>
	<td>
		<select name="gcourse">
		<option value="others" selected="selected">Others</option>
		<option value="be" >B.E.</option>
		<option value="btech">B.Tech.</option>
		<option value="bca">BCA</option>
		<option value="bsc">B.Sc.</option>
		<option value="bcom">B.Com.</option>
		</select>
	</td>
	  <td>Branch<span class="mandatory">*</span></td>
      <td><input type="text" name="gbranch" value=<c:property value="#itera.gbranch"/> /></td></tr>
<tr>
      <td>Year of Applying<span class="mandatory">*</span></td>
      <td><input type="text" name="gyoa" size="4" value=<c:property value="#itera.gyoa"/> /></td>
      <td>Year of Passing<span class="mandatory">*</span></td>
      <td><input type="text" name="gyob" size="4" value=<c:property value="#itera.gyob"/> /></td>
</tr>
<tr>
      <td>College Name<span class="mandatory">*</span></td>
      <td><input type="text" name="gcoll" value=<c:property value="#itera.gcoll"/> /></td>
	  <td>University<span class="mandatory">*</span></td>
      <td><input type="text" name="guni" value=<c:property value="#itera.guni" /> /></td>
</tr>
	<tr><td>Percentage<span class="mandatory">*</span></td>
	<td><input type="text" name="gpercent" value=<c:property value="#itera.gpercent" /> /></td></tr>

<tr><td>Post Graduation Details</td></tr>
<tr><td>Course</td>
	<td>
	<select name="pgcourse">
	<option value="others" selected="selected">Others</option>
	<option value="me" >M.E.</option>
	<option value="mtech">M.Tech.</option>
	<option value="mca">MCA</option>
	<option value="msc">M.Sc.</option>
	<option value="mcom">M.Com.</option>
	</select>
	</td>
	<td>Branch</td>
	<td><input type="text" name="pgbranch" value=<c:property value="#itera.pgbranch" /> ></input></td></tr>
<tr>
	<td>Year of Applying</td>
	<td><input type="text" name="pgyoa" value=<c:property value="#itera.pgyoa" /> ></input> </td>
    <td>Year of Passing</td>
    <td><input type="text" name="pgyop" value=<c:property value="#itera.pgyop" /> ></input></td>
</tr>
<tr>
	<td>College Name</td><td><input type="text" name="pgcoll" value=<c:property value="#itera.pgcoll" /> ></input></td>
	<td>University</td><td><input type="text" name="pguniv" value=<c:property value="#itera.pguniv" /> ></input></td>
</tr>
<tr>
	<td>Percentage</td>
	<td><input type="text" name="pgpercent" value=<c:property value="#itera.pguniv" /> ></input></td></tr>
<tr>
      <td>Skills<span class="mandatory">*</span></td>
      <td><input type="text" name="skills" value=<c:property value="#itera.skills" />  /></td></tr>
<tr>
      <td>Others</td>
      <td><textarea name="others" ><c:property value="#itera.others" /></textarea></td></tr>

<tr><td>Experience Details:</td></tr>
<tr>
	<td>No of Months</td>
    <td><select name="nom">
    <option value="0" selected="selected">0</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
    </select></td>
    <td>No of Years</td>
    <td><select name="noy">
    <option value="0" selected="selected">0</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
    <option value="5">5</option>
    <option value="6">6</option>
    <option value="7">7</option>
    <option value="8">8</option>
    <option value="9">9</option>
    <option value="10">10</option>
    <option value="11">11</option>
    <option value="12">12</option>
    </select></td>
</tr>
<tr><td>Company Name</td><td><input type="text" name="cname" value=<c:property value="#itera.cname"/> ></input></td></tr>
<tr><td>Post Name</td><td><input type="text" name="postname"  value=<c:property value="#itera.postname" />></input></td></tr>
<tr><td>Salary</td><td><input type="text" name="salary" value=<c:property value="#itera.salary" /> ></input></td></tr>
<tr><td><input type="submit" value="submit"></td></tr>
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
		</div></form>
	</body>
</html>