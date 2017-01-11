<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<style>
    body { padding-top:50px; }
</style>
<!-- JS -->
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<title>View My Messages</title>
</head>
<body>
<br>
<div class="container" ng-app="sortApp" ng-controller="mainController">
<div id="result"></div>
  <div class="alert alert-info">
    <p>Sort Type: {{ sortType }}</p>
    <p>Sort Reverse: {{ sortReverse }}</p>
    <p>Search Query: {{ searchMessage }}</p>
  </div>
  

  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" placeholder="Search Messages" ng-model="searchMessage">
      </div>      
    </div>
  </form>
  
  <table class="table table-bordered table-striped">
    
    <thead>
      <tr>
        <td>
          <a href="" ng-click="sortType = 'messageID'; sortReverse = !sortReverse">
            Message ID 
            <span ng-show="sortType == 'messageID' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'messageID' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="" ng-click="sortType = 'fromUser'; sortReverse = !sortReverse">
          From User 
            <span ng-show="sortType == 'fromUser' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'fromUser' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="" ng-click="sortType = 'message'; sortReverse = !sortReverse">
          Message 
            <span ng-show="sortType == 'message' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'message' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td>
          <a href="" ng-click="sortType = 'messageDate'; sortReverse = !sortReverse">
            Date
            <span ng-show="sortType == 'messageDate' && !sortReverse" class="fa fa-caret-down"></span>
            <span ng-show="sortType == 'messageDate' && sortReverse" class="fa fa-caret-up"></span>
          </a>
        </td>
        <td><a>
            Reply to User
            </a>
        </td>
        <td>
        	<input type="checkbox" ng-model="isAll" ng-click="selectAllRows()" />
        	<a>DeleteMessages
        	</a>
        </td>
      </tr>
    </thead>
    
    <tbody>
      <tr ng-repeat="msgList in messageList | orderBy:sortType:sortReverse | filter:searchMessage"  ng-class="{'success' : tableSelection[$index]}" class="checkRows">
        <td>{{ msgList.messageID }}</td>	
        <td>{{ msgList.fromUser }}</td>
        <td>{{ msgList.message }}</td>
        <td>{{ msgList.messageDate }}</td>
        <td><A href='replyMessage.htm?To={{ msgList.fromUser }}'><IMG SRC='resources/images/reply.jpg'></A></td>
        <td><input type="checkbox" value="{{ msgList.messageID }}" ng-model="tableSelection[$index]" />Delete</td>
      </tr>
      
    </tbody>
    <tfoot>
    	<tr>
     		<!-- <td ALIGN='center' colspan="6" ><button id="delete" value='Delete Selected Messages' ng-click="DeleteSelected()"></td> -->
      		<td ALIGN='center' colspan="6" ><button class="btn btn-danger" ng-click="removeSelectedRows()" >Delete Selected Messages</button>
      	</tr>
    </tfoot>
    
  </table>
</div>
  
<script type="text/javascript">

angular.module('sortApp', [])

.controller('mainController', function($scope,$window,$http) {
  $scope.sortType     = 'fromUser'; // set the default sort type
  $scope.sortReverse  = false;  // set the default sort order
  $scope.searchMessage   = '';     // set the default search/filter term
  
  // create the list of messages
  $scope.messageList = [

  <c:forEach var="msg" items="${requestScope.msgList}">
  	{messageID: '<c:out value="${msg.getMessageID()}"/>', fromUser: '<c:out value="${msg.getFromUser()}"/>', message: '<c:out value="${msg.getMessage()}"/>', messageDate: '<c:out value="${msg.getMessageDate()}"/>'},
  </c:forEach>
    ];
  
  $scope.tableSelection = {};
  
  $scope.isAll = false;
  $scope.selectAllRows = function() {
    //check if all selected or not
    if ($scope.isAll === false) {
      //set all row selected
      angular.forEach($scope.messageList, function(row, index) {
        $scope.tableSelection[index] = true;
      });
      $scope.isAll = true;
    } else {
      //set all row unselected
      angular.forEach($scope.messageList, function(row, index) {
        $scope.tableSelection[index] = false;
      });
      $scope.isAll = false;
    }
  };
  
  
  $scope.removeSelectedRows = function(messageID) {
		if ($(".checkRows").hasClass( "ng-scope success" ) ) {
			if ($window.confirm("Do you want to delete selected messages?"))
			    for (var i = $scope.messageList.length - 1; i >= 0; i--) {
			      if ($scope.tableSelection[i]) {
			        //delete row from data
			        $scope.messageList.splice(i, 1);
			        //delete rowSelection property
			        delete $scope.tableSelection[i];		 
			      }
			      	
			      var checkedList = new Array();
				    $("tr.ng-scope.success").each(function() { 
				    	checkedList.push($(this).find("td").eq(0).html());
				    });
				    
				    $.ajax({ 
				    	type: "post", 
				    	url: "viewMessages.htm",
				    	async: true,
				    	data: {'deleteMessageID':checkedList.toString()}, 
				    	success: function(result) {
				    		$('#result').html("<div class='alert alert-success'><span style='color:red'>Delete Messages Successfully ！</span></div>");		    		
				    	} 
				    }); 
			    }
		    else{
		    	false;
		    }
		    	
	   }
		else{
			alert( "Please select at least one row!" );
		}
			

	};

});
</script>
</body>
</html>