<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contacts</title>
</head>
<body>
<center>
<form method='POST' action='login.htm'>
<table border="1" cellpadding="5" cellspacing="5" width="796">
<c:if test="${param.error!=null}">
	<p>login fail, check your username and password</p>
</c:if>
<input type="hidden" name="error" value="<c:out value="${requestScope.error}"/>" />
<tr>
   <td colspan="4" width="768">
   <img src='resources/images/top.jpg' width="768" height="253"></td>
</tr>

<tr>
   <td width="118">User Name: </td>
   <td width="161" align="center">
   <input type="text" name="userName" size="20" tabindex="1" />
   <form:errors path="userName" />
   </td>
   <td rowspan="2" width="137" align="center">
   <input type="submit" value="Member Login" size="20" tabindex="3"></td>
   <td rowspan="2" width="334" align="right">
      Millions of member profiles.<br>
      Thousands more joining each day.<br>
      <a href="register_step1.htm">Click Here</a> to join now.
      <br>
      Need Help? <a href="sendEmail.htm">Click Here</a> to Send Email to Admin
   </td>
</tr>

<tr>
   <td width="118">Password:&nbsp; &nbsp; </td>
   <td width="161" align="center">
   <input type="password" name="userPassword" size="20" tabindex="2" />
   </td>
</tr>

</table>
</form>

</center>
</body>
</html>
