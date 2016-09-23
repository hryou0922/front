<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 
</head>
<body>
<!-- 

toggle buttons: come before brand text container(.navbar-header) or inside it.
	.navbar-header: brand text container.
	.navbar-menu: optional element which contains a menu or form.
	.navbar-buttons.navbar-header: contains user info buttons and dropdowns.

 -->
<div id="navbar" class="navbar navbar-default">
 <div id="navbar-container" class="navbar-container">

    <!-- toggle buttons are here or inside brand container -->

    <div class="navbar-header pull-left">
      <!-- brand text here -->
    </div><!-- /.navbar-header -->


    <div class="navbar-buttons navbar-header pull-right ">
      <ul class="nav ace-nav">
        <!-- user buttons such as messages, notifications and user menu -->
        <!-- 右边的按钮 -->
      </ul>
    </div><!-- /.navbar-buttons -->


    <nav class="navbar-menu pull-left">
      <!-- optional menu & form inside navbar -->
    </nav><!-- /.navbar-menu -->

 </div><!-- /.navbar-container -->
</div><!-- /.navbar -->

</body>
</html>