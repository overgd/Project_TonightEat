<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
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
<link  href="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
<script src="//www.parsecdn.com/js/parse-1.5.0.min.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
Parse.initialize("tl9loodjjnPN8aIwScr01pSNUXATyJq9cGanEk30", "glrFWsBB5sNsuX8WB3JiNh3YuZnlB3p1crSkPKrC");

$(document).ready(function () {
	
	$("#objectId").val(getUrlParameter("objectId"));
	
	event.preventDefault();
			
	var Recipe = Parse.Object.extend("Recipe");
	var query = new Parse.Query(Recipe);
	var subject;
	var content;
	var date;
	var image;
	var objectId = $("#objectId").val();
	
	query.get(objectId, {
		success: function(query) {
			
			subject = query.get("subject");
			content = query.get("content");
			
			date = query.get("date");
			image = query.get("image");
			
			if(image != null) {
				$(".view-card-square > .mdl-card__title").css("background", 'url('+image.url()+') center / cover no-repeat' );
			}else{
				$(".view-card-square > .mdl-card__title").css("background", '#fff' );
			}
			
			$("#subject").text(subject);
			$("#content").html(content);
			
		},
		error: function(query, error) {
			alert("����");
		}
	});
		
});

function getUrlParameter(sParam)
{
    var sPageURL = window.location.search.substring(1);
    var sURLVariables = sPageURL.split('&');
    for (var i = 0; i < sURLVariables.length; i++) 
    {
        var sParameterName = sURLVariables[i].split('=');
        if (sParameterName[0] == sParam) 
        {
            return sParameterName[1];
        }
    }
} 
</script>
<style>
.view-card-square.mdl-card {
    width: auto;
    height: 320px;
}
.view-card-square > .mdl-card__title {
  color: #999;
  background: center no-repeat ;
}
</style>
</head>
<body>
<input type="hidden" id="objectId" value=""/>
<div class="mdl-card mdl-shadow--2dp view-card-square">
  <div class="mdl-card__title mdl-card--expand">
    <h2 class="mdl-card__title-text"><div id="subject"></div></h2>
  </div>
  <div class="mdl-card__supporting-text">
    <div id="content"></div>
  </div>
</div>
</body>
</html>