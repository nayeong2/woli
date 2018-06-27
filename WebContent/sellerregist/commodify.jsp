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
			<h3>판매자 정보수정(사업자)</h3>
				<h6>기본정보</h6>
					<table class="table" style="font-size: 12px" >

						<tr valign="middle">
						<td colspan="4">
						<div class="form-group">
      						<label for="comment" ></label>
      					<textarea class="form-control" rows="5" id="comment" name="text">약관 :샘플입력</textarea>
    					</div>

						</td>


						</tr>
					    <tr valign="middle">
					      <td class="table-active" width="20%" valign="middle"><label class="form-check-label" for="radiolabel">
					      	<font color="red">*</font>구분</label><br>
					      </td>
					      <td align="center" colspan="3">
							 <input type="radio" class="form-check-input" id="licensei" name="license" value="개인사업자"><span style="margin-right: 100px"> 개인사업자</span>
					    	 <input type="radio" class="form-check-input" id="licensea" name="license" value="법인사업자"><span style="margin-right: 10px">법인사업자</span>
					      </td>
					    </tr>
					    <tr valign="middle">
					      <td valign="middle" class="table-active">
					      	<label><font color="red">*</font>회사명</label>
					      </td>
					      <td colspan="3">
					      	<input type="text" class="form-control" id="comname" name="comname">
					      </td>
						</tr>
						<tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>사업자번호</label></td>
						  <td width="30%" colspan="3">
						  	<div class="row">
								<div class="col-4">
						  			<input type="text" class="form-control form-control-sm" id="comnum1" name="comnum1" maxlength="3">
							  	</div>
							  	<div class="col-1" align="center" style="margin-top: 8px">
									-
							  	</div>
							  	<div class="col-2">
						  			<input type="text" class="form-control form-control-sm" id="comnum2" name="comnum2" maxlength="2">
							  	</div>
							  	<div class="col-1" align="center" style="margin-top: 8px">
									-
							  	</div>
							  	<div class="col-4">

						  			  <div class="input-group mb-3">
											    <input type="text" class="form-control">
											 <div class="input-group-append">
											      <button class="btn btn-outline-secondary" type="submit">X</button>
											 </div>
										</div>

							  	</div>
						  	</div>

						  </td>

						</tr>

						<tr valign="middle">
						  <td class="table-active"><label><font color="red">*</font>대표자명</label></td>
						  <td width="30%">
						  	<input type="text" class="form-control form-control-sm" id="ownername" name="ownername">
						  </td>
					      <td class="table-active"><label><font color="red">*</font>대화명</label></td>
						  <td width="30%">

						  	<div class="input-group mb-3">
								    <input type="text" class="form-control">
								 <div class="input-group-append">
								      <button class="btn btn-outline-secondary" type="submit">X</button>
								 </div>
							</div>

						  </td>
						</tr>

						 <tr valign="middle">
						  <td class="table-active"><label><font color="red">*</font>업태/종목</label></label></td>
						  <td>
						  <br>
						  	<input type="text" class="form-control" id="bcondition" name="bcondition" placeholder="업태">
						  	<br>
						  	<input type="text" class="form-control" id="bcondition" name="bcondition" placeholder="종목">
						  </td>
					      <td class="table-active"><label><font color="red">*</font>사업자등록증</label></td>
						  <td>
						  	<form name="Frm" method="post" action="" encType="Multipart/Form-Data">
								<img id="pic3" width="90" src="http://www.blueb.co.kr/SRC/javascript/image/no_image.gif">
								<input type="file" name="image3" class="btn btn-default btn-sm" size="50" onChange="show_pic('3','image3');"><br>
						  </td>
						</tr>

						<!-- 프로필, 소개 사진 삭제 여부확인 -->

					    <tr valign="middle">
					      <td class="table-active" valign="middle">
					      	<label><font color="red">*</font>로고</label>
					      </td>
						  <td>
						  	<form name="Frm" method="post" action="" encType="Multipart/Form-Data">
							<img id="pic1" width="90" src="http://www.blueb.co.kr/SRC/javascript/image/no_image.gif">
							<input type="file" name="image1" class="btn btn-default btn-sm" size="50" onChange="show_pic('1','image1');">
						  </td>
					      <td class="table-active" width="20%">
					      	<label><font color="red">*</font>소개이미지</label>
					      </td>
						  <td>
						  	<form name="Frm" method="post" action="" encType="Multipart/Form-Data">
							<img id="pic1" width="90" src="http://www.blueb.co.kr/SRC/javascript/image/no_image.gif">
							<input type="file" name="image2" class="btn btn-default btn-sm" size="50" onChange="show_pic('2','image2');"><br>
						  </td>
						</tr>

					    <tr valign="middle" >
					      <td class="table-active" valign="middle" rowspan="3"><label><font color="red">*</font>우편번호:</label></td>
						  <td colspan="3">
						  <div class="input-group mb-3">
  							<div class="input-group-prepend">
    							<button class="btn btn-outline-secondary" type="button">주소검색</button>
  							</div>
  							<input type="text" class="form-control" placeholder="우편번호">
							</div>
						  </td>
						</tr>
						<tr valign="middle" >
						  <td colspan="3">
						  	<input type="text" class="form-control" id="addr1" name="addr1" placeholder="주소">
						  </td>
						</tr>
						<tr valign="middle" >
						  <td colspan="3">
						  	<input type="text" class="form-control" id="addr2" name="addr2" placeholder="주소상세">
						  </td>
						</tr>
					    <tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>대표번호:</label></td>
						  <td colspan="3">
						  	<div class="row">
								<div class="col-2">
								 	<div class="dropdown">
									    <button type="button" class="btn btn-secondery dropdown-toggle" data-toggle="dropdown">
									      	번호선택
									    </button>
									    <div class="dropdown-menu" id="tel1" name="tel1">
									      <a class="dropdown-item" href="#">010</a>
									      <a class="dropdown-item" href="#">017</a>
									      <a class="dropdown-item" href="#">019k</a>
									      <span class="dropdown-item-text" href="#">Just Text</span>
									    </div>
									 </div >
								</div>
								<div class="col-1" align="right" style="margin-top: 8px">
									-
								</div>
								<div class="col-4">
									<input type="text" class="form-control" id="tel2" name="tel2" >
								</div>
								<div class="col-1" align="center" style="margin-top: 8px">
									-
								</div>
								<div class="col-4">
									<input type="text" class="form-control" id="tel3" name="tel3">
								</div>
							</div>
						  </td>
						</tr>
					    <tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>대표팩스:</label></td>
						  <td colspan="3">
						  	<div class="row">
								<div class="col-2">
								 	<div class="dropdown">
									    <button type="button" class="btn btn-secondery dropdown-toggle" data-toggle="dropdown">
									      	번호선택
									    </button>
									    <div class="dropdown-menu" id="fax1" name="fax1">
									      <a class="dropdown-item" href="#">010</a>
									      <a class="dropdown-item" href="#">017</a>
									      <a class="dropdown-item" href="#">019</a>
									      <span class="dropdown-item-text" href="#">Just Text</span>
									    </div>
									 </div >
								</div>
								<div class="col-1" align="right" style="margin-top: 8px">
									-
								</div>
								<div class="col-4">
									<input type="text" class="form-control" id="fax2" name="fax2" >
								</div>
								<div class="col-1" align="center" style="margin-top: 8px">
									-
								</div>
								<div class="col-4">
									<input type="text" class="form-control" id="fax3" name="fax3">
								</div>
							</div>
						  </td>
						</tr>


					    <tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>계좌</label></td>
						  <td colspan="3">
						  	<div class="row">
						  		<div class="col-2">
								  	<div class="dropdown">
									    <button type="button" class="btn btn-secondery dropdown-toggle" data-toggle="dropdown">
									      	은행선택
									    </button>
									    <div class="dropdown-menu" id="bank" name="bank">
									      <a class="dropdown-item" href="#">신한</a>
									      <a class="dropdown-item" href="#">우리</a>
									      <a class="dropdown-item" href="#">기업</a>
									      <span class="dropdown-item-text" href="#">Just Text</span>
									    </div>
								 	</div >
								</div>
								<div class="col-10">
									<input type="text" class="form-control" id="banknum" name="banknum" >
								</div>
							</div>
						  </td>
						</tr>
					    <tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>계좌사본</label></td>
						  <td>
						  	<form name="Frm" method="post" action="" encType="Multipart/Form-Data">
								<img id="pic3" width="90" src="http://www.blueb.co.kr/SRC/javascript/image/no_image.gif">
								<input type="file" name="image3" class="btn btn-default btn-sm" size="50" onChange="show_pic('3','image3');"><br>
						  </td>
						</tr>


					</table>
				<div>
					<h6>담당자정보</h6>
					<table class="table" style="font-size: 12px" >

					    <tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>담당자명</label></td>
						  <td width="30%">
						  	<input type="text" class="form-control form-control-sm" id="opername" name="opername">
						  </td>
					      <td class="table-active"><label><font color="red">*</font>직급/직책</label></td>
						  <td width="30%">
						  	<input type="text" class="form-control form-control-sm" id="comowner" name="comowner">
						  </td>
						</tr>
					    <tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>담당자직통:</label></td>
						  <td colspan="3">
						  	<div class="row">
								<div class="col-2">
								 	<div class="dropdown">
									    <button type="button" class="btn btn-secondery dropdown-toggle" data-toggle="dropdown">
									      	번호선택
									    </button>
									    <div class="dropdown-menu" id="opernum" name="opernum">
									      <a class="dropdown-item" href="#">010</a>
									      <a class="dropdown-item" href="#">017</a>
									      <a class="dropdown-item" href="#">019k</a>
									      <span class="dropdown-item-text" href="#">Just Text</span>
									    </div>
									 </div >
								</div>
								<div class="col-1" align="right" style="margin-top: 8px">
									-
								</div>
								<div class="col-4">
									<input type="text" class="form-control" id="opernum2" name="opernum2" >
								</div>
								<div class="col-1" align="center" style="margin-top: 8px">
									-
								</div>
								<div class="col-4">
									<input type="text" class="form-control" id="opernum3" name="opernum3">
								</div>
							</div>
						  </td>
						</tr>
						<tr valign="middle">
					      <td class="table-active"><label><font color="red">*</font>담당자팩스:</label></td>
						  <td colspan="3">
						  	<div class="row">
								<div class="col-2">
								 	<div class="dropdown">
									    <button type="button" class="btn btn-secondery dropdown-toggle" data-toggle="dropdown">
									      	번호선택
									    </button>
									    <div class="dropdown-menu" id="operfax1" name="operfax1">
									      <a class="dropdown-item" href="#">010</a>
									      <a class="dropdown-item" href="#">017</a>
									      <a class="dropdown-item" href="#">019k</a>
									      <span class="dropdown-item-text" href="#">Just Text</span>
									    </div>
									 </div >
								</div>
								<div class="col-1" align="right" style="margin-top: 8px">
									-
								</div>
								<div class="col-4">
									<input type="text" class="form-control" id="operfax2" name="operfax2" >
								</div>
								<div class="col-1" align="center" style="margin-top: 8px">
									-
								</div>
								<div class="col-4">
									<input type="text" class="form-control" id="operfax3" name="operfax3">
								</div>
							</div>
						  </td>
						</tr>
					    <tr valign="middle">
					      <td class="table-active">
					      	<label><font color="red">*</font>메일</label>
					      </td>
						 	<td colspan="3">
								<div class="row">
									<div class="col-4">
										<input type="text" class="form-control" id="chargeemail1" name="chargeemail1">
									</div>
									<div class="col-1" align="center" style="margin-top: 8px">
										@
									</div>
									<div class="col-4">
										 <div class="dropdown">
										    <button type="button" class="btn btn-secondery dropdown-toggle" data-toggle="dropdown">
										      	메일선택
										    </button>
										    <div class="dropdown-menu" id="opernum" name="opernum">
										      <a class="dropdown-item" href="#">naver.com</a>
										      <a class="dropdown-item" href="#">hanmail.net</a>
										      <a class="dropdown-item" href="#">google.com</a>
										      <span class="dropdown-item-text" href="#">Just Text</span>
										    </div>
										 </div >

									</div>
									<div class="col-3">
										<input type="text" class="form-control" id="chargeemail1" name="chargeemail1" placeholder="직접입력">
									</div>

							 	</div>


						  	</td>
						</tr>
						<tr valign="middle">
					      <td class="table-active">
					      	<label><font color="red">*</font>자격 정보</label>
					      </td>
						 	<td colspan="3">
								<div class="row">
									<div class="col-12">
										 <div class="row">
										 	<div class="col-4">
										 		<p id="parah"></p>
										 	</div>
										 	<div class="col-4">
										 		<p id="parahbutton"></p>
										 	</div>
										 	<div class="col-4">
											<button type="button" id="certi" name="certi" class="btn btn-success" onclick="javascript:addInput()"><h6>+</h6></button><button type="button" id="certi" name="certi" class="btn btn-secondery" onclick="javascript:deleteInput()"><h6><font color="white">-</font></h6></button>
											<p id="parahbutton"></p>
											</div>
										</div>
									</div>

							 	</div>


						  	</td>
						</tr>

				</table>
			</div>
			<div align="center">
						<!-- Button to Open the Modal -->
						  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal" style="background-color: #ff4081; border-color: #ff4100;" >
						    	판매자 정보수정
						  </button>

						  <!-- The Modal -->
						  <div class="modal" id="myModal">
						    <div class="modal-dialog">
						      <div class="modal-content">

						        <!-- Modal Header -->
						        <div class="modal-header">
						          <h4 class="modal-title">판매자 수정 심사중입니다.</h4>
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						        </div>

						        <!-- Modal body -->
						        <div class="modal-body" align="left">
									<h6>
						          	판매자 수정이 신청되었습니다. <br>
						          	심사가 완료되면 서비스 이용이 가능합니다.<br>
						          	확인 버튼을 누르면 초기 화면으로 이동합니다.<br>
						          	아이디 : 아이디 <br>
						          	이메일 : example@example.co.kr <br>
						          	전화번호 : 010-1234-5678 <br>
									</h6>
						        </div>

						        <!-- Modal footer -->
						        <div class="modal-footer">
						          <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: #ff4081; border-color: #ff4100;">확인</button>
						        </div>

						      </div>
						    </div>
						  </div>
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