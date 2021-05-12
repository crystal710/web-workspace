<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table border ="1" style="width: 100%">
	<tr>
		<th rowspan="2" width="150px" id="logo">
			<a href="${ pageContext.request.contextPath }"><img src="${ pageContext.request.contextPath }/resources/images/logo.png" height="60px"></a></th>
		<td align="right">즐겨찾기</td>
	</tr>
	<tr>
		<td>
			<nav>
				회원관리 | <a href="${ pageContext.request.contextPath }/jsp/board/list.jsp">게시판</a> | 회원가입 | 로그인 | 마이페이지 | 로그아웃
			</nav>
		</td>
	</tr>
</table>