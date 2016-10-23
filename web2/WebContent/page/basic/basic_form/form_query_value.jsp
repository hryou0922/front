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
			<div>获取基本值(input-text,texare,radio,checkbox,select; || 批量获取input值)</div>
			<form class="form-horizontal" role="form">

				<div class="form-group">
					<label for="text" class="col-sm-2    control-label">输入框</label>
					<div class="col-sm-10">
						<input type="text" id="input_value" class="form-control" placeholder="Text    input">
					</div>
				</div>

				<div class="form-group">
					<label for="textarea" class="col-sm-2    control-label">文本域</label>
					<div class="col-sm-10">
						<textarea class="form-control" id="textarea_value" rows="3"></textarea>
					</div>
				</div>

				<div class="form-group">
					<label for="textarea" class="col-sm-2    control-label">单选框</label>
					<div class="col-sm-10">
						<label class="radio-inline"> <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1"> 1
						</label> <label class="radio-inline"> <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 2
						</label> <label class="radio-inline"> <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> 3
						</label>
					</div>
				</div>
				<div class="form-group">
					<label for="inlineCheckbox" class="col-sm-2    control-label">多选框</label>
					<div class="col-sm-10">
						<label class="checkbox-inline"> <input type="checkbox" name="inlineCheckbox" id="inlineCheckbox1" value="option1"> 1
						</label> <label class="checkbox-inline"> <input type="checkbox" name="inlineCheckbox" id="inlineCheckbox2" value="option2"> 2
						</label> <label class="checkbox-inline"> <input type="checkbox" name="inlineCheckbox" id="inlineCheckbox3" value="option3"> 3
						</label>
					</div>
				</div>
				<div class="form-group">
					<label for="textarea" class="col-sm-2    control-label">下拉列表（select）</label>
					<div class="col-sm-10">
						<select class="form-control" id="select_value">
							<option value="v_1">1</option>
							<option value="v_2">2</option>
							<option value="v_3">3</option>
							<option value="v_4">4</option>
							<option value="v_5">5</option>
						</select>
					</div>
				</div>
				<hr>
				<div class="form-group">
					<label for="text" class="col-sm-2    control-label">输入框</label>
					<div class="col-sm-10">
						<input type="text" id="input_value_batch_1" class="form-control" placeholder="Text input" value="batch_value_1">
					</div>
				</div>
				<div class="form-group">
					<label for="text" class="col-sm-2    control-label">输入框</label>
					<div class="col-sm-10">
						<input type="text" id="input_value_batch_2" class="form-control" placeholder="Text    input" value="batch_value_2">
					</div>
				</div>
				<div class="form-group">
					<label for="text" class="col-sm-2    control-label">输入框</label>
					<div class="col-sm-10">
						<input type="text" id="input_value_batch_3" class="form-control" placeholder="Text    input" value="batch_value_3">
					</div>
				</div>
				<div class="form-group">
					<label for="textarea" class="col-sm-2    control-label">
						<button type="submit" id="submit_1" class="btn btn-default">Submit</button>
					</label> <label for="textarea" class="col-sm-2    control-label">
						<button type="submit" id="submit_batch" class="btn btn-default">获取所有input的值</button> <span></span>
					</label>
				</div>
			</form>
		</div>
		<hr />

		<hr />
		<div class="row">
			<div>checkbox日常jquery操作</div>
			<div>
				<input id="checkAll" type="checkbox" />全选 <input name="subBox" type="checkbox" />项1 <input name="subBox" type="checkbox" />项2 <input
					name="subBox" type="checkbox" />项3 <input name="subBox" type="checkbox" />项4
			</div>
		</div>
		<hr />
		<div class="row">
			<div>radio的jquery日常操作及属性</div>
			<div>
				<input type="radio" name="subradio" id="subradio1" value="1" />1 <input type="radio" name="subradio"  id="subradio2" value="2" />2 <input type="radio"
					name="subradio" id="subradio3" value="3" />3 <input type="radio" name="subradio" id="subradio4" value="4" />4
			</div>
			<div>
				<button type="button" id="radio_btn">radio btn</button>
			</div>
		</div>
		<hr />
		<div class="row"></div>
		<hr />
	</div>
</body>


<script>
	$().ready(function() {
		
		// 设置初始化值
		$("#input_value").val("init input");
		$("#textarea_value").val("init textare");
		$("#select_value").val("v_4");
		$("input:checkbox[value='option2']").attr("checked",true);
		$("input:radio[value='option2']").attr('checked','true');
		// 通过each设置所有的checked值
		   
		$("#submit_1").click(function(){
			var input_value = $("#input_value").val();
			var textarea_value = $("#textarea_value").val();
			var select_value = $("#select_value").val();
			
			// 获取radio值
			var radio_value = $("input[type=radio]:checked").val();
			// 获取选择所有checkbox值
			var checkbox_value = "";
			 $("input[type=checkbox]:checked").each(function () {
				 checkbox_value += $(this).val() + ";";
	        });
			
			alert("input_value="+input_value+";textarea_value="+textarea_value
				+";select_value="+select_value+";radio_value="+radio_value
				+";checkbox_value="+checkbox_value);
		});
		// 批量获取input值
		 /*循环获取文本框的值*/
		 $("#submit_batch").click(function(){
	        $("input[type='text']").each(function () {
	            $("span").append($(this).val() + ",");
	        });
		 });
		
		// checkbox日常jquery操作
		 $("#checkAll").click(function() {
			 var checkAllChecked = this.checked; // 获取checked的属性值
             $('input[name="subBox"]').each(function(){
            	// 根据全选设置剩余的checkbox
            	 this.checked = checkAllChecked; 
             });
         });
         var $subBox = $("input[name='subBox']");
         $subBox.click(function(){
             var checkAllResult = $subBox.length == $("input[name='subBox']:checked").length ? true : false;
        	 $("#checkAll")[0].checked = checkAllResult;
            // $("#checkAll").attr("checked", checkAllResult); 
         });
         
         // radio 日常操作
         $("#radio_btn").click(function(){
             alert($("input[type='radio'][name='subradio']:checked").length == 0 ? "没有任何单选框被选中" : "已经有选中")
        	 $("#subradio2").attr("checked","true"); // 选择值第一个值
        	 $("input[name=subradio]:eq(0)").attr("checked",'true');   // 这样就是第一个选中咯。 
         });
         
         
	});
</script>

</html>