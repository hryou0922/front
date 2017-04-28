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
    <button class="btn" data-clipboard-text="1">Copy</button>
    <button class="btn" data-clipboard-text="2">Copy</button>
    <button class="btn" data-clipboard-text="3">Copy</button>

  

    <!-- Instantiate clipboard by passing a string selector -->
    <script>
    var clipboard = new Clipboard('.btn');

    clipboard.on('success', function(e) {
        console.log(e);
    });

    clipboard.on('error', function(e) {
        console.log(e);
    });
    </script>
</body>
</html>