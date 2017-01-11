<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Send Email</title>
</head>
<body>
<div class="container">
<center>
<h1>Send e-mail</h1>
<form method="post" action="sendEmail.htm" role="form">
<table border="0" width="60%" class="table">
<tr>
<div class="form-group">
<td><label for="email">Email To:</label></td>
<td><input type="text" class="form-control" name="mailTo" size="45" placeholder="dongyueli1992@gmail.com" required/></td>
</div>
</tr>
<tr>
<div class="form-group">
<td><label for="subject">Subject:</label></td>
<td><input type="text" class="form-control" name="subject" size="45" required/></td>
</div>
</tr>
<tr>
<div class="form-group">
<td><label for="yourEmailID">Your mail ID:</label></td>
<td><input type="text" class="form-control" name="yourmail" size="45" required/></td>
</div>
</tr>
<tr>
<div class="form-group">
<td><label for="message">Message:</label></td>
<td><textarea cols="50" class="form-control" rows="10" name="message" required></textarea></td>
</div>
</tr>
<tr>
<td colspan="2" align="center">
<input class="btn btn-primary" type="submit" value="Send E-mail" />
</td>
</tr>
</table>
</form>
</center>
</div>
</body>
</html>
