<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <% String root = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">



  <title>Shop Homepage - Start Bootstrap Template</title>

  <!-- Bootstrap core CSS -->
  <link href="<%=root %>/bootstrap/css/bootstrap.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="<%=root %>/css/shop-homepage.css" rel="stylesheet">
  <link href="<%=root %>/css/woli.css" rel="stylesheet">
<script type="text/javascript">
<!--
var arrInput = new Array(0);
  var arrInputValue = new Array(0);

function addInput() {
  arrInput.push(arrInput.length);
  arrInputValue.push("");
  display();
}

function display() {
  document.getElementById('parah').innerHTML="";
  document.getElementById('parahbutton').innerHTML="";

  for (intI=0;intI<arrInput.length;intI++) {
    document.getElementById('parah').innerHTML+=createTextInput(arrInput[intI], arrInputValue[intI]);
    document.getElementById('parahbutton').innerHTML+=createButtonInput(arrInput[intI], arrInputValue[intI]);
  }
}

function saveValue(intId,strValue) {
  arrInputValue[intId]=strValue;
}

function createTextInput(id,value) {
  return "<input type='text' class='form-control' id='test "+ id +"' onChange='javascript:saveValue("+ id +",this.value)' value='"+ value +"'>";
}

function createButtonInput (id,value) {
	return "<button type='button' class='btn btn-secondary' id='test "+ id +"' onChange='javascript:saveValue("+ id +",this.value)' value='"+ value +"'>검색</button><br>";
}


function deleteInput() {
  if (arrInput.length > 0) {
     arrInput.pop();
     arrInputValue.pop();
  }
  display();
}

function show_pic(img, names) {

	 document.images["pic"+img].style.display = "none";
	 document.images["pic"+img].style.display = "";
	 document.images["pic"+img].src = Frm.elements[names].value;

}


</script>


</head>

<body>
<!-- Navigation -->


<!------ Include the above in your HEAD tag ---------->



<div id="woli-navbar" class="fixed-top">
  <div class="container">
    <div class="row justify-content-end align-middle disappear" style="line-height: 20px; height: 20px; padding: 0px 20px; ">
      <ul class="align-middle">
        <li class="nav-item upper-links align-middle"><a class="links" href="http://www.naver.com">마이페이지</a></li>
        <li class="nav-item upper-links"><a class="links" href="http://www.naver.com">로그인</a></li>
        <li class="nav-item upper-links"><a class="links" href="http://www.naver.com">고객센터</a></li>
      </ul>
    </div>
  </div>
  <div class="row">
 <div class="col-sm-12"style="background-color: #ff4081; padding-top:10px; padding-bottom:10px">
      <div class="container">
        <div class="row" style="padding-left:20px;">
          <div class="col-sm-2 reduce-margin" style="display:flex; align-items:center;">
            <img src ="<%=root %>/img/brand.png" class="logo-image disappear">
            <span class="smallnav" style="padding-top: 10px; padding-bottom: 0px; font-size:15px;"> <img src ="img/logo.png" width="30px"> ☰ <span>
            </span>
            </span>


          </div>
          <div class="col-sm-10 reduce-margin"  style="padding: 0px 40px;">
            <form class="ml-3 my-auto d-inline w-100" style="margin: 0px 0px;">
              <div class="input-group" style="margin: 0px 0px">
                <input type="text" class="form-control border-right-0" placeholder="검색">
                <div class="input-group-append">
                  <button class="btn" style ="background-color: yellow;" type="button">
                    <svg width="15px" height="15px">
                      <path d="M11.618 9.897l4.224 4.212c.092.09.1.23.02.312l-1.464 1.46c-.08.08-.222.072-.314-.02L9.868 11.66M6.486 10.9c-2.42 0-4.38-1.955-4.38-4.367 0-2.413 1.96-4.37 4.38-4.37s4.38 1.957 4.38 4.37c0 2.412-1.96 4.368-4.38 4.368m0-10.834C2.904.066 0 2.96 0 6.533 0 10.105 2.904 13 6.486 13s6.487-2.895 6.487-6.467c0-3.572-2.905-6.467-6.487-6.467 "></path>
                    </svg>
                  </button>
                </div>
              </div>
            </form>
        </div>

      </div>
    </div>
