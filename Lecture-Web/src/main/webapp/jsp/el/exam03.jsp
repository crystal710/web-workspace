<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	/*
    		공유영역에 객체 등록 : 공유객체명.setAttribute(이름, 값);
    		JSP 공유영억 4가지 : pageContext, request, session, application
    	*/
		pageContext.setAttribute("msg","page영역에 객체등록");    
    	
    	//request영역에 id라는 이름으로 홍길동을 등록
    	
    	request.setAttribute("id", "홍길동");
    	request.setAttribute("msg", "request영역에 객체등록");
    	pageContext.setAttribute("length",((String)request.getAttribute("msg")).length());
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	el 공유영역 4가지 : pageScope, requestScope, sessionScope, applicationScope
 --%>
 
 	empty msg : ${ empty msg }<br>
 	msg : ${ msg }<br>
 	
 	id : ${ id }<br>
 	
 	request msg : ${ requestScope.msg }<br>
 	request msg 길이 : <%= ((String)request.getAttribute("msg")).length() %><br>
 	request msg 길이 : ${ length }<br>
</body>
</html> 







