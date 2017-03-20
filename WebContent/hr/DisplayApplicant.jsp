<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags"  prefix="c"%>
	<c:if test="#session['eid'] == null">
<% response.sendRedirect("index1.html");%>
</c:if>   
<html>
<head>
<meta charset="utf-8" />
<title>Search Applicant</title>
<script language="javascript" src="../javascript/cal2.js">
</script>

<script language="javascript" src="../javascript/cal_conf2.js"></script>
<script type="text/javascript" src="../javascript/validation.js"></script>
<link rel="stylesheet" type="text/css" href="../style.css" media="all" />
</head>
<body>
<form  name="sampleform" action="/hr/applicant/edit.action" method="post">
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
			<h1>Search Applicant</h1>
			
<a href="../hr/SearchApplicant.jsp">Find Another Applicant</a>

<!-- action="/projectname/namespace/actionname.action" -->

<table align="center">
<c:iterator id="itera" value="#session.appli">
<tr><td></td><td>First Name<span class="mandatory"> </span></td> <td>Middle Name</td><td>Last Name<span class="mandatory"> </span></td> </tr>
<tr><td>Enter name</td><td><input type="text" readonly="readonly" name="afname" value=<c:property value="#itera.afname"/> /> </td> <td><input type="text" readonly="readonly" name="amname" value=<c:property value="#itera.amname"/> ></input> </td><td><input type="text" readonly="readonly" name="alname" value=<c:property value="#itera.alname"/> /> </td> </tr>
<tr>
      <td>Gender<span class="mandatory"> </span></td>
      <td><input type="radio" name="agender" value="m" checked="checked"/>male</td>
	  <td><input type="radio" name="agender" value="f" />female</td></tr>

<tr>
      <td>Father Name<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="frname" value=<c:property value="#itera.frname"/> /></td></tr>
<tr>
      <td>Date Of Birth(mm/dd/yyyy)<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="adob" readonly="" value=<c:property value="#itera.adob"/> /></td></tr>
<tr>
      <td>Mobile Number<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="amobile" value=<c:property value="#itera.amobile"/> /></td></tr>
<tr>
      <td>Landline Number<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="allno" value=<c:property value="#itera.allno"/> /></td></tr>
<tr>  
      <td>Alternate Email id</td>
	  <td><input type="text" readonly="readonly" name="aemail2" value=<c:property value="#itera.aemail2"/> ></input></td></tr>
<tr>
	  <td>Communication Address:</td></tr>
<tr>
      <td>Address line1<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="aadd1" value=<c:property value="#itera.aadd1"/> /></td></tr>
<tr>
	<td>Address line2</td>
	<td><input type="text" readonly="readonly" name="aadd2" value=<c:property value="#itera.aadd2"/> /></td></tr>
<tr>
      <td>City<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="acity" value=<c:property value="#itera.acity"/> /></td></tr>
<tr>
      <td>Pincode<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="apincode" value=<c:property value="#itera.apincode"/>  /></td></tr>
<tr>
      <td>State<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="astate" value=<c:property value="#itera.astate"/> /></td></tr>
<tr>
      <td>Nationality<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="anationality" value=<c:property value="#itera.anationality"/> /></td></tr>

<tr><td>Education Details:</td></tr>

<tr>
      <td>SSC</td>
    </tr>
<tr>
      <td>Year of Applying<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="sscyoa" size="4" value=<c:property value="#itera.sscyoa"/> /></td>
      
      <td>Year of Passing<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="sscyop" size="4" value=<c:property value="#itera.sscyop"/> /></td>
</tr>
<tr>
      <td>School Name<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="sscsch" value=<c:property value="#itera.sscsch"/> /></td>
	  <td>Board<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="sscboard" value=<c:property value="#itera.sscboard"/> /></td>
</tr>
<tr>
      <td>Percentage<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="sscpercent" value=<c:property value="#itera.sscpercent"/> /></td></tr>

