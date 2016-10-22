<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../../common/common.jsp"></jsp:include>
<style type="text/css">
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<p>The Alert Plugin Classes; Close Alerts Via JavaScript; Alert Events</p>
			<div class="alert alert-success fade in">
				<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>Success!</strong> Indicates a successful or positive action.
			</div>

			<div class="alert alert-info" id="myAlert" >
				<a href="#" class="close" id="myClose" >&times;</a> <strong>Info!</strong> Indicates a neutral informative change or action.
			</div>

			<div class="alert alert-warning">
				<strong>Warning!</strong> Indicates a warning that might need attention.
			</div>

			<div class="alert alert-danger">
				<strong>Danger!</strong> Indicates a dangerous or potentially negative action.
			</div>
			<br />
		</div>
		
		<div class="row">
			<p>The Alert Plugin Classes; Close Alerts Via JavaScript; Alert Events</p>
			<button id="showAlert" >show alert</button>
			<div id="showAlertMsg" class="alert alert-danger hidden ">
				<strong>Danger!</strong> Indicates a dangerous or potentially negative action.
			</div>
		</div>
 
	</div>
</body>

<script>
	$().ready(function() {
		// jquery 点击关闭
	    $("#myClose").click(function(){
	        alert("aa")
	        $("#myAlert").alert("close");
	    });
		
	    $("#myAlert").on('close.bs.alert', function(){
	        alert('The alert message is about to be closed.');
	    });
	    
	    
 		$("#showAlert").click(function(){
 			$("#showAlertMsg").removeClass("hidden");
 			
 			var dialog = bootbox.dialog({
 			//    title: 'A custom dialog with init',
 			    message: $("#showAlertMsg")
 			});
 			dialog.init(function(){
 			    setTimeout(function(){
 			        dialog.find('.bootbox-body').html('I was loaded after the dialog was shown!');
 			    }, 1000); 
 			});
 		});
 		

 
	});
</script>

</html>