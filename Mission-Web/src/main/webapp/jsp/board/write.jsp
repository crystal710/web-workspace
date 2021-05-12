<%@page import="kr.ac.mlec.board.dao.BoardDAO"%>
<%@page import="kr.ac.mlec.board.vo.BoardVO"%>
<%@page import="kr.ac.mlec.board.dao.BoardDAO2"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%--
    	작업순서
    	1. POST방식으로 전달된 제목, 작성자, 글 내용 추출
    		http://localhost:9999/Mission-Web/jsp/board/write.jsp
    			 title=제목&writer=홍길동&content=내용입니다
    	2. 추출된 정보를 t_board테이블에 새로운 게시글 삽입
    	3. 목록페이지로 이동
     --%>
<%
request.setCharacterEncoding("utf-8"); // POST방식에서 인코딩해줘야해

	String title = request.getParameter("title");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	
	BoardVO board = new BoardVO();
	board.setTitle(title);
	board.setWriter(writer);
	board.setContent(content);
	
	BoardDAO dao = new BoardDAO();
	dao.insertBoard(board);
/* 	dao.insertBoard(title, writer, content); */
%>

<script>
	alert('새글 등록을 완료하였습니다.')
	location.href="${pageContext.request.contextPath}/jsp/board/list.jsp"

</script>