<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새글등록</title>
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
			<h1>새글등록 폼</h1>
			<hr>
			<br>
			<form action="write.jsp" method ="post">
				<input type="hidden" name ="writer" value="${userVO.id }"> <!-- 입력받지않은 임의 정보도 넣고싶음 -->
				<table style="width: 100%">
					<tr>
						<th width="25%">제목</th>
						<td><input type="text" name="title" size ="100" required="required"></td>
					</tr>
					<tr>
						<th width="25%">작성자</th>
						<td><input type="text" name="writer" size="100" required value = "${ userVO.id }" readonly></td>
					</tr>
					<tr>
						<th width="25%">내용</th>
						<td>
							<textarea rows="7" cols="100" name="content" required="required"></textarea>
						</td>
					</tr>
				</table>
				<br>
				<input type="submit" value="등록" />
			</form>
		</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>