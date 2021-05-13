<%@page import="kr.ac.mlec.login.dao.LoginDAO"%>
<%@page import="kr.ac.mlec.login.vo.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
	1. 전송된 데이터(id, password) 추출		 id=hong&password=1234
	2. 데이터베이스(t_member)에서 일치하는 회원여부 판단
	3. 판단결과에 따라 알림창 띄우기
--%>

<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	LoginVO loginVO = new LoginVO();
	loginVO.setId(id);
	loginVO.setPassword(password);
	
	LoginDAO dao = new LoginDAO();
	LoginVO userVO = dao.login(loginVO);
	
	String msg = "";
	String url = "";
	if(userVO != null) {
		// 로그인 성공
		msg = "로그인을 성공했습니다";
		url = request.getContextPath();
		
		// 세션등록
		session.setAttribute("userVO", userVO);
	} else {
		// 로그인 실패
		msg = "아이디 또는 패스워드가 잘못입력되었습니다";
		url = "login.jsp";
	}
	
	pageContext.setAttribute("msg", msg);
	pageContext.setAttribute("url", url);
%>
<script>
	alert('${ msg }')
	location.href = '${ url }'
</script>














