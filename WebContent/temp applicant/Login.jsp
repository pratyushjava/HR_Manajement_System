<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="/struts-tags" prefix="c" %>
    <c:if test="#session['aid'] != null">
<% response.sendRedirect("Welcome.jsp");%>
</c:if> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript" > 
function validate(form)
{

	var aemail1=document.loginapplicant.aemail1.value;
	var apassword=document.loginapplicant.apassword.value;
	
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	
	if(aemail1=="")
	{alert("enter your primary email id");document.loginapplicant.aemail1.focus();return false;}
	if(!aemail1.match(emailExp))
	{alert("enter valid email id");document.loginapplicant.aemail1.focus();return false;}
	
	if(apassword=="")
	{alert("enter your password");document.loginapplicant.apassword.focus();return false;}
}
</script>

</head>

<body>
<form name="loginapplicant" action="/hr/applicant/login.action" method="post" onsubmit="return validate(this.form)">
<table>
<tr><td>enter applicant E-mail</td><td><input type="text" name="aemail1"></td></tr>
<tr><td>enter your password</td><td><input type="password" name="apassword"></td></tr>
<tr><td></td><td><a href="ForgetPassword.jsp">Forgot your password?</a></td></tr>
<tr><td></td><td><input type="submit" value="login"></td></tr>
<tr><td><a href="CreateApplicant.jsp">For Signup Click Hear</a></td></tr>
</table>
</form>

</body>
</html>