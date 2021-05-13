<%@page import="kr.ac.mlec.board.dao.BoardDAO"%>
<%@page import="kr.ac.mlec.util.JDBCClose"%>
<%@page import="kr.ac.mlec.board.vo.BoardVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.ac.mlec.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//http://localhost:9999/Mission-Web/jsp/board/detail.jsp?no=5
	
	//조회할 게시물번호 추출
	int no = Integer.parseInt(request.getParameter("no"));

	//t_board 테이블에서 추출한 게시물 조회	
	BoardDAO board = new BoardDAO();
	
	//공유영역 등록
	pageContext.setAttribute("board", board.selectByNo(no));
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세내용</title>
<script>
	function goList() {
		location.href = "list.jsp"		
	}
	function goDelete() {
		if(confirm('${param.no}번 게시글을 삭제할까요?')){
			location.href = "delete.jsp?no=${param.no}"
		}
		
	}
</script>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>
		<div align="center">
		<hr>
		<h1>게시물 상세</h1>
		<hr>
		<br>
		
		<table border="1" style="width:100%">
			<tr>
				<th width="25%">번호</th>
				<td>${ board.no }</td>
			</tr>
			<tr>
				<th width="25%">제목</th>
				<td>${ board.title }</td>
			</tr>
			<tr>
				<th width="25%">작성자</th>
				<td>${ board.writer }</td>
			</tr>
			<tr>
				<th width="25%">내용</th>
				<td>${ board.content }</td>
			</tr>
			<tr>
				<th width="25%">조회수</th>
				<td>${ board.viewCnt }</td>
			</tr>
			<tr>
				<th width="25%">등록일</th>
				<td>${ board.regDate }</td>
			</tr>
		</table>
		<br><br>
		<button onclick="goList()">목  록</button>
		<button onclick="goDelete()">삭  제</button>
		
	</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>