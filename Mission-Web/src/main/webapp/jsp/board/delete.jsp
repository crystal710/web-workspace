<%@page import="kr.ac.mlec.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//삭제할 게시물 번호 추출
	int no = Integer.parseInt(request.getParameter("no"));

//t_board 테이블에서 추출한 게시물 삭제
	BoardDAO board = new BoardDAO();
	
	board.deleteBoard(no);
%>
<script>
	alert('삭제를 완료하였습니다.')
	location.href="${pageContext.request.contextPath}/jsp/board/list.jsp"

</script>