<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("userVO");
	session.invalidate();
%>
<script>
	location.href = "${pageContext.request.contextPath}"
</script>