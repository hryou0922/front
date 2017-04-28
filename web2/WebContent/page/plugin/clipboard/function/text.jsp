<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../common/common.jsp"></jsp:include>
</head>
<body>
    <!-- 1. Define some markup -->
    <button class="btn">Copy</button>

    <!-- 3. Instantiate clipboard -->
    <script>
    var clipboard = new Clipboard('.btn', {
		// 点击copy按钮，直接通过text直接返回复印的内容
    	text: function() {
            return 'to be or not to be';
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