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
			<div>Create demo</div>
			<!-- Buttons -->
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Open Modal</button>

			<!-- Links -->
			<a data-toggle="modal" href="#myModal">Open Modal</a>

			<!-- Other elements -->
			<p data-toggle="modal" data-target="#myModal">Open Modal</p>
			<br />
		</div>
		<div class="row">
			<div>Modal Options: backdrop(static,true,false), keyboard, show</div>
			<button type="button" class="btn btn-info btn-md" id="myModalOption">Modal with backdrop:"static"</button>
			<button type="button" class="btn btn-info btn-md" data-toggle="modal" data-target="#myModal" data-backdrop="static">Modal with static backdrop Using data</button>
			<br />
		</div>

		<div class="row">
			<div>Modal Methods</div>
			<button type="button" class="btn btn-primary" id="modalMethodBtn">Modal Methods</button>
			<br />
		</div>
		<div class="row">
			<div>Modal Events</div>
			<button type="button" class="btn btn-primary" id="modalEventBtn">Modal Events</button>
		</div>
		
		<div class="row">
			<div>Dynamic Modal Content</div>
			<button type="button" class="btn btn-primary" id="dynamicModalBtn">Dynamic Modal Content</button>
		</div>
	</div>


	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>

	<!--Static Backdrop -->
	<div class="modal fade" id="myModalOptionModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4 class="modal-title">Static Backdrop</h4>
				</div>
				<div class="modal-body">
					<p>You cannot click outside of this modal to close it.</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!--Static Backdrop -->
	<div class="modal fade" id="dynamicModal" role="dialog">
		<div class="modal-dialog" id="dynamicModalDialog">
 			
		</div>
	</div>
	
</body>


<script>
	$().ready(function() {
		$("#myModalOption").click(function() {
			$("#myModalOptionModal").modal({
				backdrop : "static"
			});
		});

		$("#modalMethodBtn").click(function() {
			$("#myModal").modal("show");
		});

		$("#modalEventBtn").click(function() {
			$("#myModal").modal("show");
			$("#myModal").on('show.bs.modal', function() {
				alert('The modal is about to be shown.');
			});
		});
		
		
		// 隐藏时清空modal
		$('#dynamicModal').on('hidden.bs.modal', function (e) {
	  		$('#dynamicModalDialog').empty();
		})
		
		$("#dynamicModalBtn").click(function() {
			$("#dynamicModal").modal("show");
			$('#dynamicModalDialog').load('<%= request.getContextPath() %>/mvc/modal/dynamicContent');
		});

	});
</script>

</html>