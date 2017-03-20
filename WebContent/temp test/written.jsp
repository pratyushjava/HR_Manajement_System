

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
    <%@taglib uri="/struts-tags" prefix="s" %>
   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="javascript"  src="../javascript/cal2.js"> </script>
<script language="javascript" src="../javascript/cal_conf2.js"></script>

</head>
<body>
<form name="wschdl" action="/hr/interview/wsch.action" method="post">
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
</form> 
</body>
</html>