<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<jsp:include page="../common/common.jsp"></jsp:include>
</head>
<body>

	<div class="container">
		<div class="row">
			ajax 请求
		</div>
		<div class="row">
			<div class="col-md-2">
				<button type="button" class="btn btn-default" id="ajax-load">ajax.load</button>
			</div>
			<div class="col-md-4" id="ajax-load-content">待替换字符</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<button type="button" class="btn btn-default" id="ajax-get">ajax.get</button>
			</div>
			<div class="col-md-4" id="ajax-get-content">待替换字符</div>
		</div>
	</div>

</body>

<script>
$().ready(function() {
	// ajax-load
	$("#ajax-load").click(function(){
		$("#ajax-load-content").load(
			"<%=request.getContextPath() %>/mvc/ajax/ajaxLoad", 
			{a:1,b:2},
			function(responseTxt, statusTxt, xhr){
				if(statusTxt == "success"){
					alert("External content loaded successfully!");
				}
				if(statusTxt == "error"){
				    alert("Error: " + xhr.status + ": " + xhr.statusText);
				}
    		}
		);
	});
	// ajax-get
	$("#ajax-get").click(function(){
		$("#ajax-get-content").load(
			"<%=request.getContextPath() %>/CommonAjax?type=2", 
			{a:1,b:2},
			function(responseTxt, statusTxt, xhr){
				if(statusTxt == "success"){
				//	alert("External content loaded successfully!");
				}
				if(statusTxt == "error"){
				    alert("Error: " + xhr.status + ": " + xhr.statusText);
				}
    		}
		);
	});
});
</script>
	
</html>