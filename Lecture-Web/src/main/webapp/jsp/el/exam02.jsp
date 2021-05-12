<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	http://localhost:9999/Lecture-Web/jsp/el/exam02.jsp?id=aaa&name=bbb청했을때
	id값????
 --%>
 
 	<%
 		String id = request.getParameter("id");
 		String[] hobbies = request.getParameterValues("hobby");
 		
 		if(hobbies == null){
 			hobbies = new String[]{"파라미터 없음"};
 		}
 	%>
 	
 	id: <%= id %><br>
 	id: <%= request.getParameter("id") %><br>
 	id: ${ param.id }<br>
 	
 	name : <%= request.getParameter("name") %><br>
 	name: ${ param.name }<br>
 	
 	<%--
	http://localhost:9999/Lecture-Web/jsp/el/exam02.jsp?id=aaa&hobby=reading&hobby=music&hobby=movie청했을때
	hobby값????
 --%>
 
 	hobbies[0] : <%= hobbies[0] %><br>
 	hobbies[0] : ${ paramValues.hobby[0] }<br>
 	empty hobbies[0] : ${ empty paramValues.hobby[0] }<br>

</body>
</html>