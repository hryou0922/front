<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../../common/common.jsp"></jsp:include>

<!-- 加载自定义js -->
<script src="<%=request.getContextPath() %>/component/jquery-validation/my/myJqueryValidation.js"></script>

<style type="text/css">
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<form role="form" id="form1">
				<div class="form-group">
					<label for="mobile">mobile</label> <input type="text" class="form-control" id="mobile" name="mobile" placeholder="mobile">
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Email address</label> <input type="email" class="form-control" id="exampleInputEmail1"
						placeholder="Enter    email" required >
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Password</label> <input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password">
				</div>
				<div class="form-group">
					<label for="user">user</label> <input type="text" class="form-control" id="user" name="user" placeholder="user" >
				</div>
				<div class="form-group">
					<!-- 直接添加内容对内容进行检查 -->
					<label for="user">specString</label> <input type="text" class="form-control" id="specString" name="specString" placeholder="specString" specString=true required>
				</div>
				<div class="form-group">
					<label for="exampleInputFile">File input</label> <input type="file" id="exampleInputFile">
					<p class="help-block">Example block-level help text here.</p>
				</div>
				<div class="checkbox">
					<label> <input type="checkbox"> Check me out
					</label>
				</div>
				<button type="submit" class="btn    btn-default">Submit</button>
			</form>
		</div>
		
		<div class="row">
			<div>Dynamic Modal Content</div>
			<button type="button" class="btn btn-primary" id="dynamicModalBtn">Dynamic Modal Content</button>
		</div>
	</div>


	
</body>

<script>

$().ready(function() {
	
	// validate the comment form when it is submitted
	$("#form1").validate({
		rules: {
			mobile: {
				mobile : "",  // 使用自定义方法验证
		        minlength: 2
		      },
		    user : {
		    	specString : true    	
		    }
		},
		submitHandler:function(form){
		   // 对form表单进行序列号
		   alert($(form).serialize());
	              alert("提交事件!");   
	               form.submit();
	        }
	});
	
 
});
</script>

</html>