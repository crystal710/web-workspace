<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	String[] names = {"홍길동","강길동","윤길동","박길동"};
	pageContext.setAttribute("names", names);
	pageContext.setAttribute("namesLength", names.length);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 
	홍길동, 강길동, 윤길동, 박길동 형태로 출력
--%>
	name : first : last : index : count<br>
	<c:forEach items="${names }" var="name" varStatus="loop">
		${ name } : ${ loop.first } : ${ loop.last } : ${ loop.index } : ${ loop.count }<br>
	</c:forEach>

	<hr>
	
	<c:forEach items="${ names }" var ="name" varStatus="loop">
		<c:if test="${ not loop.first }">,</c:if>
		${ name }
	</c:forEach>
	<hr>
	<c:set var="cnt" value="0"/>
	<c:forEach items="${ names }" var="name">
	<c:if test="${ cnt ne 0 }">
		,
	</c:if>
		${ name }
		<c:set var="cnt" value="${cnt + 1 }"/>
	</c:forEach>
	<c:remove var="cnt"/>
	
	<hr>
	<c:forEach begin="0" end ="${fn:length(names) -1 }" var="i">
		<c:if test="${ i ne 0 }">
			,
		</c:if>
		${ names[i] }
	</c:forEach>
	<hr>
	
	<c:forEach begin="1" end="5" var="i">
		${ i }<br>
	</c:forEach>
	<hr>
	<c:forEach items="${ names }" var="i">
		${ i }<br>
	</c:forEach>
</body>
</html>