<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contacts for ${sessionScope.loggedInUser.userName}</title>
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
</head>
<body>
<div id="result"></div>
<form name='deleteContactsForm' method='post' action='viewContacts.htm'>
        <TABLE BGCOLOR='#EFEFFF' CELLPADDING='2' CELLSPACING='4' BORDER='1'>
        <thead>
		<TR BGCOLOR='#D6DFFF'>
			<TH ALIGN='center'><B>Contact ID</B></TH>
			<TH ALIGN='center'><B>Contact Name</B></TH>
			<TH ALIGN='center'><B>Comment</B></TH>
			<TH ALIGN='center'><B>Added Date</B></TH>
			<TH ALIGN='center'><B>Action</B></TH>
			<TH ALIGN='center'><B><input type="checkbox" class="checkall" />Delete Contacts</B></TH>
			<TH ALIGN='center'><B>Send Message</B></TH>
		</TR>
		</thead>
		<tbody>
		<c:forEach var= "contacts" items= "${requestScope.contactsList}">
		<TR>
            <TD><input type="text" name="contactID" value="${contacts.contactID}" readonly="true" /></TD>
            <TD><input type="text" name="contactName" value="${contacts.contactName}" readonly="true" /></TD>
            <TD><input type="text" name="comments" class="comments" value="${contacts.comments}" readonly="true" /></TD>
            <TD><input type="text" name="dateAdded" value="${contacts.dateAdded}" readonly="true" /></TD>
            <TD ALIGN='center'><input type="button" name="action" value="Edit Comment" class="action" /></TD>
            <TD><input type="checkbox" class="checkbox" value="${contacts.contactID}" name="deleteContact" />Delete</TD>
     <%--        <TD><a href="sendMessage.htm?To=${contacts.contactName}"><button>Send Message</button></a></TD> --%>
            <TD><button onclick="javascript:location.href='sendMessage.htm?To=${contacts.contactName}';return false;">Send Message</button></TD>
        </TR>
        </c:forEach>
        <tfoot>
        <TR>
        <TD COLSPAN='7' ALIGN='center'><input type='submit' class="deleteall" value='Delete Selected Contacts'></TD>
        </TR>
        </tfoot>
        </tbody>
        </TABLE>
            <c:forEach var="page" begin="1" end="${requestScope.maxPage}">
                <c:choose>
                    <c:when test="${page == requestScope.currentPage+1}">
                        <a>[${page}]</a>
                    </c:when>
                    <c:otherwise>
                        <a href="viewContacts.htm?page=${page}">  ${page} </a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </FORM>
<script>
$(document).ready(function () {
	$('.action').on('click', function () {
		if ($(this).val() == "Edit Comment") {
		      $(this).val("Save");
		      $('#result').html("");
		      $(this).closest('tr').find("input:eq(2)").attr("readonly", false).css( "background-color", "yellow" );
		}
	   	else {
	     	 $(this).val("Edit Comment");
	     	$(this).closest('tr').find("input:eq(2)").attr("readonly", true).css( "background-color", "" );
	     	 var updateID = $(this).closest('tr').find("input:eq(0)").val();
	     	 var updateComment = $(this).closest('tr').find("input:eq(2)").val();
	     	$.ajax({ 
		    	type: "post", 
		    	url: "updateComments.htm",
		    	async: true,
		    	data: {'updateContactsID':updateID, 'updateComment':updateComment}, 
		    	success: function(result) {
		    		$('#result').html("<span style='color:red'>Save Change Success！</span>");
		    		$(this).closest('tr').find("input:eq(2)").attr("readonly", true).css( "background-color", "" );
		    	}
		    }); 
	  	}
	});
	$('.checkall').on('click', function () {
	    var $this = $(this),
	        // Test to see if it is checked
	        checked = $this.prop('checked'),
	        //Find all the checkboxes
	        cbs = $this.closest('table').children('tbody').find('.checkbox');
		    // Check or Uncheck them.
		    cbs.prop('checked', checked);
		    //toggle the selected class to all the trs
		    cbs.closest('tr').toggleClass('selected', checked);
	});
	$('.checkbox').on('click', function () {
		var $this = $(this),
		checked = $this.prop('checked'),
		cbs = $this.closest('tr');
		cbs.prop('checked', checked);
		cbs.toggleClass('selected', checked);
	});
	$('.deleteall').on('click', function(e){
	    e.preventDefault();
	    var $this = $(this), 
	        $trows = $this.closest('table').children('tbody').find('tr.selected'),
	        sel = !!$trows.length;
	    
	    // Don't confirm delete if no rows selected.
	    if(!sel){
	        alert('No rows selected');
	        return false;
	    }
	    var c = confirm('Are you sure you want to delete the slected rows?');
	    if(!c) { return false; }
	    var checkedList = new Array();
	    $("input:checked").each(function() { 
	    	checkedList.push($(this).val());
	    });

	    $.ajax({ 
	    	type: "post", 
	    	url: "viewContacts.htm",
	    	async: true,
	    	data: {'deleteContactsID':checkedList.toString()}, 
	    	success: function(result) { 
	    		$trows.fadeOut(function(){ $trows.remove(); });
	    	} 
	    }); 
	});
});
</script>
</body>
</html>