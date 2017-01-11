<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register_02</title>
<script language="JavaScript" src="resources/javascript/matchnet.js"></script>
<script language="JavaScript" src="resources/javascript/region3.js"></script>
<script language="JavaScript" src="resources/is/im.js"></script>
<link rel="stylesheet" type="text/css" href="resources/lib/css/as.css">
<link rel="stylesheet" type="text/css" href="resources/lib/css/common.css">
</head>
<body marginheight=0 marginwidth=0 topmargin=0 leftmargin=0 text="#000000" bgcolor="#ffffff">

<center>

<table border='0' cellpadding="5" cellspacing="5" >
<tr>
	<td><img src="resources/images/page_message.gif" width="20" height="20" ></td>
	<td class="message" >For your privacy, your Username cannot contain any part of your email address.</td>
</tr>
</table><br>

<table border="1" cellspacing="5" cellpadding="5">
<form:form name="frmWelcome" method="post" commandName="user" action="register_step3.htm"  enctype="multipart/form-data" onSubmit="return validateFormfrmWelcome()">
<tr>
	<td colspan="2" align="center"><img src="resources/images/confirm_headline.gif" width="333" height="57" alt="congratulations!"></td>
</tr>

<tr>
	<td colspan="2" align="center"><font class="stdBold">Double check your username and password, you will need them. </font></td>
</tr>

<tr>
	<td align="right"><font class="bold">User Name:&nbsp;</font></td>
	<td><c:out value="${sessionScope.user1.userName}" /></td>
</tr>

<tr>
	<td align="right"><font class="bold">Password:&nbsp;</font></td>
	<td><c:out value="${sessionScope.user1.userPassword}" /></td>
</tr>

<tr>
	<td align="right"><font class="bold">Date of Birth:&nbsp;</font></td>
	<td><c:out value="${sessionScope.user1.dOBmonth}" />/<c:out value="${sessionScope.user1.dOBday}" />/<c:out value="${sessionScope.user1.dOByear}" /></td>
</tr>

<tr>
	<td align="right"><font class="bold">Email Address:&nbsp;</font></td>
	<td><c:out value="${sessionScope.user1.email}" /></td>
</tr>

<tr>
	<td align="right"><font class="bold">From:&nbsp;</font></td>
	<td><c:out value="${sessionScope.user1.city}" />, <c:out value="${sessionScope.user1.state}" /> <c:out value="${sessionScope.user1.postalCode}" /> <c:out value="${sessionScope.user1.country}" /></td>
</tr>

<tr>
	<td align="right"><font class="bold">You are a:&nbsp;</font></td>
	<td><c:out value="${sessionScope.user1.gender}" /> seeking <c:out value="${sessionScope.user1.seekingGender}" /></td>
</tr>

<tr>
	<td colspan="2" align="center"><img src="resources/images/be_smart.gif" width="511" height="22" alt="be smart! introduce yourself with a few words and a photo."></td>
</tr>

<tr>
	<td align="right" valign="top"><font class="defaultSmall">What is the first thing you want people to know about you? <br><a href="javascript:launchWindow('greatEssays.html','Help',650,560,'');" class="defaultSmall">Need help?</a></font></td>
	<td valign="top"><form:textarea path="aboutMe1"  class="defaultSmall" rows="3" height="10" cols="30" maxlength="2000" /></td>
</tr>

<tr>
	<td align="right" valign="top"><font class="boldSmall">Upload your photo: </font><br><font class="defaultSmall"><a href="javascript:launchWindow('greatPhotos.html','Help',650,560,'');" class="defaultSmall">Need help?</a></font></td>
	<td valign="top"><form:input path="photo" type="file" /> <br/>
</tr>

<tr>
	<td colspan="2" align="center">
		<table width="450" cellspacing="0" cellpadding="0" border="0" >
			<tr>
				<td align="left"><a href="register_step1.htm"  class="default"><img src="resources/images/btn_back_edit.gif" width="224" height="41" border="0" alt="back & edit"></a></td>
				<td align="right"><input type="image" src="resources/images/btn_continue.gif" width="172" height="40" alt="Continue"></td>
			</tr>
		</table>
		
		<input type="hidden" name="UserName" value="${sessionScope.user1.userName }" />
		<input type="hidden" name="Password" value="${user.userPassword}" />
		<input type="hidden" name="BirthDate_month" value="${user.dOBmonth}"  />
		<input type="hidden" name="BirthDate_day" value="${user.dOBday}" />
		<input type="hidden" name="BirthDate_year" value="${user.dOByear}" />
		<input type="hidden" name="Email" value="${user.email}" />
		<input type="hidden" name="GenderID" value="${user.gender}" />
		<input type="hidden" name="SeekingGenderID" value="${user.seekingGender}" />
		<input type="hidden" name="CountryRegionID" value="${user.country}" />
		<input type="hidden" name="State" value="${user.state}" />
		<input type="hidden" name="City" value="${user.city}" />
		<input type="hidden" name="PostalCode" value="${user.postalCode}" />


		</td>
</tr>
</form:form>
</table>


</center>
</body>
</html>