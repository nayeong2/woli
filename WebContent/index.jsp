<%@page import="com.kitri.member.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String root= request.getContextPath();
//MemberDto memberDto = (MemberDto) request.getAttribute("userInfo");
MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <script type="text/javascript" charset="utf-8" src="js/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="oauth/jquery.cookie.js"></script>
    <script type="text/javascript" charset="utf-8" src="oauth/naverLogin.js"></script>


<title>Insert title here</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>
<form name ="indexform" method="post" action="">
<center>
<h3>MVC Pattern을 이용한 회원가입 &amp; 로그인</h3>
<a id="kakao-login-btn"></a>
<a href="http://developers.kakao.com/logout"></a>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('ee0481e16410360d3cd2101466da0d48');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function(authObj) {
        alert(JSON.stringify(authObj));
		document.indexform.action ="<%=root%>/login/loginokkakao.jsp";
		document.indexform.submit();
      },
      fail: function(err) {
         alert(JSON.stringify(err));
         document.indexform.action ="<%=root%>/login/loginfail.jsp";
 		 document.indexform.submit();

      }
    });
  //]]>
</script>
<br>


<%
if(memberDto == null) {
%>

<a href="<%=root%>/user?act=mvjoin">회원가입</a><br>
<a href="<%=root%>/user?act=mvlogin">로그인</a><br>
<%
} else {
%>
<%= memberDto.getName() %>님 안녕하세요.
<a href="<%=root%>/user?act=logout">로그아웃</a><br>
<a href="<%=root%>/user?act=mvmaillist">메일함</a>
<a href="<%=root%>/user?act=mvmodify">내정보 수정</a><br> <!-- member.jsp 활용 기존 입력 정보는 그대로 불러옴, ID/이름은 바꿀수 없게 설정 -->
<a href="<%=root%>/user?act=delete">회원탈퇴</a><br><!-- DB에서 정보 삭제 -->
<a href="<%=root%>/admin?act=main">관리자페이지</a><br><!-- 회원목록 조회 -->

<%
}
%>

</center>
</form>
</body>
</html>
