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
<script src="//www.parsecdn.com/js/parse-1.5.0.min.js"></script>
<script type="text/javascript">

$(function() {
	$( "#datetxt" ).datepicker();
});

Parse.initialize("tl9loodjjnPN8aIwScr01pSNUXATyJq9cGanEk30", "glrFWsBB5sNsuX8WB3JiNh3YuZnlB3p1crSkPKrC");

$(document).ready(function () {
	$("#newpage-btn").click(function () {
		$("#newpage").load("recipepost.jsp .post-card-square");
		return false;
	});
	
	$("#submit").click(function () {
		
		document.form.submit();
		
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
	margin-right: 10px;
	margin-bottom: 5px;
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
		<form action="recipeview.jsp" method="post">
			<br/>
			<input type="text" id="objectId" name="objectId"/>
			<label for="datetxt">날짜선택</label>
			<input type="text" id="datetxt" name="datetxt">
			<br/>
			<div class="mdl-textfield mdl-js-textfield textfield-subject">
				<input class="mdl-textfield__input" type="text" id="subject" name="subject" />
				<label class="mdl-textfield__label" for="subject">제목</label>
			</div><br/>
			<div class="mdl-textfield mdl-js-textfield textfield-content">
				<textarea class="mdl-textfield__input" type="text" rows= "10" id="content" name="content" ></textarea>
				<label class="mdl-textfield__label" for="content">내용</label>
			</div><br/>
			</div><br/>
			<input type="file" name="image" id="image"/>
			<button id="submit" class="right-under-submit-btn mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
			등록
			</button>
		</form>
	</div>
	
</body>
</html>