<tr><td>HSC</td></tr>
<tr>
      <td>Year of Applying<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="hscyoa" size="4" value=<c:property value="#itera.hscyoa"/> /></td>
      <td>Year of Passing<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="hscyop" size="4" value=<c:property value="#itera.hscyop"/> /></td>
</tr>
<tr>
      <td>School Name<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="hscsch" value=<c:property value="#itera.hscsch"/> /></td>
	  <td>Board<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="hscboard" value=<c:property value="#itera.hscboard"/> /></td>
</tr>
<tr>
      <td>Percentage<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="hscpercent" value=<c:property value="#itera.hscpercent"/> /></td></tr>


<tr><td>Graduation Details</td></tr>
<tr>
      <td>Course</td>
	<td>
		<input type="text" readonly="readonly" value=<c:property value="#itera.gcourse"/> /> 
	</td>
	  <td>Branch<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="gbranch" value=<c:property value="#itera.gbranch"/> /></td></tr>
<tr>
      <td>Year of Applying<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="gyoa" size="4" value=<c:property value="#itera.gyoa"/> /></td>
      <td>Year of Passing<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="gyob" size="4" value=<c:property value="#itera.gyob"/> /></td>
</tr>
<tr>
      <td>College Name<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="gcoll" value=<c:property value="#itera.gcoll"/> /></td>
	  <td>University<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="guni" value=<c:property value="#itera.guni" /> /></td>
</tr>
	<tr><td>Percentage<span class="mandatory"> </span></td>
	<td><input type="text" readonly="readonly" name="gpercent" value=<c:property value="#itera.gpercent" /> /></td></tr>

<tr><td>Post Graduation Details</td></tr>
<tr><td>Course</td>
	<td>
	<input type="text" readonly="readonly" value=<c:property value="#itera.pgcourse"/> />
	</td>
	<td>Branch</td>
	<td><input type="text" readonly="readonly" name="pgbranch" value=<c:property value="#itera.pgbranch" /> ></input></td></tr>
<tr>
	<td>Year of Applying</td>
	<td><input type="text" readonly="readonly" name="pgyoa" value=<c:property value="#itera.pgyoa" /> ></input> </td>
    <td>Year of Passing</td>
    <td><input type="text" readonly="readonly" name="pgyop" value=<c:property value="#itera.pgyop" /> ></input></td>
</tr>
<tr>
	<td>College Name</td><td><input type="text" readonly="readonly" name="pgcoll" value=<c:property value="#itera.pgcoll" /> ></input></td>
	<td>University</td><td><input type="text" readonly="readonly" name="pguniv" value=<c:property value="#itera.pguniv" /> ></input></td>
</tr>
<tr>
	<td>Percentage</td>
	<td><input type="text" readonly="readonly" name="pgpercent" value=<c:property value="#itera.pguniv" /> ></input></td></tr>
<tr>
      <td>Skills<span class="mandatory"> </span></td>
      <td><input type="text" readonly="readonly" name="skills" value=<c:property value="#itera.skills" />  /></td></tr>
<tr>
      <td>Others</td>
      <td><textarea name="others" readonly="readonly" value=<c:property value="#itera.others" /> ></textarea></td></tr>

<tr><td>Experience Details:</td></tr>
<tr>
	<td>No of Months</td>
    <td><input type="text" readonly="readonly" value=<c:property value="#itera.nom"/> /></td>
    <td>No of Years</td>
    <td><input type="text" readonly="readonly" value=<c:property value="#itera.noy"/> /></td>
</tr>
<tr><td>Company Name</td><td><input type="text" readonly="readonly" name="cname" value=<c:property value="#itera.cname"/> ></input></td></tr>
<tr><td>Post Name</td><td><input type="text" readonly="readonly" name="postname"  value=<c:property value="#itera.postname" />></input></td></tr>
<tr><td>Salary</td><td><input type="text" readonly="readonly" name="salary" value=<c:property value="#itera.salary" /> ></input></td></tr>

</c:iterator>

</table>
<a href="../hr/SearchApplicant.jsp">Find Another Applicant</a>

			
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