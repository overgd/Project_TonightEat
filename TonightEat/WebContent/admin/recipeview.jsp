<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.red-deep_orange.min.css" />
<script
	src="https://storage.googleapis.com/code.getmdl.io/1.0.0/material.min.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	type="text/css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style>
  .demo-card-square.mdl-card {
    width: 320px;
    height: 320px;
  }
  .demo-card-square > .mdl-card__title {
    color: #999;
    background:
      url('../assets/demos/dog.png') center / cover;
  }
</style>
</head>
<body>
${DATE }
<div class="mdl-card mdl-shadow--2dp demo-card-square">
  <div class="mdl-card__title mdl-card--expand">
    <h2 class="mdl-card__title-text">${SUBJECT1 }</h2>
  </div>
  <div class="mdl-card__supporting-text">
   ${CONTENT1 }
  </div>
</div>
</body>
</html>