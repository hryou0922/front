<%@    page language="java" contentType="text/html;    charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE    html    PUBLIC    "-//W3C//DTD    HTML    4.01    Transitional//EN"    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;    charset=UTF-8">
<jsp:include page="../../common/common.jsp"></jsp:include>
<style type="text/css">
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div>基本实例</div>
			<form role="form">

				<div class="form-group">
					<label for="exampleInputEmail1">Email address</label> <input type="email" class="form-control" id="exampleInputEmail1"
						placeholder="Enter    email">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Password</label> <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
				</div>
				<div class="form-group">
					<label for="exampleInputFile">File input</label> <input type="file" id="exampleInputFile">
					<p class="help-block">Example block-level help text here.</p>
				</div>
				<div class="checkbox">
					<label> <input type="checkbox"> Check me out
					</label>
				</div>
				<button type="submit" class="btn    btn-default">Submit</button>
			</form>
		</div>
		<hr />
		<div class="row">
			<div>内联表单</div>
			<form class="form-inline" role="form">
				<div class="form-group">
					<label class="sr-only" for="exampleInputEmail2">Email address</label> <input type="email" class="form-control" id="exampleInputEmail2"
						placeholder="Enter    email">
				</div>
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon">@</div>
						<input class="form-control" type="email" placeholder="Enter    email">
					</div>
				</div>
				<div class="form-group">
					<label class="sr-only" for="exampleInputPassword2">Password</label> <input type="password" class="form-control" id="exampleInputPassword2"
						placeholder="Password">
				</div>
				<div class="checkbox">
					<label> <input type="checkbox"> Remember me
					</label>
				</div>
				<button type="submit" class="btn    btn-default">Sign in</button>
			</form>
		</div>
		<hr />
		<div class="row">
			<div>水平排列的表单</div>
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="inputEmail3" class="col-sm-2    control-label">Email</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="inputEmail3" placeholder="Email">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2    control-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword3" placeholder="Password">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2    col-sm-10">
						<div class="checkbox">
							<label> <input type="checkbox"> Remember me
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2    col-sm-10">
						<button type="submit" class="btn    btn-default">Sign in</button>
					</div>
				</div>
			</form>
		</div>
		<hr />
		<div class="row">
			<div>被支持的控件:text、password、datetime、datetime-local、date、month、time、week、number、email、url、search、tel 和 color</div>
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="text" class="col-sm-2    control-label">输入框</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" placeholder="Text    input">
					</div>
				</div>
				<div class="form-group">
					<label for="textarea" class="col-sm-2    control-label">文本域</label>
					<div class="col-sm-10">
						<textarea class="form-control" rows="3"></textarea>
					</div>
				</div>
				<div class="form-group">
					<label for="textarea" class="col-sm-2    control-label">多选和单选框</label>
					<div class="col-sm-10">
						<div class="checkbox">
							<label> <input type="checkbox" value=""> Option one is this and that&mdash;be sure to include why it's great
							</label>
						</div>
						<div class="checkbox    disabled">
							<label> <input type="checkbox" value="" disabled> Option two is disabled
							</label>
						</div>

						<div class="radio">
							<label> <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked> Option one is this and
								that&mdash;be sure to include why it's great
							</label>
						</div>
						<div class="radio">
							<label> <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2"> Option two can be something else and
								selecting it will deselect option one
							</label>
						</div>
						<div class="radio    disabled">
							<label> <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3" disabled> Option three is disabled
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="textarea" class="col-sm-2    control-label">内联单选和多选框</label>
					<div class="col-sm-10">
						<label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox1" value="option1"> 1
						</label> <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2" value="option2"> 2
						</label> <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox3" value="option3"> 3
						</label> <label class="radio-inline"> <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 1
						</label> <label class="radio-inline"> <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 2
						</label> <label class="radio-inline"> <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> 3
						</label>
					</div>
				</div>
				<div class="form-group">
					<label for="textarea" class="col-sm-2    control-label">下拉列表（select）</label>
					<div class="col-sm-10">
						<select class="form-control">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select> <select multiple class="form-control">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>
				</div>
			</form>
		</div>
		<hr />
		<div class="row">
			<div>静态控件:如果需要在表单中将一行纯文本和 label 元素放置于同一行，为 p 元素添加 .form-control-static 类即可。</div>
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label class="col-sm-2    control-label">Email</label>
					<div class="col-sm-10">
						<p class="form-control-static">email@example.com</p>
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2    control-label">Password</label>
					<div class="col-sm-10">
						<input type="password" class="form-control" id="inputPassword" placeholder="Password">
					</div>
				</div>
			</form>
		</div>
		<hr />
		<div class="row">
			<div>Form Control States</div>
			<form class="form-horizontal" role="form">

				<div class="form-group">
					<label class="col-sm-2    control-label">Focused</label>
					<div class="col-sm-10">
						<input class="form-control" id="focusedInput" type="text" value="Click    to    focus">
					</div>

				</div>

				<div class="form-group">
					<label for="inputPassword" class="col-sm-2    control-label">Disabled</label>
					<div class="col-sm-10">
						<input class="form-control" id="disabledInput" type="text" placeholder="Disabled    input" disabled>
					</div>
				</div>

				<fieldset disabled>
					<div class="form-group">
						<label for="disabledTextInput" class="col-sm-2    control-label">Fieldset disabled</label>
						<div class="col-sm-10">
							<input type="text" id="disabledTextInput" class="form-control">
						</div>

					</div>

					<div class="form-group">
						<label for="disabledSelect" class="col-sm-2    control-label"></label>
						<div class="col-sm-10">
							<select id="disabledSelect" class="form-control">
								<option>Disabled select</option>
							</select>
						</div>
					</div>
				</fieldset>

				<div class="form-group">
					<label for="inputPassword" class="col-sm-2    control-label">只读输入框</label>
					<div class="col-sm-10">
						<input class="form-control" type="text" placeholder="Readonly    input    here…" readonly>
					</div>
				</div>

				<div class="form-group    has-success    has-feedback">
					<label class="col-sm-2    control-label" for="inputSuccess"> Input with success and icon</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputSuccess"> <span class="glyphicon    glyphicon-ok    form-control-feedback"></span>
					</div>
				</div>

				<div class="form-group    has-warning    has-feedback">
					<label class="col-sm-2    control-label" for="inputWarning"> Input with warning and icon</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputWarning"> <span class="glyphicon    glyphicon-warning-sign    form-control-feedback"></span>
					</div>
				</div>

				<div class="form-group    has-error    has-feedback">
					<label class="col-sm-2    control-label" for="inputError"> Input with error and icon</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="inputError"> <span class="glyphicon    glyphicon-remove    form-control-feedback"></span>
					</div>
				</div>
			</form>
		</div>
		<hr />
		<div class="row">
			<div>校验状态</div>
			<form class="form-horizontal" role="form">
				<div class="form-group    has-success">
					<label class="control-label" for="inputSuccess1">Input with success</label> <input type="text" class="form-control" id="inputSuccess1">
				</div>
				<div class="form-group    has-warning">
					<label class="control-label" for="inputWarning1">Input with warning</label> <input type="text" class="form-control" id="inputWarning1">
				</div>
				<div class="form-group    has-error">
					<label class="control-label" for="inputError1">Input with error</label> <input type="text" class="form-control" id="inputError1">
				</div>
				<div class="has-success">
					<div class="checkbox">
						<label> <input type="checkbox" id="checkboxSuccess" value="option1"> Checkbox with success
						</label>
					</div>
				</div>
				<div class="has-warning">
					<div class="checkbox">
						<label> <input type="checkbox" id="checkboxWarning" value="option1"> Checkbox with warning
						</label>
					</div>
				</div>
				<div class="has-error">
					<div class="checkbox">
						<label> <input type="checkbox" id="checkboxError" value="option1"> Checkbox with error
						</label>
					</div>
				</div>
			</form>
		</div>
		<hr />
		<div class="row">
			<div>高度尺寸</div>
			<input class="form-control    input-lg" type="text" placeholder=".input-lg"> <input class="form-control" type="text"
				placeholder="Default    input"> <input class="form-control    input-sm" type="text" placeholder=".input-sm"> <select
				class="form-control    input-lg">...
			</select> <select class="form-control">...
			</select> <select class="form-control    input-sm">...
			</select>

		</div>
		<hr />
		<div class="row">
			<div>Column Sizing</div>
			<div class="col-xs-2">
				<label for="ex1">col-xs-2</label> <input class="form-control" id="ex1" type="text">
			</div>
			<div class="col-xs-3">
				<label for="ex2">col-xs-3</label> <input class="form-control" id="ex2" type="text">
			</div>
			<div class="col-xs-4">
				<label for="ex3">col-xs-4</label> <input class="form-control" id="ex3" type="text">
			</div>
		</div>
		<hr />
		<div class="row">
			<div>Help Text</div>
			<div class="form-group">
				<label for="pwd">Password:</label> <input type="password" class="form-control" id="pwd" placeholder="Enter password"> <span
					class="help-block">This is some help text...</span>
			</div>
		</div>
		<hr />
		<div class="row"></div>
		<hr />
		<div class="row"></div>
		<hr />
		<div class="row"></div>
		<hr />
	</div>
</body>


<script>
	$().ready(function() {

	});
</script>

</html>