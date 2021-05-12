<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="/Mission-Web/resources/css/layout.css"> -->
<%-- <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/layout.css"> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script>
	function checkLogin() {
		alert('!!!!!!')
		return true
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>
		<div align="center">
		<hr>
			<h1>로그인</h1>
			<br>
			<form name = "loginForm" action="loginProcess.jsp" method ="post" onsubmit="return checkLogin()"> 
				<table style="width: 60%">
					<tr>
						<th>아이디</th>
						<td><input type="text" name="id"></td>	
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input type="password" name="password"></td>
					</tr>
				</table>
				<br>
				<input type= "submit" value = "로그인">
			</form>
		<hr>
		</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>