<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form name='deleteMessagesForm' method='post' action='delete.jsp'>
		<TABLE BGCOLOR='#EFEFFF' CELLPADDING='2' CELLSPACING='4' BORDER='1'>
		<tr BGCOLOR='#D6DFFF'>
			<td ALIGN='center'><B>Message ID</B></td>
			<td ALIGN='center'><B>From User</B></td>
			<td ALIGN='center'><B>Message</B></td>
			<td ALIGN='center'><B>Date</B></td>
			<td ALIGN='center'><B>Reply to User</B></td>
			<td ALIGN='center'><B>Delete Messages</B></td>
		</tr>
		<c:forEach var="message" items="${requestScope.messageList}">
			<tr>
				<td><input type="text" name="messageID" value="${message.getMessageID()}" readonly=""/></td>
				<td><input type="text" name="messageID" value="${message.getFromUser()}" readonly=""/></td>
				<td><input type="text" name="messageID" value="${message.getMessage()}" readonly=""/></td>
				<td><input type="text" name="messageID" value="${message.getMessageDate()}" readonly=""/></td>
				<td><A href='message.jsp?toUser=${message.getFromUser()} }'><IMG SRC='resources/images/reply.jpg'></A></td>
				<td><input type='checkbox' name='msgList' value="${message.getMessageID()}"> Delete</td>
			</tr>
		</c:forEach>
		<tr>
			<td COLSPAN='6' ALIGN='center'> You have <c:out value="{$message.nRows}" /></td>
		</tr>
		<tr>
			<td COLSPAN='6' ALIGN='center'><button type="button" id="loadMoreButton" onclick="loadMore('${requestScope.messageList}')">DISPLAY MORE RECORDS</button><td>
		</tr>
		
	</TABLE>
	</form>
</body>
</html>