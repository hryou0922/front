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
			<div>First Demo</div>
			<div id="jstree_1">
				<!-- in this example the tree is populated from inline HTML -->
				<ul>
					<li>Root node 1
						<ul>
							<li id="child_node_1">Child node 1</li>
							<li>Child node 2</li>
						</ul>
					</li>
					<li>Root node 2</li>
				</ul>
			</div>
			<button id="btn_1">demo button</button>
		</div>
		<hr />
		<div class="row">
			<div>Loading with AJAX</div>
			<div id="jstree_2"></div>
		</div>
		<hr />
		<div class="row">
			<div>JSTree Event: select change</div>
			<div id="jstree_3"></div>
			<button type="button" id="getSelectNodeIdBtn" >Get Select node id</button>
		</div>
		<hr />
		<div class="row">
			<div>Dynamic Modal Content</div>
			<button type="button" class="btn btn-primary" id="dynamicModalBtn">Dynamic Modal Content</button>
		</div>
		<hr />

	</div>



</body>

<script>

$().ready(function() {
	//  the defaults for all future instances:
	$.jstree.defaults.core.themes.variant = "large";
	
	// demo 1
	// create an instance when the DOM is ready
    $('#jstree_1').jstree();
    // bind to events triggered on the tree
    $('#jstree_1').on("changed.jstree", function (e, data) {
      console.log(data.selected);
    });
    // interact with the tree - either way is OK
    $('#btn_1').on('click', function () {
    //  console.log($('#jstree_1').jstree(true).select_node('child_node_1'));
      console.log($('#jstree_1').jstree('select_node', 'child_node_1'));
    //  console.log($.jstree.reference('#jstree_1').select_node('child_node_1'));
    });
    
    // demo 2
    $('#jstree_2').jstree({
    	'core' : {
    		'multiple' : false,
    		'data' : {
    	    	'url' : '<%=request.getContextPath() %>/mvc/jstree/loadingWithAjax',
    	    	'data' : function (node) {
    	      		return { 'id' : node.id };
    	    	}
    	  }
    	}
    });

    // demo 3
    $('#jstree_3')
		.on("changed.jstree", function (e, data) {
			if(data.selected.length) {
				alert('The selected node text is: ' + data.instance.get_node(data.selected[0]).text);
				alert('The selected node id is: ' + data.instance.get_node(data.selected[0]).id);
			}
		})
    	.jstree({
    	'core' : {
    		'multiple' : true,
    		'data' : {
    	    	'url' : '<%=request.getContextPath() %>/mvc/jstree/loadingWithAjax',
    	    	'data' : function (node) {
    	      		return { 'id' : node.id };
    	    	}
    	  }
    	}
    });
    $("#getSelectNodeIdBtn").click(function(){
		var ref = $('#jstree_3').jstree(true);
		id = ref.get_selected();
		if(!id.length){ 
			alert("请选中树上的一个节点.");
		}else{
			id = id[0];
			alert(id);
 		}
    });
    
});
</script>

</html>