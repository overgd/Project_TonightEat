<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.red-deep_orange.min.css" />
<script
	src="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	type="text/css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/blitzer/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="../jQuery.MultiFile.min.js"></script>
<script type="text/javascript">
$(function() {
	$( "#datetxt" ).datepicker();
});
$(document).ready(function () {
	$("#newpage-btn").click(function () {
		$("#newpage").load("recipepost.jsp .post-card-square");
		return false;
	});
});
</script>
<style>
.post-card-square.mdl-card {
	width: 320px;
	height: auto;
}
.right-under-submit-btn {
	position: fixed;
	display: block;
	right: 0;
	bottom: 0;
	margin-right: 40px;
	margin-bottom: 40px;
	z-index: 900;
	color: #ffffff;
}
.post-card-square > .mdl-card__title {
	height: 320px;
}
#image_preview {
	display:none;
}
</style>
</head>
<body>
	<div align="center">
		<form id="post" action="../RecipePostServlet" method="post">
			<div class="mdl-textfield mdl-js-textfield textfield-date">
				<input class="mdl-textfield__input" type="text" id="datetxt">
				<label class="mdl-textfield__label" for="datetxt">날짜</label>
			</div><br/>
			<div class="mdl-textfield mdl-js-textfield textfield-subject">
				<input class="mdl-textfield__input" type="text" id="subject" name="subject" />
				<label class="mdl-textfield__label" for="subject">제목</label>
			</div><br/>
			<div class="mdl-textfield mdl-js-textfield textfield-content">
				<textarea class="mdl-textfield__input" type="text" rows= "3" id="content" name="content" ></textarea>
				<label class="mdl-textfield__label" for="content">내용</label>
			</div><br/>
			<input type="file" multiple class="multi with-preview"  maxlength="4" accept="gif|jpg|png|jpeg"/>
			<button class="right-under-submit-btn mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
			등록
			</button>
		</form>
	</div>
	
</body>
</html>