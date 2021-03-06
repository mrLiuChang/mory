<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginForm1.jsp</title>

<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/Mainmenu.css" />

<style type="text/css">

input
{
	height: 55px; 
	width: 305px;
}
</style>

<script type="text/javascript">
	function goPopup() {
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("jusoPopup.jsp", "pop","width=570,height=420, scrollbars=yes, resizable=yes");
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}

	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,
			detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn,
			buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {

		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadFullAddr.value = roadFullAddr;
		document.form.basic_addr.value = roadAddrPart1;
		document.form.roadAddrPart2.value = roadAddrPart2;
		document.form.detail_addr.value = addrDetail;
		document.form.zipcode.value = zipNo;
		document.form.siNm.value = siNm;
		document.form.sggNm.value = sggNm;
		/* 
		document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.roadAddrPart2.value = roadAddrPart2;
		document.form.addrDetail.value = addrDetail;
		document.form.engAddr.value = engAddr;
		document.form.jibunAddr.value = jibunAddr;
		document.form.zipNo.value = zipNo;
		document.form.admCd.value = admCd;
		document.form.rnMgtSn.value = rnMgtSn;
		document.form.bdMgtSn.value = bdMgtSn;
		document.form.detBdNmList.value = detBdNmList;
		 */
		/** 2017년 2월 추가제공 **/
		/* 
		document.form.bdNm.value = bdNm;
		document.form.bdKdcd.value = bdKdcd;
		document.form.siNm.value = siNm;
		document.form.sggNm.value = sggNm;
		document.form.emdNm.value = emdNm;
		document.form.liNm.value = liNm;
		document.form.rn.value = rn;
		document.form.udrtYn.value = udrtYn;
		document.form.buldMnnm.value = buldMnnm;
		document.form.buldSlno.value = buldSlno;
		document.form.mtYn.value = mtYn;
		document.form.lnbrMnnm.value = lnbrMnnm;
		document.form.lnbrSlno.value = lnbrSlno; 
		 */
		/** 2017년 3월 추가제공 **/
		//document.form.emdNo.value = emdNo;
	}
	
	
	$(document).ready(function()
	{
		var idFlag = false;
		// 아이디
		$("#idCheck").click(function()
		{
			// ID 필수값 체크
			if ($("#user_id").val()=="")
			{
				alert("ID를 입력하세요.");
				$("#user_id").focus();
				return;
			}
			if ($("#user_id").val().length < 5 || $("#user_id").val().length > 20) 
			{
				alert("아이디는 5 ~ 20 자 입력 가능합니다.");
				return;
			}
			
			// 아이디 중복 체크
			$.post("idniccheck.do",{user_id : $("#user_id").val()}, function(data)
			{
				//alert(data);
				if (data ==10)
				{
					$("#idchk").html("이미 존재하는 아이디 입니다.").css("color","red");
					return;
				}else{
					$("#idchk").html("해당 아이디는 사용가능힙니다.").css("color","black");
				}
			});
			
			idFlag = true;
			
		});
		
		// 닉네임
		$("#nicCheck").click(function() {
			//alert($("#user_nic").val().length);
			
			// 닉네임 필수값 체크
			if ($("#user_nic").val()=="")
			{
				alert("닉네임을 입력하세요.");
				$("#user_nic").focus();
				return;
			}			
			if ($("#user_nic").val().length < 2 || $("#user_nic").val().length > 10) 
			{
				alert("닉네임은 2 ~ 10 자 입력 가능합니다.");
				return;
			}
			
			// 닉네임 중복 체크
			$.post("idniccheck.do",{user_nic : $("#user_nic").val()}, function(data)
			{
				//alert(data);
				if (data ==01)
				{
					$("#nicchk").html("이미 존재하는 닉네임 입니다.").css("color","red");
					return;
				}else{
					$("#nicchk").html("해당 닉네임은 사용가능힙니다.").css("color","black");
				}
			});
		});
		
		// 6~16, 영문/대소문자, 슛자. 특수문자 사용
		// 비밀번호 입력
		$("#user_pw").keyup(function() {
			// 비밀번호 유효성 체크
			if(!$("#user_pw").val().match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~,-])|([!,@,#,$,%,^,&,*,?,_,~,-].*[a-zA-Z0-9])/)) 
			{
				$("#pwCheck1").css("display", "inline");
				$("#pwCheck1").html("비밀번호는 영문(대소문자구분),숫자,특수문자(~!@#$%^&*()-_? 만 허용)를 혼용하여 6~16자를 입력해주세요.");
				$("#pwCheck1").css("color", "red");
				return;
			}
			else
			{
				$("#pwCheck1").css("display", "none");
			}
			
		});
		
		// 비밀번호 확인
		$("#user_pw2").keyup(function() 
		{
			//console.log($("#user_pw").val());
			//console.log($("#user_pw2").val());			
			if ($("#user_pw2").val() != $("#user_pw").val()) 
			{
				$("#pwCheck2").html("비밀번호를 확인하여 주십시오.");
				$("#pwCheck2").css("color","red");
				return;
			}
			else
			{
				$("#pwCheck2").css("display","none");
			}
		});
		
		
		// 회원가입 버튼클릭
		$("#joinBtn").click(function() {
			// 아이디 확인
			if ($("#user_id").val()=='') {
				$("#idchk").html("아이디를 입력하여 주십시오.").css("color","red");
			}
			else if (idFlag==false) {
				$("#idchk").html("아이디 중복확인을 해 주십시오.").css("color","red");
			}
			
			// 성별 체크 확인
			if ($('input:radio[name=gen_code]').is(":checked")==false) 
			{
				$("#genCheck").css("display", "inline");
				$("#genCheck").css("color", "red");
				$("#genCheck").html("성별을 선택하여 주십시오.");
				return;
			}
			else
			{
				$("#genCheck").css("display","none");
			}
			
			
			
			
			$("#form").submit();
		});
		
	});	// jQuery 끝
	


	
</script>


</head>
<body>

	<div class="container" id="container">
		<!-- 첫번째 row  -->
		<!-- 메인메뉴 -->
		<c:import url="../../Mainmenu.jsp" />

		<form action="joininsert.do" id="form" name="form" method="post">

			<!-- 	두번째 row  -->
			<div class="row " id="callBackDiv">
				<div class="col-xs-1 col-md-1" id="b1">b1</div>
				<div class="col-xs-10 col-md-10 text-center" id="b2">


					<!-- 아이디div  -->
					<div class="row">
						<div class="col-xs-5 col-md-5 text-right"><h5>아이디</h5></div>
						<div class="form-group">
							<div class="input-group">
								<input type="text" class="form-control" id="user_id" name="user_id" placeholder="아이디를 입력해주세요."> 
								<span	class="input-group-btn">
									<button type="button" class="btn btn-info" id="idCheck">중복확인</button>
								</span>
								
							</div>
							<p id="idchk" style="display: inline;"></p>
						</div>
					</div>

					<!-- 닉네임div  -->
					<div class="row">
						<div class="col-xs-5 col-md-5 text-right"><h5>닉네임</h5></div>
						<div class="form-group">
							<div class="input-group">
								<input type="text" class="form-control" id="user_nic" name="user_nic" placeholder="닉네임을 입력해주세요."> 
								<span class="input-group-btn">
									<button type="button" class="btn btn-info" id="nicCheck">중복확인</button>
								</span>
							</div>
							<p id="nicchk" style="display: inline;"></p>
						</div>
					
					</div>
					<!-- 이름  -->
					<div class="row">
						<div class="col-xs-5 col-md-5 text-right"><h5>이름</h5></div>
						<div class="col-xs-7 col-md-5 text-center">
							<input type="text" class="form-control" id="user_name" name="user_name" placeholder="이름을 입력해주세요.">
						</div>
					</div>

					<!-- 비밀번호  -->
					<div class="row">
						<div class="col-xs-5 col-md-5 text-right"><h5>비밀번호</h5></div>
						<div class="col-xs-7 col-md-5 text-center">
							<input type="password" class="form-control" id="user_pw" name="user_pw" placeholder="비밀번호를 입력해주세요.">
						</div>
						<p id="pwCheck1">
					</div>
					<!--비밀번호학인  -->
					<div class="row">
						<div class="col-xs-5 col-md-5 text-right">
							<h5>비밀번호 확인</h5>
						</div>
						<div class="col-xs-7 col-md-5 text-center">
							<input type="password" class="form-control" id="user_pw2" name="user_pw2" placeholder="비밀번호를 재입력해주세요.">
						</div>
						<p id="pwCheck2">
					</div>
					
					
					<!--생년월일  -->
					<div class="row">
						<div class="col-xs-5 col-md-5 text-right">
							<h5>생년월일</h5>
						</div>
						<div class="col-xs-7 col-md-5 text-center">
							<input type="date" class="form-control" id="user_birth" name="user_birth">
						</div>
					</div>
					
					<!--남녀 체크  -->
					<div class="row">
						<div class="col-xs-5 col-md-5 text-right">
							<h5>성별</h5>
						</div>
						<div class="col-xs-7 col-md-7 text-center">
								
							<div class="col-xs-6 col-md-6" >
								<div class="col-md-5" style=" width: 60px;margin-top:10px;"><label for="gen_codeM">남성</label></div>
								<div class="col-md-1 "  style="  display: inline-block;">
									<input type="radio" style="width: 15px; padding-left: 10px;" class="form-control" id="gen_codeM" name="gen_code" value="M">
								</div>
								
								<div class="col-md-5" style=" width: 60px;margin-top:10px;"><label for="gen_codeF">여성</label></div>
								<div class="col-md-1 "  style="  display: inline-block;">
									<input type="radio" style="width: 15px; padding-left: 10px;" class="form-control" id="gen_codeF" name="gen_code" value="F">
								</div>
							
							</div>
						</div>
						<p id="genCheck"></p>
					</div>
							
					
					<!--e-mail  -->
					<div class="row">
						<div class="col-xs-5 col-md-5 text-right">
							<h5>e - mail</h5>
						</div>
						<div class="col-xs-7 col-md-5 text-center">
							<input type="text" class="form-control" id="user_email" name="user_email" placeholder="이메일을 입력해주세요.">
						</div>
					</div>

					<!--전화 번호-->
					<div class="row">
						<div class="col-xs-5 col-md-5 text-right">
							<h5>전화 번호</h5>
						</div>
						<div class="col-xs-7 col-md-5 text-center">
							<input type="text" class="form-control" id="user_tel" name="user_tel" placeholder="'-'를 제외하고 입력해주세요.">
						</div>
					</div>

					<!--우편 번호-->
					<div class="row">
						<div class="col-xs-5 col-md-5 text-right">
							<h5>우편 번호</h5>
						</div>
						<div class="col-xs-3 col-md-2 text-right">
							<input type="text" class="form-control" id="zipcode" name="zipcode" readonly="readonly">
						</div>
						<div class="col-xs-3 col-md-3 ">
							<div class="col-xs-8 col-md-12  text-left">
								<button class="btn btn-info" type="button" style="width: 80px; margin-left: 35px;" onclick="goPopup();">검색</button>
							</div>
						</div>
					</div>

					<!-- 상세주소  -->
					<div class="row text-left ">
						<div class="col-xs-5 col-md-5"></div>
						<div class="col-xs-7 col-md-7 text-left">
							<input type="text" class="form-control" id="roadFullAddr" name="roadFullAddr" readonly="readonly" style="width: 100%;">
						</div>
						<input type="hidden" id="siNm" name="siNm">
						<input type="hidden" id="sggNm" name="sggNm">
						<input type="hidden" id="basic_addr" name="basic_addr">
						<input type="hidden" id="roadAddrPart2" name="roadAddrPart2">
						<input type="hidden" id="detail_addr" name="detail_addr">
					</div>

					<!-- 비밀번호 찾기 -->
					<div class="row">
						<div class="col-xs-5 col-md-5 text-right">
							<h5>비밀번호 찾기 질문</h5>
						</div>
						<div class="col-xs-6 col-md-4 text-left">
							<select class="form-control "  id="pwqu_code" name="pwqu_code">
								<option selected="selected" ><h4>비밀번호 힌트</h4></option>
								<c:forEach var="list" items="${pwquLists }">
									<option  value="${list.pwqu_code }">${list.pwqu_name }</option>
								</c:forEach>
							</select>
						</div>
						<div class="col-md-2"></div>
					</div>

					<div class=" col-xs-5 col-md-5"></div>
					<div class=" col-xs-7 col-md-7 text-left">
						<input type="text" id="pwqu_answ" name="pwqu_answ" placeholder="내용을 입력해주세요" class="form-control" >
					</div>
					
					<div class=" col-xs-6 col-md-6 text-center">
						<button type="button" class="btn btn-primary" id="homeBtn" onclick="location.href='main.do'"><h5>처음으로</h5></button>
					</div>
					<div class="col-xs-6 col-md-6 text-center">
						<button type="button" class="btn btn-primary" id="joinBtn"><h5>회원가입</h5></button>
					</div>
				
				</div>
				<div class="col-xs-11 col-md-1" id="b3">b3</div>
			</div>


		</form>


		<!-- 세번째 row  -->
		<c:import url="../../Footer.jsp" />

	</div>

</body>
</html>