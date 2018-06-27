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

function li_regsell() {

	document.location.href = "<%=root%>/sellerregist?act=mvliregist";

}

function in_regsell() {

	document.location.href = "<%=root%>/sellerregist?act=mvinregist";

}

</script>


</head>

<body>
<!-- Navigation -->


<!------ Include the above in your HEAD tag ---------->


<form name="registindexform" method="GET" action="">
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
				<h3>판매자 등록</h3>
					<label style="font-size: 12px">
					판매자 회원으로 등록합니다.<br>
					사업자가 없는 회원은 '개인' 회원,
					개인/법인 사업자는 '사업자' 회원입니다.<br>
					</label>

						<div class="row">

							<div class="col-12 " align="center">

								  <button type="button" name="in_regsell" class="btn btn-outline-secondary btn-block btn-lg" onclick="javascript:in_regsell()">
									  개인
								  </button>

								  <button type="button" class="btn btn-outline-secondary btn-block btn-lg"  onclick="javascript:li_regsell()">
								   	  사업자
								  </button>


							</div>
						</div>

						<div class="row">
							<div class="col-12">
								<label> </label>
							</div>
						</div>

						<div class="row">
							<div class="col-6">
								<div class="card" style="width:400px">
								    <div class="card-body">
								      <h4 class="card-title" name="nickname1" id="nickname1">필리</h4>
								      <p class="card-text" name="hashtag1" id="hashtag1">#필라테스 강사</p>
								      <a href="#" class="btn btn-primary">프로필보기</a>
								    </div>
								    <img class="card-img-bottom" src="<%=root%>/doc/pilates.jpg" alt="Card image" style="width:100%; height: auto;">
								  </div>
							</div>

							<div class="col-6">
								<div class="card" style="width:400px">
								    <div class="card-body">
								      <h4 class="card-title">상둥맘</h4>
								      <p class="card-text">#육아 #보육교사 #삼둥이맘 </p>
								      <a href="#" class="btn btn-primary">프로필보기</a>
								    </div>
								    <img class="card-img-bottom" src="<%=root%>/doc/baby.JPG" alt="Card image" style="width:100%; height: auto;">
								</div>
							</div>

						</div>
			</div>
	</div>

</div>

</form>


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