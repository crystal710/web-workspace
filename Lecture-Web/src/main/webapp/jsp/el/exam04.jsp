<%@page import="kr.co.mlec.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    BoardVO b = new BoardVO();
    b.setNo(1);
    b.setTitle("hello");
    /*
    	pageContext영역에 객체등록
    	이름 : board, 값 : 생성된 BoardVO객체
    */
    
    pageContext.setAttribute("board", b);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	no :  <%= b.getNo() %><br>
	
	no :  <%= ((BoardVO)pageContext.getAttribute("board")).getNo() %><br>
	no : ${ board.no }<br>
	title : ${ board.title }<br>
</body>
</html>