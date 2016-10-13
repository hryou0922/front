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
		<div class="row">
			<div >第一个demo</div>
			<div id="page-content"></div>
			<div id="pagination-demo"></div>
		</div>
		<div class="row">
			<div >Dynamic total pages number</div>
			<div id="selector"></div>
			<input type="button" id="dynamic_btn" value="change"></div>			 
		</div>
		<div class="row">
			<div >Synchronized pagination elements</div>
			<div id="page-content2"></div>
			<div id="pagination-demo2"></div>
		</div>
		<div class="row">
			<div >Alternative style pagination (with start and end page numbers)</div>
			<div id="page-content3"></div>
			<div id="pagination-demo3"></div>
		</div>
	</div>
</body>


<script>
$().ready(function() {
	// demo
    $('#pagination-demo').twbsPagination({
        totalPages: 35,
        visiblePages: 7,
        onPageClick: function (event, page) {
            $('#page-content').text('Page ' + page);
        }
    });
	
	// Dynamic total pages number
    var $pagination = $('#selector');
    var defaultOpts = {
        totalPages: 3
    };
    $pagination.twbsPagination(defaultOpts);
    
    $("#dynamic_btn").click(function(){
    	$.ajax({
            url : "<%=request.getContextPath() %>/mvc/pagination/dynamicTotalPages",
            dataType : "json",
            success: function (data) {
                var totalPages = data.newTotalPages;
                var currentPage = $pagination.twbsPagination('getCurrentPage');
                $pagination.twbsPagination('destroy');
                $pagination.twbsPagination($.extend({}, defaultOpts, {
                    startPage: currentPage,
                    totalPages: totalPages
                }));
            }
        });
    });
    
});
</script>

</html>