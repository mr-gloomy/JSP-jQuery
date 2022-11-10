<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="jquery-3.6.1.js"></script>
<script type="text/javascript">
	$(function(){
// 		alert($('h2').css('color'));
		$('h2').css('color','green');
// 		alert($('h2').css('color'));
		
		// h2 태그의 글자색을 모두 다른색 변경
		$('h2').css('color','red');
		var colorArr = ['red','orange','yellow'];
		$('h2').css('color',function(idx,val){
			// 글자색 값을 표현 -> 리턴
// 			alert(idx+"/"+val);
			return colorArr[idx];
		});
		
		// 속성 여러개 한번에 사용
		$('h2').css({
			color:"white",
			background:"cyan"
		});
		// 속성 여러개 각각 적용
		$('h2').css({
			color:"white",
			background:function(idx){
				return colorArr[idx];
			}
		});
		
		// attr(속성명,속성값);
		$('img').attr('src','yellowup.gif');
		// 이미지 가로길이 조절
		$('img').attr('width',200);
		// 이미지 가로길이 각각 다른 크기로 조절
		$('img').attr('width',function(idx){
				return idx*100;
			});
		// 이미지 가로/세로 크기 각각 다른 크기로 조절
		$('img').attr({
			width:function(a){
				return (a+1)*100;
			},
			height:function(b){
				return (b+1)*50;
			}
		})
			
		
		
	});// jQuery끝
</script>
</head>
<body>
	<h1>test3.jsp</h1>
	
	<h2>head - 0</h2>
	<h2>head - 1</h2>
	<h2>head - 2</h2>
	<h2>head - 3</h2>
	
	<hr>
	<img src="pineapple.jpg">
	<img src="pineapple.jpg">
	<img src="pineapple.jpg">
	
	
</body>
</html>