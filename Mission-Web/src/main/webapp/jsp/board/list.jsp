<%@page import="kr.ac.mlec.board.dao.BoardDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.ac.mlec.board.vo.BoardVO"%>
<%@page import="kr.ac.mlec.util.JDBCClose"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.ac.mlec.util.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
  <%--
  	<작업순서>
  	1. t_board테이블에서 전체 게시물을 조회
  	2. 조회된 데이터를 tr, td에 출력
   --%>
 <%

 	BoardDAO dao = new BoardDAO();
 	
 	//공유영역에 등록
 	pageContext.setAttribute("boardList", dao.selectAllBoard());
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/board.css">
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$('#newBtn').click(function() {
//			location.href = "${ pageContext.request.contextPath }/jsp/board/writeForm.jsp"
			location.href = "writeForm.jsp"
		})
	}) 
	
	function goDetail(boardNo) {
		<c:if test="${ empty userVO}">
			if(confirm('로그인 서비스가 필요합니다\n로그인 페이지로 이동할까요?')){
				location.href= "${pageContext.request.contextPath}/jsp/login/login.jsp"
			}
		</c:if>
		
		<c:if test="${not empty userVO}">
			location.href = "detail.jsp?no=" + boardNo
		</c:if>
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>
		<div align="center">
		<br>
		<hr>
		<h1>전체게시물 목록</h1>
		<hr>
		<br>
		
		<table border="1" style="width: 100%;">
			<tr>
				<th width="7%">번호</th>
				<th>제목</th>
				<th width="16%">작성자</th>
				<th width="20%">등록일</th>
			</tr>
			<c:forEach items="${ boardList }" var="board">
				<tr>
					<td>${ board.no }</td>
					<td>
						<!-- <a href="/Mission-Web/jsp/board/detail.jsp"> -->
					<%-- 	<a href="detail.jsp?no=${ board.no }"> --%>
						<%-- <a onclick="goDetail(${ board.no })"> --%>
						<a href = "javascript:goDetail(${board.no})">
							<c:out value="${ board.title }" />
						</a></td>
					<td>${ board.writer }</td>
					<td>${ board.regDate }</td>
				</tr>
			</c:forEach>
		</table>
		<br><br>
		<c:if test="${ not empty userVO }">
			<button id="newBtn">새글등록</button>
		</c:if>
	</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>