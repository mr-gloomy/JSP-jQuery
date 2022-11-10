<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script type="text/javascript">
	/*
	ajax
	
	AJAX는 Asynchronous JavaScript And XML의 약자로, 말 그대로 JavaScript와 XML을 이용한 비동기적 정보 교환 기법이다.
	동기화 <-> 비동기화
	
	동기 : 서버의 데이터와 클라이언트의 데이터를 같게하는 작업.
	(화면전환 O)
	
	비동기 : 서버의 데이터와 클라이언트의 데이터를 같게하는 작업.
	(화면전환 X)
	
	*/
	$(function(){
		$('#hkd').click(function(){
			// 비동기방식 처리
//	 		$.ajax("test.jsp");
			$.ajax({
				url:"test.jsp",
				data:{
					name:"홍길동",
					tel:"010-3061-1590",
					phone:"아이폰"},		
				success:function(data){
//	 				alert('ajax 성공! ');
//	 				alert(data);
					$('body').append(data);
					
				},
				error:function(){
					alert('ajax 실패! ')
				},
				complete:function(){
//	 				alert("ajax 완전 끝 ");
				}
			});
		});
		
		
		$('#btnNews').click(function(){
			$.ajax({
				url:"https://fs.jtbc.co.kr/RSS/sports.xml",
				success:function(data){
					alert("성공");
// 					console.log(data);
					$(data).find('item').each(function(){
						$('body').append( "<a href='"+$(this).find('link').text()+"'>"+$(this).find('title').text()+"<hr>"+"</a>");
					});
				}
			});
		});
	
		
		
		
	}); // jQuery끝
</script>
</head>
<body>
	<h1>test5.jsp</h1>
	
	<input type="button" id="hkd" value="정보 불러오기"><br>

	<input type="button" id="btnNews" value="스포츠 기사"><br>
	
	

</body>
</html>

