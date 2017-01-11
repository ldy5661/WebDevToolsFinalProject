<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
h1.fontStyle{
font-family: times, Times New Roman, times-roman, georgia, serif;
	color: #444;
	margin: 0;
	padding: 0px 0px 6px 0px;
	font-size: 40px;
	line-height: 44px;
	letter-spacing: -2px;
	font-weight: bold;
	marigin-left:10px;
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true" /></title>
</head>
<body>
<table border="1" cellpadding="2" cellspacing="2" align="center" width="100%">
    <tr>
   		<td height="80" colspan="2" bgcolor="#fcf8e3">
   		<tiles:insertAttribute name="header"/>
   		</td>
    </tr>
    <tr>
        <td width="15%" text-align="top"><tiles:insertAttribute name="menu" /></td>
        <td width="85%" align="center"><tiles:insertAttribute name="body" /></td>
    </tr>
    <tr>
        <td height="30" colspan="2" bgcolor="#fcf8e3">
        <tiles:insertAttribute name="footer" />
        </td>
    </tr>
</table>
</body>
</html>