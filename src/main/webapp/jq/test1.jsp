<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 직접 파일추가 -->
<!-- <script src="jquery-3.6.1.js"></script> -->
<!-- 외부 CDN링크 추가 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	alert('1111');
	
	$(document).ready(function(){
		alert('2222');	
	}); // html 코드 모두 읽어서 준비 됐을때.
	
	$(function(){
		alert('4444');
	});
	
// 	jQuery(document).ready(function(){
// 		alert('6666');
// 	});
// 	jQuery(function(){
// 		alert('7777');
// 	});
	
		alert('3333');
</script>
	<h1>test1.jsp</h1>


</body>
</html>