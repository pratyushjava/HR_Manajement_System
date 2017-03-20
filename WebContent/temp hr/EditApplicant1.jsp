<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="c" %>
<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script language="javascript" src="../javascript/cal2.js">
</script>

<script language="javascript" src="../javascript/cal_conf2.js"></script>
<script type="text/javascript" src="../javascript/validation.js"> 
/*function validate(form)
{

var f_name=document.sampleform.f_name.value;
var l_name=document.sampleform.l_name.value;
var password=document.sampleform.password.value;
var fname=document.sampleform.fname.value;
var dob=document.sampleform.dob.value;
var mobile=document.sampleform.mobile.value;
var landline=document.sampleform.landline.value;
var email1=document.sampleform.email1.value;
var add1=document.sampleform.add1.value;
var city=document.sampleform.city.value;
var pincode=document.sampleform.pincode.value;
var state=document.sampleform.state.value;
var nationality=document.sampleform.nationality.value;
var ssc_yoa=document.sampleform.ssc_yoa.value;
var ssc_yop=document.sampleform.ssc_yop.value;
var ssc_sch_name=document.sampleform.ssc_sch_name.value;
var ssc_board=document.sampleform.ssc_board.value;
var ssc_sch_percent=document.sampleform.ssc_sch_percent.value;
var hsc_yoa=document.sampleform.hsc_yoa.value;
var hsc_yop=document.sampleform.hsc_yop.value;
var hsc_sch_name=document.sampleform.hsc_sch_name.value;
var hsc_board=document.sampleform.hsc_board.value;
var hsc_sch_percent=document.sampleform.hsc_sch_percent.value;
var g_branch=document.sampleform.g_branch.value;
var g_yoa=document.sampleform.g_yoa.value;
var g_yop=document.sampleform.g_yop.value;
var g_coll_name=document.sampleform.g_coll_name.value;
var g_university=document.sampleform.g_university.value;
var g_percent=document.sampleform.g_percent.value;
var skills=document.sampleform.skills.value;

var alphaExp = /^[a-zA-Z]+$/;
var alphaspaceExp = /^[a-zA-Z ]+$/;
var digitsExp = /^[0-9]+$/;
var percentageExp =  /^[0-9][0-9]\.[0-9][0-9]$/;
var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;


if(f_name=="")
{alert("enter your first name");document.sampleform.f_name.focus();return false;}
if(!f_name.match(alphaExp))
{alert("only Alphabets are allowed in name");document.sampleform.f_name.focus();return false;}
if(l_name=="")
{alert("enter your last name");document.sampleform.l_name.focus();return false;}
if(!l_name.match(alphaExp))
{alert("only Alphabets are allowed in name");document.sampleform.l_name.focus();return false;}
if(password=="")
{alert("enter your password");document.sampleform.password.focus();return false;}
if(fname=="")
{alert("enter your father name");document.sampleform.fname.focus();return false;}
if(!fname.match(alphaspaceExp))
{alert("only Alphabets and Spaces are allowed in father name");document.sampleform.fname.focus();return false;}
if(dob=="")
{alert("enter your date of birth");document.sampleform.dob.focus();return false;}
if(mobile=="")
{alert("enter your mobile number");document.sampleform.mobile.focus();return false;}
if(!mobile.match(digitsExp)|| mobile.length != 10)
{alert("enter valid mobile number");document.sampleform.mobile.focus();return false;}
if(landline=="")
{alert("enter your landline number");document.sampleform.landline.focus();return false;}
if(!landline.match(digitsExp))
{alert("only digits ars allowed");document.sampleform.landline.focus();return false;}
if(landline.length < 11 && landline.length > 15)
{alert("enter valid landline number ");document.sampleform.landline.focus();return false;}
if(email1=="")
{alert("enter your primary email id");document.sampleform.email1.focus();return false;}
if(!email1.match(emailExp))
{alert("enter valid email id");document.sampleform.email1.focus();return false;}
if(add1=="")
{alert("enter your address1 field ");document.sampleform.add1.focus();return false;}
if(city=="")
{alert("enter your city ");document.sampleform.city.focus();return false;}
if(!city.match(alphaExp))
{alert("only alphabets are allowed in city ");document.sampleform.city.focus();return false;}
if(pincode=="")
{alert("enter your pincode ");document.sampleform.pincode.focus();return false;}
if(!pincode.match(digitsExp) || pincode.length != 6 )
{alert("enter valid pincode ");document.sampleform.pincode.focus();return false;}
if(state=="")
{alert("enter your state ");document.sampleform.state.focus();return false;}
if(!state.match(alphaspaceExp))
{alert("only alphabets and spaces are allowed in state ");document.sampleform.state.focus();return false;}
if(nationality=="")
{alert("enter your nationality ");document.sampleform.nationality.focus();return false;}
if(!nationality.match(alphaExp))
{alert("only alphabets are allowed in nationality ");document.sampleform.nationality.focus();return false;}
if(ssc_yoa == "" )
{alert("enter your year of applying in 10th ");document.sampleform.ssc_yoa.focus();return false;}
if(ssc_yoa < 1920 || ssc_yoa > 2011 )
{alert("enter valid year of applying in 10th ");document.sampleform.ssc_yoa.focus();return false;}
if(ssc_yop=="")
{alert("enter your year of passing in 10th ");document.sampleform.ssc_yop.focus();return false;}
if(ssc_yop < 1920 || ssc_yop > 2011 || ssc_yoa > ssc_yop)
{alert("enter valid year of passing in 10th ");document.sampleform.ssc_yop.focus();return false;}
if(ssc_sch_name=="")
{alert("enter your 10th school name ");document.sampleform.ssc_sch_name.focus();return false;}
if(!ssc_sch_name.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in 10th school name ");document.sampleform.ssc_sch_name.focus();return false;}
if(ssc_board=="")
{alert("enter your 10th board name");document.sampleform.ssc_board.focus();return false;}
if(!ssc_board.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in 10th board name");document.sampleform.ssc_board.focus();return false;}
if(ssc_sch_percent=="")
{alert("enter your 10th percentage ");document.sampleform.ssc_sch_percent.focus();return false;}
if(!ssc_sch_percent.match(percentageExp))
{alert("enter your percentage upto 2 decimal places ");document.sampleform.ssc_sch_percent.focus();return false;}
if(hsc_yoa=="")
{alert("enter your year of applying in 12th ");document.sampleform.hsc_yoa.focus();return false;}
if(hsc_yoa < 1920 || hsc_yoa > 2011)
{alert("enter valid year of applying in 12th ");document.sampleform.hsc_yoa.focus();return false;}
if(hsc_yop=="")
{alert("enter your year of passing in 12th  ");document.sampleform.hsc_yop.focus();return false;}
if(hsc_yop < 1920 || hsc_yop > 2011 || hsc_yoa > hsc_yop)
{alert("enter valid year of passing in 12th  ");document.sampleform.hsc_yop.focus();return false;}
if(hsc_sch_name=="")
{alert("enter your 12th school name ");document.sampleform.hsc_sch_name.focus();return false;}
if(!hsc_sch_name.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in 12th school name ");document.sampleform.hsc_sch_name.focus();return false;}
if(hsc_board=="")
{alert("enter your 12th board name ");document.sampleform.hsc_board.focus();return false;}
if(!hsc_board.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in 12th board name ");document.sampleform.hsc_board.focus();return false;}
if(hsc_sch_percent=="")
{alert("enter your 12th percentage ");document.sampleform.hsc_sch_percent.focus();return false;}
if(!hsc_sch_percent.match(percentageExp))
{alert("enter your percentage upto 2 decimal places ");document.sampleform.hsc_sch_percent.focus();return false;}
if(g_branch=="")
{alert("enter your branch in graduation");document.sampleform.g_branch.focus();return false;}
if(!g_branch.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in graduation branch");document.sampleform.g_branch.focus();return false;}
if(g_yoa=="")
{alert("enter your year of applying in graduation ");document.sampleform.g_yoa.focus();return false;}
if(g_yoa < 1920 || g_yoa > 2011)
{alert("enter valid year of applying in graduation ");document.sampleform.g_yoa.focus();return false;}
if(g_yop=="")
{alert("enter your year of passing in graduation ");document.sampleform.g_yop.focus();return false;}
if(g_yop < 1920 || g_yop > 2011 || g_yoa > g_yop)
{alert("enter valid year of passing in graduation ");document.sampleform.g_yop.focus();return false;}
if(g_coll_name=="")
{alert("enter your graduation college name ");document.sampleform.g_coll_name.focus();return false;}
if(!g_coll_name.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in graduation college name ");document.sampleform.g_coll_name.focus();return false;}
if(g_university=="")
{alert("enter your graduation university ");document.sampleform.g_university.focus();return false;}
if(!g_university.match(alphaspaceExp))
{alert("only spaces and alphabets are allowed in graduation university ");document.sampleform.g_university.focus();return false;}
if(g_percent=="")
{alert("enter your graduation percentage ");document.sampleform.g_percent.focus();return false;}
if(!g_percent.match(percentageExp))
{alert("enter your percentage upto 2 decimal places  ");document.sampleform.g_percent.focus();return false;}
if(skills=="")
{alert("enter your skills ");document.sampleform.skills.focus();return false;}

}*/
</script>
<link href="css/sheet1.css" rel="stylesheet" type="text/css">

</head>
<body>

<form  name="sampleform" action="/hr/basic1/editapplicant1.action" method="post">
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
</form>

</body>
</html>