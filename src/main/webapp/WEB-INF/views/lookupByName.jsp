<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lookup User By UserName</title>
</head>
<body>
<H3><u>Searching for UserName: ${sessionScope.lookupName}</u></H3>
<CENTER>
<c:choose>
	<c:when test="${!empty requestScope.error}">
		<h2><font color="red">${requestScope.error}</font></h2>
	</c:when>
	<c:otherwise>
	<TABLE BGCOLOR='#EFEFFF' CELLPADDING='2' CELLSPACING='4' BORDER='1'>
		<TR BGCOLOR='#D6DFFF'>
		<TD ALIGN='center'><B>Picture</B></TD>
		<TD ALIGN='center'><B>User Name</B></TD>
		<TD ALIGN='center'><B>Gender</B></TD>
		<TD ALIGN='center'><B>City / State</B></TD>
		<TD ALIGN='center'><B>Country</B></TD>
		<TD ALIGN='center'><B>About User</B></TD>
		<TD ALIGN='center'><B>User Profile</B></TD>
		<TD ALIGN='center'><B>Add to Contact List</B></TD>
		</TR>
		<c:forEach var= "users" items= "${sessionScope.lookupByNameUser}">
<!-- 		<form name='addContactForm' method='post' action='addContact.htm'> -->
		<TR>
		<TD><img src='<c:out value="${users.fileLocation}" />'></TD>
		<TD>${users.userName}</TD>
		<TD>${users.gender}</TD>
		<TD>${users.city} / ${users.state}</TD>
		<TD>${users.country}</TD>
		<TD>${users.aboutMe1}</TD>
		<TD><A href='lookupByNameUserDetails.htm?userName=${users.userName}'><IMG SRC='resources/images/detail.jpg'></A></TD>
<!-- 		<TD><input type='submit' value='Add to Contact List' name='button'></TD> -->
		<TD><a href="addContact.htm?AddToListContactName=${users.userName}"><button>Add to Contact List</button></a></TD>
		</TR>
<!-- 		</form> -->
		</c:forEach>
		</TABLE>
	</c:otherwise>
</c:choose>
<br>
<a href="findPeople.htm">Click Here</a>  to go back
</CENTER>
</body>
</html>