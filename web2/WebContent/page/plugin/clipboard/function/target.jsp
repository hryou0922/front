<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../common/common.jsp"></jsp:include>
</head>
<body>
    <!-- Define some markup -->
    <button class="btn">Copy_target</button>
    <div>hello</div>
	
    <!-- Instantiate clipboard -->
    <script>
    var clipboard = new Clipboard('.btn', {
		// 通过target指定要复印的节点
    	target: function() {
            return document.querySelector('div');
        }
    });

    clipboard.on('success', function(e) {
        console.log(e);
    });

    clipboard.on('error', function(e) {
        console.log(e);
    });
    </script>
    
</body>
</html>