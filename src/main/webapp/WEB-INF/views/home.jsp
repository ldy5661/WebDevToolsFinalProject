<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<p> Hello <c:out value="${sessionScope.loggedInUser.userName}" />
About me<c:out value="${sessionScope.loggedInUser.aboutMe1}" />
Height<c:out value="${sessionScope.loggedInUser.height}" />

Test Login: ${loggedInUser.userName}
</body>
</html>
