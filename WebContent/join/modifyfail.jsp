<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<font color="red" size="15">
	서버에 문제가 있어 정보수정을 실패하였습니다.<br>
	다음에 다시 진행해 주세요.
	</font>
	<a href="<%=root%>/index.jsp">홈</a><br>
</center>
</body>
</html>