</div>
</div>
</div>
</div>
<!------------------------------------위에건들지 말아요---------------------------------
분홍색 색상코드 #ff4081
사이드바 메뉴는 col-sm-3 으로 작업  / 나머지 작업은 col-sm-9 로 작업
화면이 작을시 사라져야 할것들은 클래스명에 disappear 를 추가해주세요
--------------------------------------------------------------------------------!>
<!-- /.col-lg-3 -->
<div class = "container"  style="margin-top: 30px;">
	<div class="row">
		<!-- 좌측 네비게이션 바  -->
	    <%@ include file="/template/sellerregistleftbar.jsp" %>

	    <!-- 판매자 등록 내용 -->
		<div class="col-12 col-sm-9" >

				<label><h3>판매자 등록 상황</h3></label>
					<table class="table" style="font-size: 12px" >
						<tr>
					      <td colspan="4">
					      	<div class="progress">
					      			<div class="progress-bar bg-danger" style="width:33%">
								      	등록신청완료
								    </div>
								    <div class="progress-bar bg-warning" style="width:33%">
								      	심사중
								    </div>
								    <div class="progress-bar bg-success" style="width:34%;">
								      	심사완료
								    </div>
							</div>
					      </td>
						</tr>
						<tr valign="middle">
					      <td class="table-active"><label>등록신청완료</label></td>
						  <td colspan="3">
						  	<label id="" name="">판매자 등록 신청되었습니다.</label>
						  </td>
						</tr>
						<tr valign="middle">
					      <td class="table-active"><label>심사중</label></td>
						  <td colspan="3">
						  	<label id="" name="">관리자가 내용을 검토중입니다.</label>
						  </td>
						</tr>
						<tr valign="middle">
					      <td class="table-active"><label>심사완료</label></td>
						  <td colspan="3">
						  	<label id="" name="">심사 완료, 서비스 이용가능합니다.</label>
						  </td>
						</tr>

				</table>

				<div align="center">
						<!-- Button to Open the Modal -->
						  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="background-color: #ff4081; border-color: #ff4100;" >
						    	수정
						  </button>

						  <!-- The Modal -->
						  <div class="modal" id="myModal">
						    <div class="modal-dialog">
						      <div class="modal-content">

						        <!-- Modal Header -->
						        <div class="modal-header">
						          <h4 class="modal-title">판매자 등록 심사중입니다.</h4>
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						        </div>

						        <!-- Modal body -->
						        <div class="modal-body" align="left">
									<h6>
						          	판매자 등록이 진행중입니다. <br>
						          	심사가 완료되면 서비스 이용이 가능합니다.<br>
						          	내용을 수정 시 심사 기간이 길어 질 수 있습니다.<br>
						          	아이디 : 아이디 <br>
						          	이메일 : example@example.co.kr <br>
						          	전화번호 : 010-1234-5678 <br>
									</h6>
						        </div>

						        <!-- Modal footer -->
						        <div class="modal-footer">
						          <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: #ff4081; border-color: #ff4100;">수정</button>
						          <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: #ff4081; border-color: #ff4100;">취소</button>
						        </div>

						      </div>
						    </div>
						 </div>

						  <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#myModal">
						    	취소
						  </button>

						  <!-- The Modal -->
						  <div class="modal" id="myModal">
						    <div class="modal-dialog">
						      <div class="modal-content">

						        <!-- Modal Header -->
						        <div class="modal-header">
						          <h4 class="modal-title">판매자 등록 심사중입니다.</h4>
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						        </div>

						        <!-- Modal body -->
						        <div class="modal-body" align="left">
									<h6>
						          	판매자 등록을 취소합니다. <br>
						          	아이디 : 아이디 <br>
						          	이메일 : example@example.co.kr <br>
						          	전화번호 : 010-1234-5678 <br>
									</h6>
						        </div>

						        <!-- Modal footer -->
						        <div class="modal-footer">
						          <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: #ff4081; border-color: #ff4100;">확인</button>
						          <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: #ff4081; border-color: #ff4100;">취소</button>
						        </div>

						      </div>
						    </div>
						 </div>
					</div>
					<br>


				<h6>기본정보</h6>
					<table class="table" style="font-size: 12px" >
						<tr valign="middle">
						  <td class="table-active"><label><font color="red">*</font>아이디</label></td>
						  <td colspan="3">
						  	<label>회원아이디 위치</label>
						  </td>
						</tr>
					    <tr valign="middle">
					      <td class="table-active" width="20%" valign="middle"><label class="form-check-label" for="radiolabel">
					      	<font color="red">*</font>구분</label><br>
					      </td>
					      <td colspan="3">
							<label id="" name=""> 개인사업자 </label>
					      </td>
					    </tr>

					    <tr valign="middle">
					      <td valign="middle" class="table-active">
					      	<label><font color="red">*</font>회사명</label>
					      </td>
					      <td colspan="3">
					      	<label id="" name=""> (주)인크루트</label>
					      </td>
						</tr>

						<tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>사업자번호</label></td>
						  <td colspan="3">
						  	123-45-67890
						  </td>
						</tr>

						<tr valign="middle">
						  <td class="table-active"><label><font color="red">*</font>대표자명</label></td>
						  <td width="30%">
						  	<label id="" name=""> 김갑수 </label>
						  </td>
					      <td class="table-active"><label><font color="red">*</font>대화명</label></td>
						  <td width="30%">
						  	<label id="" name=""> 대화명 </label>
						  </td>
						</tr>

						 <tr valign="middle">
						  <td class="table-active"><label><font color="red">*</font>업태/종목</label></label></td>
						  <td>
						  <label id="" name="">업태</label>
						  /
						  <label id="" name="">종목</label>
						  </td>
					      <td class="table-active"><label><font color="red">*</font>사업자등록증</label></td>
						  <td>
						  	<div>
						  	사업자등록증<br>
						  	이미지
						  	</div>
						  </td>
						</tr>

						<!-- 프로필, 소개 사진 삭제 여부확인 -->

					    <tr valign="middle">
					      <td class="table-active" valign="middle">
					      	<label><font color="red">*</font>로고</label>
					      </td>
						  <td>
						  	<div>
						  	로고<br>
						  	이미지
						  	</div>
						  </td>
					      <td class="table-active" width="20%">
					      	<label><font color="red">*</font>소개이미지</label>
					      </td>
						  <td>
						  	<div>
						  	소개<br>
						  	이미지
						  	</div>
						  </td>
						</tr>

					    <tr valign="middle" >
					      <td class="table-active" valign="middle"><label><font color="red">*</font>사업장주소:</label></td>
						  <td colspan="3">
						  <label id="" name="">43275</label> <br>
						  <label id="" name="">서울시 영등포구 영등포구 3가 </label>
						  <label id="" name="">382-39번지 </label>
						  </td>
						</tr>

					    <tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>대표번호:</label></td>
						  <td colspan="3">
						  	<label id="" name="">010-4728-1828</label>
						  </td>
						</tr>
					    <tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>대표팩스</label></td>
						  <td colspan="3">
						  	<label id="" name="">02-3829-2718</label>
						  </td>
						</tr>

					    <tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>계좌</label></td>
						  <td colspan="3">
						  	<label id="" name="">기업은행</label> <br>
						  	<label id="" name="">2913829102919</label>
						  </td>
						</tr>
					    <tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>계좌사본</label></td>
						  <td>
						  	<div>
						  	계좌<br>
						  	이미지
						  	</div>
						  </td>
						</tr>
					</table>

					<div>
						<h6>담당자정보</h6>
						<table class="table" style="font-size: 12px" >
					    <tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>담당자명</label></td>
						  <td width="30%">
						  	<label id="" name="">박철수</label>
						  </td>
					      <td class="table-active"><label><font color="red">*</font>직급/직책</label></td>
						  <td width="30%">
						  	<label id="" name="">과장</label>
						  </td>
						</tr>
					    <tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>담당자직통</label></td>
						  <td colspan="3">
						  	<label id="" name="">070-3281-2029</label>
						  </td>
						</tr>
						<tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>담당자팩스</label></td>
						  <td colspan="3">
						  	<label id="" name="">02-3849-2929</label>
						  </td>
						</tr>
					    <tr valign="middle">
					      <td class="table-active">
					      	<label><font color="red">*</font>메일</label>
					      </td>
						 	<td colspan="3">
								<label id="" name="">exmaple</label>
										@
								<label id="" name="">google.com</label>

						  	</td>
						</tr>
						<tr valign="middle">
					      <td class="table-active">
					      	<label><font color="red">*</font>자격 정보</label>
					      </td>
						 	<td colspan="3">
								<label id="" name="">자격증1</label><br>
								<label id="" name="">자격증2</label><br>
								<label id="" name="">자격증3</label><br>
						  	</td>
						</tr>

				</table>
			</div>

		</div>
	</div>

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
    <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy;KITRI 26-2 All rights reserved 2018</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->


<script src="<%=root %>/bootstrap/jquery/jquery.js"></script>
<script src="<%=root %>/bootstrap/js/bootstrap.js"></script>


</body>

</html>