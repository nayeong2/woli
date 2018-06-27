<%@page import="com.kitri.member.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();

//MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");

//String name = request.getParameter("name");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<font color="lightgray">
안녕하세요.<br>
카카오 계정으로 로그인하였습니다.
모든 서비스 이용을 위해서 추가정보가 필요합니다.<br>
<a href="<%=root%>/user?act=mvjoin">회원가입</a>
<a href="<%=root%>/user?act=mvmaillist">내메일함</a>
<a href="<%=root%>/login/login.jsp">뒤로</a>
</font>
</center>
</body>
</html>