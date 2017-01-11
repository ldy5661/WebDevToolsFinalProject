<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Send Message to ${sessionScope.contactName}</title>
</head>
<body>
<h2><font face='Verdana, Arial, Helvetica, sans-serif'>Send Message Form</font></h2>
		<form:form name='sendMessageForm' method='post' action='replyMessage.htm' commandName="message">
		<table width='610' border='1' bgcolor='#EFEFEF' cellpadding='2' cellspacing='0' bordercolor='#EFEFEF' bordercolorlight='#EFEFEF' bordercolordark='#CCCCCC'>
		<tr nowrap>
		<td align='left' width='29%' height='2' valign='baseline' bgcolor='#EFEFEF'>
		<div align='left'><b><font size='2' face='Verdana, Arial, Helvetica, sans-serif'>To:</font></b></div>
		</td>

		<td width='71%' height='2' valign='baseline'>
		<b><form:input path='userName' value='${sessionScope.contactName}' readonly="true" /></b>
		</td>
		</tr>

		<tr nowrap>
		<td align='left' width='29%' height='6' valign='baseline' bgcolor='#EFEFEF'>
		<b><font face='Verdana, Arial, Helvetica, sans-serif' size='2'><b>From:&nbsp;</b></font></b></td>
		<td width='70%' height='6' valign='baseline'>
		<b><form:input path='fromUser' value='${sessionScope.loggedInUserName}' readonly="true" /></b>
		</td>
		</tr>

		<tr nowrap>
		<td align='left' width='29%' height='82' valign='top' bgcolor='#EFEFEF'>
		<b><font face='Verdana, Arial, Helvetica, sans-serif' size='2'>Message:&nbsp;</font></b>
		</td>
		<td width='71%' height='82' valign='top' bgcolor='#FFFFFF'>
		<form:textarea path="message" name='message' cols='58' rows='7' wrap='VIRTUAL' />
		<br><font size='2'>Enter up to 4000 characters. HTML cannot be displayed.</font>
		</td>
		</tr>
		</table>

		<p><input type='submit' value='Send message'>&nbsp;&nbsp;&nbsp;&nbsp;
		</p>
		</form:form>

</body>
</html>