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
			<div>Tab 静态</div>
			<ul class="nav nav-tabs">
				<li class="active"><a href="#">Home</a></li>
				<li><a href="#">Menu 1</a></li>
				<li><a href="#">Menu 2</a></li>
				<li><a href="#">Menu 3</a></li>
			</ul>
		</div>
		<div class="row">
			<div>Tabs - Dynamic</div>

			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#home">Home</a></li>
				<li><a data-toggle="tab" href="#menu1"><span class="glyphicon glyphicon-user"></span> Menu 1</a></li>
				<li><a data-toggle="tab" href="#menu2">Menu 2</a></li>
				<li><a data-toggle="tab" href="#menu3">Menu 3</a></li>
			</ul>

			<div class="tab-content">
				<div id="home" class="tab-pane fade in active">
					<h3>HOME</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div>
				<div id="menu1" class="tab-pane fade">
					<h3>Menu 1</h3>
					<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				</div>
				<div id="menu2" class="tab-pane fade">
					<h3>Menu 2</h3>
					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
				</div>
				<div id="menu3" class="tab-pane fade">
					<h3>Menu 3</h3>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
				</div>
			</div>

		</div>
		<hr />
		<div class="row bd">
			<div>Tabs With Dropdown Menu</div>
			<ul class="nav nav-tabs">

				<li class="active"><a href="#">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu 1 <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Submenu 1-1</a></li>
						<li><a href="#">Submenu 1-2</a></li>
						<li><a href="#">Submenu 1-3</a></li>
					</ul></li>
				<li><a href="#">Menu 2</a></li>
				<li><a href="#">Menu 3</a></li>
			</ul>
		</div>
		<hr />

		<div class="row bd">
			<div>Tabs - Via JavaScript</div>
			<ul class="nav nav-tabs" id="nav_via_js" >
				<li class="active"><a href="#home_3">Home</a></li>
				<li><a href="#menu1_3">Menu 1</a></li>
				<li><a href="#menu2_3">Menu 2</a></li>
				<li><a href="#menu3_3">Menu 3</a></li>
			</ul>

			<div class="tab-content">
				<div id="home_3" class="tab-pane fade in active">
					<h3>HOME</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
				</div>
				<div id="menu1_3" class="tab-pane fade">
					<h3>Menu 1</h3>
					<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				</div>
				<div id="menu2_3" class="tab-pane fade">
					<h3>Menu 2</h3>
					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
				</div>
				<div id="menu3_3" class="tab-pane fade">
					<h3>Menu 3</h3>
					<p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
				</div>
			</div>
		</div>
		<hr />

	</div>
</body>

<script>
	$().ready(function() {
	    $("#nav_via_js a").click(function(){
	        $(this).tab('show');
	    });
	    $('#nav_via_js a').on('show.bs.tab', function(){
	        console.log('The new tab is about to be shown.');
	    });
	});
</script>

</html>