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
			<p>Alert</p>
			<button type="button" id="alert_1" class="btn btn-primary example-button">Basic usage</button>
			<button type="button" id="alert_2" class="btn btn-primary example-button">Basic usage, with callback</button>
			<button type="button" id="alert_3" class="btn btn-primary example-button">Basic usage, using options object</button>
			<button type="button" id="alert_4" class="btn btn-primary example-button">Small/Large dialog</button>
			<button type="button" id="alert_5" class="btn btn-primary example-button">Dismiss with overlay click</button>
			<br />
		</div>
		<div class="row">
			<div>Confirm</div>
			<button type="button" id="confirm_1" class="btn btn-primary example-button">Basic usage</button>
			<button type="button" id="confirm_2" class="btn btn-primary example-button">With alternate button text and color</button>
			<button type="button" id="confirm_3" class="btn btn-primary example-button">With icon and button text</button>
			<br />
		</div>

		<div class="row">
			<div>Prompt</div>
			<button type="button" id="prompt_1" class="btn btn-primary example-button">Basic usage</button>
			<button type="button" id="prompt_2" class="btn btn-primary example-button">Prompt with checkbox</button>
			<button type="button" id="prompt_3" class="btn btn-primary example-button">Prompt with date </button>
			<button type="button" id="prompt_4" class="btn btn-primary example-button">Prompt with email </button>
			<button type="button" id="prompt_5" class="btn btn-primary example-button">Prompt with number</button>
			<button type="button" id="prompt_6" class="btn btn-primary example-button">Prompt with password</button>
			<button type="button" id="prompt_7" class="btn btn-primary example-button">Prompt with select</button>
			<button type="button" id="prompt_8" class="btn btn-primary example-button">Prompt with textarea</button>
			<button type="button" id="prompt_9" class="btn btn-primary example-button">Prompt with time </button>
			<br />
		</div>
		<div class="row">
			<div>Custom Dialogs</div>
			<button type="button" id="custom_1" class="btn btn-primary example-button">Custom dialog as "loading" overlay</button>
			<button type="button" id="custom_2" class="btn btn-primary example-button">Custom dialog, using init  </button>
		</div>
		<div class="row">
			<div>alert.js</div>
			<a href="<%= request.getContextPath() %>/mvc/bootbox/alert" >alert js</a>
			
		</div>
	</div>



</body>


