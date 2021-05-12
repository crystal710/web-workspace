<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1값을 가지는 변수 cnt를 공유영역(page)에 등록<br>
	
	<c:set var="cnt" value="1"/>
	cnt: ${ cnt }<br>
	
	cnt 변수에 1더한값을 공유영역(reqeust)에 등록<br>
	<c:set var ="cnt" value = "${ cnt + 1 }" scope="request"/>
	page cnt : ${ cnt }<br>
	request cnt : ${ requestScope.cnt }<br>
	
	page영역의 cnt변수 삭제<br>
	<c:remove var="cnt" scope="page"/>
	page cnt : ${ pageScope.cnt }<br>
	request cnt : ${ requestScope.cnt }<br>
</body>
</html>
<%--
	JSP, EL, JSTL별 공유영역 4가지
	--------------------------------------------
		JSP				EL			     JSTL
	--------------------------------------------
	   pageConext	  pageScope			page
	   request		  requestScope		request
	   session		  sessionScope		session
	   application	  applicationScope	application
	---------------------------------------------
 --%>