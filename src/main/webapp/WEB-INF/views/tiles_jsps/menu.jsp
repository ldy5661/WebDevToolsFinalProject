<!doctype html>
<html lang=''>
<head>
   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="resources/lib/css/menu.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
   <title>CSS MenuMaker</title>
</head>
<body>
<div vertical-align="top">
<div id='cssmenu'>
<ul>
   <li class="active" ><a href='viewMessages.htm?username=${sessionScope.loggedInUser.userName}'>View My Messages</a></li>
   <li><a href='details.htm?username=${sessionScope.loggedInUser.userName}'>View My Details</a></li>
   <li><a href='update.htm?username=${sessionScope.loggedInUser.userName}'>Update My Information</a></li>
   <li><a href='changePassword.htm?username=${sessionScope.loggedInUser.userName}'>Change My Password</a></li>
   <li><a href='viewContacts.htm?username=${sessionScope.loggedInUser.userName}'>View My Contacts</a></li>
   <li><a href='findPeople.htm'>Find People</a></li>
   <li><a href='logout.htm'>Click Here to Logout</a></li>
</ul>
</div>
</div>
</body>
<html>