<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();

int x = 10;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="<%=root%>/css/style.css" type="text/css">
<script type="text/javasctript" src="src="/PortalIdLogin_ajax/js/httpRequest.js"></script>
<script type="text/javascript">
var cnt=1
function join(){
	if(cnt != 1) {
		alert("아이디 확인!");
		return;
	} else if(document.getElementById("name").value == "") {
		alert("이름 입력!");
		return;
	} else if(document.getElementById("pass").value  == "") {
		alert("비밀번호 입력!");
		return;
	} else if(document.getElementById("pass").value != document.getElementById("passcheck").value) {
		alert("비밀번호 확인!");
		return;
	} else {
		document.joinform.action = "<%=root%>/user";
		document.joinform.submit();
	}
}

function openzip(){
	window.open("<%=root%>/user?act=mvzip","zip","top=200, left=300, width=400, height=300, menubar=no, status=no, toolbar=no, location=no, scrollbars=yes");
}

var view;
var id;
function idcheck(){
	view = document.getElementById("idresult");
	id = document.getElementById("id").value;
	var params = "act=idSearch&id=" + id;
	if(id.length < 5 || id.length > 16) {
		view.innerHTML = "는 사용 할 수 없는 ID입니다.아이디는 5자이상 16자 이하입니다."
		return;
	}
	sendRequest("<%=root%>/user", params, idresult, "GET");


}

function idresult () {

	if(http.Request.readyState == 4) {//처리완료
		if(httpRequest.status == 200) {
			cnt = http.request.responseText;
			if (cnt == 0) {
				view.innerHTML = '<fontcolor="blue"><b>' + id + '</>는 사용 가능한 ID입니다.</font>';
			} else {
				'<fontcolor="red"><b>' + id + '</>는 사용 중 인 ID입니다.</font>';

			}
			view.innerHTML = txt;
		} else {
			alret("처리중 문제 발생");

		}
	}
}

</script>
 </head>

 <body>
  <center>
	<h3>회원가입</h3>
	<form name ="joinform" method="post" action="">
	 <input type="hidden" name="act" value="register">
	 <table width="780" height="700" cellspacing="4" cellpadding="5">
			<tr>
			 <td class="td1">이름<font color="red">*</font></td>
			 <td class="td3"><input type="text" name="name" id="name" value="" size="12"></td>
			</tr>

<!--
			<tr>
			 <td class="td2">주민등록번호<font color="red">*</font></td>
			 <td class="td4"><input type="text" name="reginum1" value="" size="12" maxlength="6"> -
			 <input type="text" name="reginum2" value="" size="12" maxlength="7"></td>
			</tr>

			<tr>
			 <td class="td1">닉네임(별명)<font color="red">*</font></td>
			 <td class="td3"><input type="text" name="nickname" value="" size="12">&nbsp;&nbsp; 실명을 사용하지 않는 서비스에서 사용되는 <font color="#3cb371">별명</font>입니다.<br>입력하지 않으실 경우 회원님의 이름이 등록됩니다.</td>
			</tr>
-->

			<tr>
				 <td class="td2">아이디(ID)<font color="red">*</font></td>
				 <td class="td4">
				 <input type="text" name="id" id="id" value="" size="12" placeholder="아이디입력" onkeyup="javascript:idcheck();">
				 <span>아이디입력</span>
				</td>
			</tr>

			<tr>
			 <td class="td1">비밀번호입력<font color="red">*</font></td>
	         <td class="td3"><input type="password" name="pass" id="pass" size="12" maxlength="12">&nbsp;&nbsp;<font color="#3cb371">6~12</font>자리의 영문(대소문자 구별)이나 숫자</td>
			</tr>

			<tr>
			 <td class="td2">비밀번호확인<font color="red">*</font></td>
	         <td class="td4"><input type="password" name="passcheck" id="passcheck" size="12" maxlength="12">&nbsp;&nbsp;비밀번호를 한번더 입력하세요</td>
			</tr>
