<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Change My Password</title>
</head>
<body>
<form name='changePasswordForm' method='post' action="changePassword.htm">
		<p><table width=900 bgcolor='#FFFFEF' border='1' cellpadding='2' cellspacing='4'>
		<tr bgcolor='#EFEFCE'>
		   <td colspan='2'><b>Password Change Form</b></td>
		</tr>

		<TR>
		<TD><b>Please Enter your old password: </b></TD>
		<TD><input type='password' name='oldpass' value=''>
		<font color="red">${requestScope.oldPasswordError}</font>
		</TD>
		</TR>
		   
		<TR>
		<TD><b>Enter NEW password: </b></TD>
		<TD><input type='password' name='newpass1' value=''>
		<font color="red">${requestScope.newPassword1Error}</font>
		<font color="red">${requestScope.passwordNotMatchError}</font><br>
		<font color="red">${requestScope.newPassword1NotValidError}</font>
		</TD>
		</TR>
		   
		<TR>
		<TD><b>Enter NEW password again: </b></TD>
		<TD><input type='password' name='newpass2' value=''>
		<font color="red">${requestScope.newPassword2Error}</font>
		</TD>
		</TR>
		<TR>
        <TD COLSPAN='6' ALIGN='center'><input type='submit' value='Change Password'></TD>
        </TR>
        </table>
        <input type="hidden" name="userName" value="${sessionScope.loggedInUser.userName }" />
</form>
</body>
</html>