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
			<div>Button Styles</div>
			<button type="button" class="btn btn-default">Default</button>
			<button type="button" class="btn btn-primary">Primary</button>
			<button type="button" class="btn btn-success">Success</button>
			<button type="button" class="btn btn-info">Info</button>
			<button type="button" class="btn btn-warning">Warning</button>
			<button type="button" class="btn btn-danger">Danger</button>
			<button type="button" class="btn btn-link">Link</button>
		</div>
		<div class="row bd">
			<div>Button: The button classes can be used on an a, button, or input element</div>
			<a href="#" class="btn btn-info" role="button">Link Button</a>
			<button type="button" class="btn btn-info">Button</button>
			<input type="button" class="btn btn-info" value="Input Button"> <input type="submit" class="btn btn-info" value="Submit Button">
		</div>
		<div class="row bd">
			<div>Button: Button Sizes</div>
			<button type="button" class="btn btn-primary btn-lg">Large</button>
			<button type="button" class="btn btn-primary btn-md">Medium</button>
			<button type="button" class="btn btn-primary btn-sm">Small</button>
			<button type="button" class="btn btn-primary btn-xs">XSmall</button>
		</div>
		<div class="row bd">
			<div>Button: Block Level Buttons</div>
			<button type="button" class="btn btn-primary">Button 1</button>
			<button type="button" class="btn btn-default btn-block">Button 2</button>
		</div>
		<div class="row bd">
			<div>Button: Active/Disabled Buttons</div>
			<button type="button" class="btn btn-primary active">Active Primary</button>
			<button type="button" class="btn btn-primary disabled">Disabled Primary</button>
		</div>
		<hr />
		<div class="row bd">
			<div>Button Groups: btn-group</div>
			<div class="btn-group">

				<button type="button" class="btn btn-primary">Apple</button>

				<button type="button" class="btn btn-primary">Samsung</button>

				<button type="button" class="btn btn-primary">Sony</button>
			</div>

		</div>
		<div class="row bd">
			<div>Button Groups: .btn-group-*</div>
			<div class="btn-group btn-group-lg">

				<button type="button" class="btn btn-primary">Apple</button>

				<button type="button" class="btn btn-primary">Samsung</button>

				<button type="button" class="btn btn-primary">Sony</button>
			</div>
		</div>
		<div class="row bd">
			<div>Button Groups:.btn-group-vertical</div>
			<div class="btn-group-vertical">

				<button type="button" class="btn btn-primary">Apple</button>

				<button type="button" class="btn btn-primary">Samsung</button>

				<button type="button" class="btn btn-primary">Sony</button>
			</div>
		</div>
		<div class="row bd">
			<div>Button Groups: .btn-group-justified</div>
			<div class="btn-group btn-group-justified">
				<a href="#" class="btn btn-primary">Apple</a> <a href="#" class="btn btn-primary">Samsung</a> <a href="#" class="btn btn-primary">Sony</a>
			</div>
		</div>

		<div class="row bd">
			<div>Button Groups: For button elements, you must wrap each button in a .btn-group class</div>
			<div class="btn-group btn-group-justified">

				<div class="btn-group">

					<button type="button" class="btn btn-primary">Apple</button>

				</div>

				<div class="btn-group">

					<button type="button" class="btn btn-primary">Samsung</button>

				</div>

				<div class="btn-group">

					<button type="button" class="btn btn-primary">Sony</button>

				</div>
			</div>
		</div>
		<div class="row bd">
			<div>Button Groups: Nesting Button Groups & Dropdown Menus</div>
			<div class="btn-group">
				<button type="button" class="btn btn-primary">Apple</button>
				<button type="button" class="btn btn-primary">Samsung</button>
				<div class="btn-group">
					<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
						Sony <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Tablet</a></li>
						<li><a href="#">Smartphone</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row bd">
			<div>Button Groups: Split Button Dropdowns</div>
			<div class="btn-group">
				<button type="button" class="btn btn-primary">Sony</button>
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
					<span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a href="#">Tablet</a></li>
					<li><a href="#">Smartphone</a></li>
				</ul>
			</div>
		</div>
		<div class="row bd">
			<div>Button Groups:</div>

		</div>

	</div>
</body>
</html>