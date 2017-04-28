<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>clipboard</title>
<jsp:include page="../../common/common.jsp"></jsp:include>
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
		<div>
			############# 	可以从input、textare、div中通过copy/cut获取内容  ###########
		</div>
		<div class="row">
			<div class="col-md-4"><a href="<%= request.getContextPath() %>/mvc/clipboard/target/input">target-input</a></div>
			<div class="col-md-4"><a href="<%= request.getContextPath() %>/mvc/clipboard/target/textarea">target-textarea</a></div>
			<div class="col-md-4"><a href="<%= request.getContextPath() %>/mvc/clipboard/target/div">target-div</a></div>
		</div>
		<div>
			############# 	通过function动态设置返回值  ###########
		</div>
		<div class="row">
			<div class="col-md-6"><a href="<%= request.getContextPath() %>/mvc/clipboard/function/target">function-target</a></div>
			<div class="col-md-6"><a href="<%= request.getContextPath() %>/mvc/clipboard/function/text">function-text</a></div>
		</div>
		<div>
			#############  直接从属性的data-clipboard-text获取节点的值  ###########
		</div>
		<div class="row">
			<div class="col-md-3"><a href="<%= request.getContextPath() %>/mvc/clipboard/constructor/node">constructor-node</a></div>
			<div class="col-md-3"><a href="<%= request.getContextPath() %>/mvc/clipboard/constructor/nodelist">constructor-nodelist</a></div>
			<div class="col-md-3"><a href="<%= request.getContextPath() %>/mvc/clipboard/constructor/selector">constructor-selector</a></div>
		</div>
		
	</div>

</body>
</html>