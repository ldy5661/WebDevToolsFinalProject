<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add to Contact List</title>
</head>
<body>
<h2><font face='Verdana, Arial, Helvetica, sans-serif'>Add Contact Form</font></h2>
	<form:form name='addContactForm' method='post' action='addContactResult.htm' commandName="contact">
	<input type='hidden' name='contactName' value='${sessionScope.contactName}'>

	<table width='610' border='1' bgcolor='#EFEFEF' cellpadding='2' cellspacing='0' bordercolor='#EFEFEF' bordercolorlight='#EFEFEF' bordercolordark='#CCCCCC'>
	<tr nowrap>
	<td align='left' width='29%' height='2' valign='baseline' bgcolor='#EFEFEF'>
	<div align='left'><b><font size='2' face='Verdana, Arial, Helvetica, sans-serif'>Contact to be Added</font></b></div>
	</td>

	<td width='71%' height='2' valign='baseline'>
	<b><form:input  path='contactName' value='${sessionScope.contactName}' readonly="true" /></b>
	</td>
	</tr>

	<tr nowrap>
	<td align='left' width='29%' height='82' valign='top' bgcolor='#EFEFEF'>
	<b><font face='Verdana, Arial, Helvetica, sans-serif' size='2'>Comments:&nbsp;</font></b>
	</td>
	<td width='71%' height='82' valign='top' bgcolor='#FFFFFF'>
	<form:textarea path="comments" cols='58' rows='7' wrap='VIRTUAL' />
	<br><font size='2'>Enter up to 4000 characters. HTML cannot be displayed.</font>
	</td>
	</tr>
	</table>

	<p><input type='submit' value='Add contact'>&nbsp;&nbsp;&nbsp;&nbsp;
	   <input type='reset' value='Clear form'>
	</p>

	</form:form>
</body>
</html>