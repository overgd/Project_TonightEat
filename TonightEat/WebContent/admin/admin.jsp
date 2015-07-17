<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
	rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/humanity/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script>
$(document).ready(function(){
	
});
</script>
</head>
<body>
<div class="admin-layout">
		<div
			class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
			<header class="mdl-layout__header">
				<div class="mdl-layout__header-row">
					<div class="mdl-layout-spacer">야식뭐먹지 관리페이지</div>
				</div>
			</header>
			<div class="mdl-layout__drawer">
				<span class="mdl-layout-title">메뉴</span>
				<nav class="mdl-navigation">
					<a id="postbtn" class="mdl-navigation__link" href="admin.jsp?content=recipepost.jsp">레시피등록</a> 
					<a id="searchbtn" class="mdl-navigation__link">레시피찾기</a>
					<a id="keyword" class="mdl-navigation__link">ㄴ키워드찾기</a>
					<a id="date" class="mdl-navigation__link">ㄴ날짜찾기</a>
				</nav>
			</div>
			<main class="mdl-layout__content">
			<div align="center" class="page-content">
			<jsp:include page="${param.content }"></jsp:include>
			</div>
			</main>
		<footer class="mdl-mini-footer">
		<div class="mdl-mini-footer--right-section">
		<p class="mdl-typography--font-light">Satellite imagery: © 2014 Astrium, DigitalGlobe</p>
		</div>
		</footer>
		</div>

	</div>
</body>
</html>