<!--
            <tr>
			 <td width="120" class="td1">비밀번호 재발급<font color="red">*</font><br>질문 선택</td>
			 <td class="td3">
			  <select name="question">
			   <option value="">가장 좋아하는 색상은?(예: 빨강)</option>
			   <option value="">어릴 적 단짝 친구의 이름은?</option>
			   <option value="">가장 좋아하는 음식은?</option>
			   <option value="">가장 여행하고 싶은 나라는?</option>
			   <option value="">기억에 남는 추억의 장소는?</option>
			   <option value="">가장 좋아하는 연예인은?</option>
			  <option value="">친구들에게 공개하지 않은 어릴 적 별명이 있다면?</option>
			  </select><br>
			  혹시 비밀번호를 잊어버리신 경우 여기에서 선택한 질문을 하게됩니다.
			 </td>
			</tr>

			<tr>
			 <td width="120" class="td2">비밀번호 재발급<font color="red">*</font><br>답변 입력</td>
	         <td class="td4"><input type="text" name="answer" size="35"><br>
			 위에서 선택하신 질문에 대한 답변을 입력하세요.<br>
			 비밀번호를 잊어버리신 경우 이 답변을 이용하여 비밀번호를 재발급 받으실 수 있습니다.</td>
			</tr>
-->
		    <tr>
			 <td class="td1">연락처<font color="red">*</font></td>
			 <td class="td3">
			  휴 대 폰&nbsp;&nbsp;<select name="tel1">
			   <option value="">----</option>
		       <option value="010">010</option>
			   <option value="010">011</option>
			   <option value="010">016</option>
			   <option value="010">017</option>
			   <option value="010">018</option>
			  </select> -
					<input type="text" name="tel2" value="" size="4" maxlength="4" > -
					<input type="text" name="tel3" value="" size="4" maxlength="4" ><br>
<!--
			  유선전화&nbsp;<select name="tel1">
			   <option value="">----</option>
		       <option value="010">02</option>
			   <option value="010">031</option>
			   <option value="010">032</option>
			   <option value="010">033</option>
			   <option value="010">041</option>
			  </select> -
					<input type="text" name="tel2" value="" size="4" maxlength="4" > -
					<input type="text" name="tel3" value="" size="4" maxlength="4" >
					<input type="radio" name="location" value="집" checked>집
        	        <input type="radio" name="location" value="회사">회사
					<br>휴대폰이나 유선전화 중에서 <font color="#3cb371">하나는 반드시 입력하셔야 합니다.</font>
-->
			 </td>
			</tr>

			<tr>
			 <td class="td2">우편번호<font color="red">*</font></td>
			 <td class="td4">
			 	<input type="text" name="zipcode" id="zipcode" value="" size="5" maxlength="5" readonly="readonly">
			 	<input type="button" value="우편번호검색" onclick="javascript:openzip();">
			 </td>
			</tr>
			<tr>
			 <td class="td1">주소<font color="red">*</font></td>
			 <td class="td3"><input type="text" name="addr1" id="addr1" value="" size="100" readonly="readonly"></td>
			</tr>

			<tr>
			 <td class="td2">상세주소<font color="red">*</font></td>
			 <td class="td4"><input type="text" name="addr2" size="100"></td>
			</tr>

            <tr>
			 <td class="td1">주로 쓰는 이메일<font color="red">*</font></td>
			 <td class="td3"><input type="text" name="email1" value="" size="12"> @
					<!--<input type="text" name="direct" value="" size=12>-->
	                <select name="email2">
					<!--<option value="naver.com">직접입력</option>-->
		            <option value="naver.com">naver.com</option>
					<option value="hanmail.net">hanmail.net</option>
					</select></td>
			</tr>
<!--
			<tr>
			 <td class="td2">성별<font color="red">*</font></td>
	         <td class="td4"><input type="radio" name="gender" value="남" checked>남자
        	        <input type="radio" name="gender" value="여">여자</td>
			</tr>

			<tr>
			 <td class="td1">결혼여부<font color="red">*</font></td>
	         <td class="td3"><input type="radio" name="married" value="미혼" checked>미혼
				<input type="radio" name="married" value="기혼">기혼</td>

			</tr>

			<tr>
			 <td class="td2">취미 & 관심사항</td>
			 <td class="td4"><input type="checkbox" name="컴퓨터">컴퓨터&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="게임">게임&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="음악">음악&nbsp;&nbsp;&nbsp;&nbsp;
				    <input type="checkbox" name="연예">연예&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="뉴스">뉴스&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="IT">IT&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="맛집">맛집&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="IT">맛집
			</tr>
-->
			<tr>
             <td colspan="2" align="center">
             <input type="button" value="회원가입" onclick="javascript:join();">
&nbsp;&nbsp;
	          <input type="reset" value="취소">
	         </td>
	   		</tr>
   </table>
   </form>
  </center>
 </body>
</html>