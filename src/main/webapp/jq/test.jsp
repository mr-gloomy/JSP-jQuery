<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- 	<h1>test.jsp 파일 </h1> -->
	
	<%
// 		System.out.println("test.jsp 실행 !~~~!~~@~!@~#!@#!@#");
		System.out.println(request.getParameter("name"));
		
	%>
	<%=request.getParameter("name") %>
	<%=request.getParameter("tel") %>
	<%=request.getParameter("phone") %>