<script>
	$().ready(function() {
 		// alert
 		$("#alert_1").click(function(){
 			bootbox.alert("This is the default alert!");
 		});
 		$("#alert_2").click(function(){
 			bootbox.alert("This is an alert with a callback!", function(){ console.log('This was logged in the callback!'); });
 		});
 		$("#alert_3").click(function(){
 			bootbox.alert({
 			    message: "This is an alert with a callback!",
 			    callback: function () {
 			        console.log('This was logged in the callback!');
 			    }
 			})
 		});
 		$("#alert_4").click(function(){
 			bootbox.alert({
 			    message: "This is the small alert!",
 			    size: 'small'
 			    //  size: 'large'
 			});
 		});
 		$("#alert_5").click(function(){
 			bootbox.alert({
 			    message: "This alert can be dismissed by clicking on the background!",
 			    backdrop: true
 			});
 		});
		// confirm
 		$("#confirm_1").click(function(){
 			bootbox.confirm("This is the default confirm!", function(result){ console.log('This was logged in the callback: ' + result); });
 		});
 		$("#confirm_2").click(function(){
 			bootbox.confirm({
 			    message: "This is a confirm with custom button text and color! Do you like it?",
 			    buttons: {
 			        confirm: {
 			            label: 'Yes',
 			            className: 'btn-success'
 			        },
 			        cancel: {
 			            label: 'No',
 			            className: 'btn-danger'
 			        }
 			    },
 			    callback: function (result) {
 			        console.log('This was logged in the callback: ' + result);
 			    }
 			});
 		});
 		$("#confirm_3").click(function(){
 			bootbox.confirm({
 			    title: "Destroy planet?",
 			    message: "Do you want to activate the Deathstar now? This cannot be undone.",
 			    buttons: {
 			        cancel: {
 			            label: '<i class="fa fa-times"></i> Cancel'
 			        },
 			        confirm: {
 			            label: '<i class="fa fa-check"></i> Confirm'
 			        }
 			    },
 			    callback: function (result) {
 			        console.log('This was logged in the callback: ' + result);
 			    }
 			});
 		});
		// Prompt 
 		$("#prompt_1").click(function(){
 			bootbox.prompt("This is the default prompt!", function(result){ console.log(result); });
 		});
 		$("#prompt_2").click(function(){
 			bootbox.prompt({
 			    title: "This is a prompt with a set of checkbox inputs!",
 			    inputType: 'checkbox',
 			    inputOptions: [
 			        {
 			            text: 'Choice One',
 			            value: '1',
 			        },
 			        {
 			            text: 'Choice Two',
 			            value: '2',
 			        },
 			        {
 			            text: 'Choice Three',
 			            value: '3',
 			        }
 			    ],
 			    callback: function (result) {
 			        console.log(result);
 			    }
 			});
 		});
 		$("#prompt_3").click(function(){
 			bootbox.prompt({
 			    title: "This is a prompt with a date input!",
 			    inputType: 'date',
 			    callback: function (result) {
 			        console.log(result);
 			    }
 			});
 		});
 		$("#prompt_4").click(function(){
 			bootbox.prompt({
 			    title: "This is a prompt with an email input!",
 			    inputType: 'email',
 			    callback: function (result) {
 			        console.log(result);
 			    }
 			});
 		});
 		$("#prompt_5").click(function(){
 			bootbox.prompt({
 			    title: "This is a prompt with a number input!",
 			    inputType: 'number',
 			    callback: function (result) {
 			        console.log(result);
 			    }
 			});
 		});
 		$("#prompt_6").click(function(){
 			bootbox.prompt({
 			    title: "This is a prompt with a password input!",
 			    inputType: 'password',
 			    callback: function (result) {
 			        console.log(result);
 			    }
 			});
 		});
 		$("#prompt_7").click(function(){
 			bootbox.prompt({
 			    title: "This is a prompt with select!",
 			    inputType: 'select',
 			    inputOptions: [
 			        {
 			            text: 'Choose one...',
 			            value: '',
 			        },
 			        {
 			            text: 'Choice One',
 			            value: '1',
 			        },
 			        {
 			            text: 'Choice Two',
 			            value: '2',
 			        },
 			        {
 			            text: 'Choice Three',
 			            value: '3',
 			        }
 			    ],
 			    callback: function (result) {
 			        console.log(result);
 			    }
 			});
 		});
 		$("#prompt_8").click(function(){
 			bootbox.prompt({
 			    title: "This is a prompt with a textarea!",
 			    inputType: 'textarea',
 			    callback: function (result) {
 			        console.log(result);
 			    }
 			});
 		});
 		$("#prompt_9").click(function(){
 			bootbox.prompt({
 			    title: "This is a prompt with a time input!",
 			    inputType: 'time',
 			    callback: function (result) {
 			        console.log(result);
 			    }
 			});
 		});
 		// Custom Dialogs
 		$("#custom_1").click(function(){
 			var dialog = bootbox.dialog({
 			    message: '<p class="text-center">Please wait while we do something...</p>',
 			    closeButton: false
 			});
 			// do something in the background
 			setTimeout(function(){
 				dialog.modal('hide');
 			}, 1000)
 		});
 		$("#custom_2").click(function(){
 			var dialog = bootbox.dialog({
 			    title: 'A custom dialog with init',
 			    message: '<p><i class="fa fa-spin fa-spinner"></i> Loading...</p>'
 			});
 			dialog.init(function(){
 			    setTimeout(function(){
 			        dialog.find('.bootbox-body').html('I was loaded after the dialog was shown!');
 			    }, 1500);
 			});
 		});
		
	});
</script>

</html>