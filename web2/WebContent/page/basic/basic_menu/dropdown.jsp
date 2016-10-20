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
			<div>下拉菜单 - 基础实例</div>
			<div class="dropdown">
				<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
					Dropdown <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
					<li role="presentation" class="divider"></li>
					<li role="presentation" class="dropdown-header">Dropdown header</li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
					<li role="presentation" class="disabled"><a role="menuitem" tabindex="-1" href="#">Disabled link</a></li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div>下拉菜单 - 对齐</div>
			<div class="dropdown">
				<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
					Dropdown <span class="caret"></span>
				</button>
				<ul class="dropdown-menu dropdown-menu-right" role="menu" aria-labelledby="dropdownMenu1">
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Action</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Another action</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Something else here</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="#">Separated link</a></li>
				</ul>
			</div>
		</div>
		<hr />

		<div class="row">
			<div>下拉菜单 - Within a navbar</div>
			<nav id="navbar-example" class="navbar navbar-default navbar-static" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-example-js-navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Project Name</a>
				</div>
				<div class="collapse navbar-collapse bs-example-js-navbar-collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a id="drop1" href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Dropdown <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
								<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Action</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Another action</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Something else here</a></li>
								<li role="presentation" class="divider"></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Separated link</a></li>
							</ul></li>
						<li class="dropdown"><a id="drop2" href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								Dropdown <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
								<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Action</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Another action</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Something else here</a></li>
								<li role="presentation" class="divider"></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Separated link</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li id="fat-menu" class="dropdown"><a id="drop3" href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> Dropdown <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
								<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Action</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Another action</a></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Something else here</a></li>
								<li role="presentation" class="divider"></li>
								<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Separated link</a></li>
							</ul></li>
					</ul>
				</div>
				<!-- /.nav-collapse -->
			</div>
			<!-- /.container-fluid --> </nav>
			<!-- /navbar-example -->
		</div>
		<div class="row">
			<div>下拉菜单 - 对齐</div>
			<div class="dropdown">
				<a id="dLabel" data-target="#" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Dropdown trigger <span
					class="caret"></span>
				</a>

				<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
					<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Action</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Another action</a></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Something else here</a></li>
					<li role="presentation" class="divider"></li>
					<li role="presentation"><a role="menuitem" tabindex="-1" href="https://twitter.com/fat">Separated link</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>