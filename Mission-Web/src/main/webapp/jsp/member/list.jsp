<%@page import="kr.ac.mlec.util.JDBCClose"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.ac.mlec.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	Connection conn = new ConnectionFactory().getConnection();
 	StringBuilder sql = new StringBuilder();
 	sql.append("select id, name, password, (tel1 ||'-'|| tel2 ||'-'|| tel3) as phone_number , to_char(reg_date,'yyyy-mm-dd') as reg_date ");
 	sql.append("from t_member ");
 	sql.append("order by id desc ");
 	
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
	<h1>전체 회원 목록</h1>	
	<hr width="70%">
	<br>
	
	<table border="1" style="width: 70%;">
		<tr style="background-color: pink">
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
			<th>전화번호</th>
			<th>등록일</th>
		</tr>
		<%
			while(rs.next()){
				String id = rs.getString("id");
				String name = rs.getString("name");
				String password = rs.getString("password");
				String phoneNumber = rs.getString("phone_number");
				String regDate = rs.getString("reg_date");
		%>
			<tr>
				<td><%= id%></td>
				<td><%= name %></td>
				<td><%= password %></td>
				<td><%= phoneNumber %></td>
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