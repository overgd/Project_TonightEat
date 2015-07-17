<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/humanity/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script>
$(function() {
	$("#datepicker").datepicker({
		altField: "#datetxt",
	    altFormat: "DD, d MM, yy"
	});
});
</script>
</head>
<body>
<form id="post" action="" method="post">
<div id="datepicker"></div>
<input type="text" id="datetxt"><br/>
  <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <input class="mdl-textfield__input" type="text" id="post-name" />
    <label class="mdl-textfield__label" for="post-name">제목 : </label>
  </div><br/>
  <div class="mdl-textfield mdl-js-textfield">
    <textarea class="mdl-textfield__input" type="text" rows= "5" id="post-content" ></textarea>
    <label class="mdl-textfield__label" for="post-content">내용 : </label>
  </div>
  <br/>
  <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
  Button
</button>
<button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">
  Button
</button>
</form>

</body>
</html>