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
<script>
$(function() {
	$("#datepicker").datepicker({
		altField: "#datetxt",
	    altFormat: "yy-MM-DD-d"
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
}
</style>
</head>
<body>
	<div align="center">
		<form id="post" action="../RecipePostServlet" method="post">
			<div id="datepicker"></div>
			<input type="text" id="datetxt"><br/><br/>
			<div class="mdl-card mdl-shadow--2dp post-card-square">
				<div class="mdl-card__title mdl-card--expand">
					<h2 class="mdl-card__title-text">
						<div class="mdl-textfield mdl-js-textfield">
							<input class="mdl-textfield__input" type="text" id="subject" />
							<label class="mdl-textfield__label" for="subject">제목</label>
						</div>
					</h2>
				</div>
				<div class="mdl-card__supporting-text">
					<div class="mdl-textfield mdl-js-textfield">
						<textarea class="mdl-textfield__input" type="text" rows= "3" id="content" ></textarea>
						<label class="mdl-textfield__label" for="content">내용</label>
					</div>
				</div>
				<div class="mdl-card__menu">
					<input type="file" class="multi with-preview" multiple />
				</div>
			</div><br/>
			카드추가 
			<button class="mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-js-ripple-effect button--colored">
				<i class="material-icons">add</i>
			</button>
			<br/>
			<div class="right-under-submit-btn">
				<button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">
				 등록
				</button>
			</div>
		</form>
	</div>
</body>
</html>