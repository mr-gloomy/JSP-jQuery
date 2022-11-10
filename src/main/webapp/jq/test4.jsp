<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		// html(), text()
		var h = $('h2').html(); // 해당 대상(요소) 처음만나는 값을 1개 가져옴
// 		alert(h);
		var t = $('h2').text(); // 해당 대상(요소) 모든 값을 가져옴
// 		alert(t);
		
		// 해당 요소의 값 변경(모두)
// 		$('h2').html('Hello ITWILL');
		$('h2').text('Hi');
		
		// 전달되는 값이 HTML 태그의경우
// 		$('h2').html('<h1>Hello3 ITWILL'+t+'</h1>'); // 태그가 적용
// 		$('h2').text('<h1>Hello ITWILL</h1>'); // 태그적용 X, 단순텍스트
		
		$('h2').html(function(idx,html){
			return html+"///"+idx+"@@@@@";
		});
		
		// append(), prepend()
// 		$('body').append("추가@@@@@@@@@@@@@@");
// 		$('body').prepend("추가**********************");
		$('div').append(function(idx){
			return idx;
		})
		
		// 배열(2차원배열 형태) => JSON 타입
		var arr = 
			[
				{name:"학생1",addr:"부산"},
				{name:"학생2",addr:"울산"},
				{name:"학생3",addr:"서울"},
				{name:"학생4",addr:"포항"},
				{name:"학생5",addr:"광주"}
			];
		
		
// 		for(var i=0;i<arr.length;i++){
// 		$('table').append("<tr><td>"+arr[i].name+"</td><td>"+arr[i].addr+"</td></tr>");
// 		}
		// each()
		// $(요소).each(function(){});
		// $.each(요소,function(){});
		
		// 배열의 값을 테이블에 추가
		$(arr).each(function(idx,item){
// 				alert('1');
// 			alert(idx+"/"+item);
			console.log(item); // 배열의 객체값
			$('table').append("<tr><td>"+item.name+"</td><td>"+item.addr+"</td></tr>");
		});
		
		
// 		$('h3').css('background','blue');
		
		// addClass() : 요소에 클래스명을 추가
// 		$('h3').addClass(function(idx){
// 			return 'high_'+idx;
// 		});
		
		$('h3').each(function(idx){
			$(this).addClass('high_'+idx);
			// this - 이벤트가 발생한 요소
		});
		$("#btn2").click(function(){
				alert('버튼 누름');
				});
		
		
		
	});// jQuery끝
</script>
<style type="text/css">
/* 	h3{ */
/* 	background: red;} */
	.high_0{background: red;}
	.high_1{background: blue;}
	.high_2{background: cyan;}
	.high_3{background: magenta;}
	.high_4{background: lime;}
	
</style>
</head>
<body>
	<h1>test4.jsp</h1>

	<h2>head - 0</h2>
	<h2>head - 1</h2>
	<h2>head - 2</h2>
	<h2>head - 2</h2>
	<h2>head - 2</h2>
	<h2>head - 2</h2>
	<hr>
	
	<div>div</div>
	<div>div</div>
	<div>div</div>
	<div>div</div>
	<div>div</div>

<table border="1">
		<tr>
			<td>이름</td>
			<td>주소</td>
		</tr>
		
		
	</table>
	<hr>
	
<!-- 	<h3 style="background: red">item-0</h3> -->
<!-- 	<h3 class="high_1">item-1</h3> -->
<!-- 	<h3 class="high_2">item-2</h3> -->
<!-- 	<h3>item-3</h3> -->
<!-- 	<h3>item-4</h3> -->

	<h3>item-0</h3>
	<h3>item-1</h3>
	<h3>item-2</h3>
	<h3>item-3</h3>
	<h3>item-4</h3>
	<hr>
	
	<input type="button" value="버튼1" onclick="alert('버튼 클릭');">
	<input type="button" value="버튼2" id="btn2">
	
	
	
</body>
</html>



