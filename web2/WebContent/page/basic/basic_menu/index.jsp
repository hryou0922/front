<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<!-- 
		<div class="row">
			The Bootstrap grid system has four classes, (即col-*-*里第一个*的值)
			○ xs (for phones)
			○ sm (for tablets)
			○ md (for desktops)
			lg (for larger desktops)
		</div>
		 -->
		<div class="row bd">
			<a href="<%= request.getContextPath() %>/mvc/menu/dropdown">dropdown</a> <br/>
			<a href="<%= request.getContextPath() %>/mvc/menu/tab">tab</a> <br/>
		</div>
 
	</div>
</body>
</html>