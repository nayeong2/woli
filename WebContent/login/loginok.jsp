<%@page import="com.kitri.member.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();

MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");

//String name = request.getParameter("name");
if(memberDto != null) {
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
<b><%= memberDto.getName() %>(<%= memberDto.getId() %>)</b>님 안녕하세요.<br>
<a href="mailto:<%= memberDto.getEmail1() %> @ <%= memberDto.getEmail2()%>">메일보내기</a><br>
<a href="<%=root%>/user?act=mvmaillist">내메일함</a>
<a href="<%=root%>/login/login.jsp">뒤로</a>
</font>
</center>
</body>
</html>
<%
} else {
%>
<script>
alert("로그인 후 서비스를 이용 할 수 있습니다.");
document.location.href = "<%=root%>/login/login.jsp";
</script>
<%
}
%>