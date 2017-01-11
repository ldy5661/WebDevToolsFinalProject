<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${!empty requestScope.addContactError}">
		<h2><font color="red">${requestScope.addContactError}</font></h2>
	</c:when>
	<c:otherwise>
		<h1>Add ${sessionScope.contactName} to contact list successful!</h1>
	</c:otherwise>
</c:choose>
<a href="findPeople.htm">Click Here</a>to go back
</body>
</html>