<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="result"></div>
<TABLE BGCOLOR='#EFEFFF' CELLPADDING='2' CELLSPACING='4' BORDER='1'>
		<TR BGCOLOR='#D6DFFF'>
		<TD ALIGN='center'><B>Picture</B></TD>
		<TD ALIGN='center'><B>UserID</B></TD>
		<TD ALIGN='center'><B>User Name</B></TD>
		<TD ALIGN='center'><B>Gender</B></TD>
		<TD ALIGN='center'><B>City / State</B></TD>
		<TD ALIGN='center'><B>Country</B></TD>
		<TD ALIGN='center'><B>About User</B></TD>
		<TD ALIGN='center'><B>User Profile</B></TD>
		<TD ALIGN='center'><B>Delete User</B></TD>
		<TD ALIGN='center'><B>Action</B></TD>
		
		</TR>
		<c:forEach var= "users" items= "${requestScope.users}">
		<TR>
		<TD><img src='<c:out value="${users.fileLocation}" />'></TD>
		<TD>${users.userID}</TD>
		<TD>${users.userName}</TD>
		<TD>${users.gender}</TD>
		<TD>${users.city} / ${users.state}</TD>
		<TD>${users.country}</TD>
		<TD>${users.aboutMe1}</TD>
		<TD ALIGN='center'><A href='adminLookupByNameUserDetails.htm?userName=${users.userName}'><IMG SRC='resources/images/detail.jpg'></A></TD>
		<TD ALIGN='center'><input type="button" value="Delete" class="delete"/></TD>
		<TD ALIGN='center'><input type="button" name="action" class="action" value="Suspend User Account"/></TD>
		</TR>
		</c:forEach>
</TABLE>
<script>
$(document).ready(function () {
	$('.action').on('click', function () {
		if ($(this).val() == "Suspend User Account") {
		      $(this).val("Activate User Account");
		      $('.result').html("");
		      var userName = $(this).closest('tr').find("td").eq(2).html();
		     	$.ajax({ 
			    	type: "post", 
			    	url: "changeUserAccountStatus.htm",
			    	async: true,
			    	data: {'userName':userName}, 
			    	success: function(result) {
			    		$('.result').html("<span style='color:red'>Suspend User Account Status Successfully!</span>").fadeToggle(1600);
			    	}			    	
			    });
		}
	   	else {
	     	 $(this).val("Suspend User Account");
	     	 var userName = $(this).closest('tr').find("td").eq(2).html();
	     	$.ajax({ 
		    	type: "post", 
		    	url: "changeUserAccountStatus.htm",
		    	async: true,
		    	data: {'userName':userName}, 
		    	success: function(result) {
		    		$('.result').html("<span style='color:red'> Activate User Account Status Successfully!</span>").fadeToggle(1600);
		    	}
		    }); 
	  	}
	});
	$('.delete').on('click', function(e){
		$(this).closest('tr').css( "background-color", "yellow" );
		var $trows = $(this).closest('tr');
	    e.preventDefault();   
	    // Don't confirm delete if no rows selected.
	    var c = confirm('Are you sure you want to delete the selected User?');
	    if(!c) { return false; }
	    var userName = $(this).closest('tr').find("td").eq(2).html();

	    $.ajax({ 
	    	type: "post", 
	    	url: "adminDeleteUser.htm",
	    	async: true,
	    	data: {'userName':userName}, 
	    	success: function(result) { 
	    		$trows.fadeOut(function(){ $trows.remove(); });
	    		$('#result').html("<span style='color:red'>Delete User Account Successfully!</span>");
	    	} 
	    }); 
	});
});
</script>
</body>
</html>