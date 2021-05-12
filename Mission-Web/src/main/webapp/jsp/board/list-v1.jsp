<%@page import="kr.ac.mlec.util.JDBCClose"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.ac.mlec.util.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <%--
  	<작업순서>
  	1. t_board테이블에서 전체 게시물을 조회
  	2. 조회된 데이터를 tr, td에 출력
   --%>
 <%
 	Connection conn = new ConnectionFactory().getConnection();
 	StringBuilder sql = new StringBuilder();
 	sql.append("select no, title, writer, to_char(reg_date,'yyyy-mm-dd') as reg_date ");
 	sql.append("from t_board ");
 	sql.append("order by no desc ");
 	
 	PreparedStatement pstmt = conn.prepareStatement(sql.toString());
 	
 	ResultSet rs = pstmt.executeQuery();
 	
 	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
	<hr width = "70%">
	<h1>전체 게시물 목록</h1>	
	<hr width="70%">
	<br>
	
	<table border="1" style="width: 70%;">
		<tr>
			<th width = "7%">번호</th>
			<th>제목</th>
			<th width = "16%">작성자</th>
			<th width = "20%">등록일</th>
		</tr>
		<%
			while(rs.next()){
				int no = rs.getInt("no");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String regDate = rs.getString("reg_date");
		%>
			<tr>
				<td><%= no%></td>
				<td><%= title %></td>
				<td><%= writer %></td>
				<td><%= regDate %></td>
			</tr>
		<%
			}
		%>
	</table>
	</div>
</body>
</html>
	<% 
		JDBCClose.close(conn,pstmt);
	%>