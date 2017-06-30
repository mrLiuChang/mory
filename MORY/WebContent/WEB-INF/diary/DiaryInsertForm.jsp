<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DiaryInsertForm.jsp</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="css/new.css">
<style type="text/css">
	.ui-datepicker-week-end:first-child a{color: red;}
	.ui-datepicker-week-end:last-child a{color: blue;}
	
</style>
<link rel="stylesheet" href="css/jquery-ui.css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

<script type="text/javascript" src="js/jquery-ui.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function()
{
	$("#write_reg_dtm").datepicker({
		
		dateFormat : "yy-mm-dd",
		showMonthAfterYear:true,
		 monthNames:['년 1월','년 2월','년 3월','년 4월','년 5월','년 6월','년 7월','년 8월','년 9월','년 10월','년 11월','년 12월'],
         dayNamesMin : ['일', '월', '화', '수', '목', '금', '토'],
		showButtonPanel:true
	});
	

	$("#submitBtn").click(function()
			{
				
				// 데이터 검사(공란이 있는지 없는지에 대한 여부)
				if ( $("#diary_post_title").val()=="" )
				{
					alert("제목이 누락됬습니다.");
					return;	//-- submit 액션 중단.
				}
				
				if ( $("#write_reg_dtm").val()=="" )
				{
					alert("내용이 누락됬습니다.");
					return;	//-- submit 액션 중단.
				}
				
				if ($("#write_cont").val()=="" )
				{
					alert("날짜가 누락됬습니다.");
					return;	//-- submit 액션 중단.
				}
				
				
				
				// submit 액션 처리
				$("#all1").submit();
					
				
	});
	
});

</script>

</head>

<body>

	<div class="container" id="container">
		<!-- 첫번째 row  -->
		<div class="row " id="all0">
			<div class="col-xs-1 col-md-1" id="h1"></div>
			<div class="col-xs-10 col-md-10" id="h2" style="margin-bottom: 30px; ">
				<div class="col-xs-2 col-md-2">
					<button type="button" value="뉴스피드" style="height: 40px; width: 100px;" class="btn btn-primary">뉴스피드</button>
				</div>
				<div class="col-xs-2 col-md-2">
					<button type="button" value="다이어리" style="height: 40px; width: 100px;" class="btn btn-primary">다이어리</button>
				</div>
				<div class="col-xs-4 col-md-4" style="text-align: center;">
					<a href="*" style="margin: 0px 20px; color: black;">
						<span style="font-size: 30px; text-align: center;"><b>MORY</b></span>
					</a>
				</div>
				<div class="col-xs-2 col-md-2">
					<button type="button" value="커뮤니티" style="height: 40px; width: 100px;" class="btn btn-primary">커뮤니티</button>
				</div>
				<div class="col-xs-2 col-md-2">
					<button type="button" value="환경설정" style="height: 40px; width: 100px;" class="btn btn-primary">환경설정</button>
				</div>
			</div>
			<div class="col-xs-1 col-md-1" id="h3"></div>
		</div>

		<!-- 두번째 row  -->
		<div class="row " id="all1">
			<div class="col-xs-1 col-md-1" id="b1">b1</div>
			<div class="col-xs-10 col-md-10" id="b2">
				<div>
					<input type="text" class="form-control" value="민준이의 다이어리" style="text-align: center"  readonly="readonly" >
				</div>
				<div>
					<input type="text" class="form-control" value="다이어리 작성" style="text-align: center" readonly="readonly" >
				</div>
				<div class="col-xs-12 col-md-12"  style="background-color: aqua;">
					<div class="col-xs-6 col-md-6" align="left">
						<label style="text-align: left; color: white;  ">제목 :</label>
						<input type="text" id="diary_post_title" name="diary_post_title" class="diary_post_title" placeholder="제목을 입력하세요." style="width: 70%;">
					</div>
					<div align="right" class="col-xs-6 col-md-6">
						<label style="text-align: right;  color: white; ">일시 :</label>
						<input type="text" id="write_reg_dtm" class="write_reg_dtm" name="write_reg_dtm" style="text-align: right; width: 70%; color: black; " placeholder="작성날짜를 선택해주세요.">
					</div>
				</div>
				<div>
					<textarea class="form-control" id="write_cont" class="write_cont" name="write_cont"	style="min-height: 450px; height:100%;" placeholder="내용을 입력하세요."></textarea>
					<div class="col-xs-12 col-md-12">
						<input type="submit" name = "submitBtn" id="submitBtn" value="작성완료" class="col-xs-2 col-md-2" onclick="location.href='diary.do'"> 
						<input type="file"	value="" class="col-xs-8 col-md-8" > 
						<a href="http://localhost:8090/diary.do">
							<input type="button" value="취소" class="col-xs-2 col-md-2"  >
						</a>
					</div>
				</div>				
			</div>

			<div class="col-xs-1 col-md-1" id="b3">b3</div>
		</div>

		<!-- 세번째 row  -->
		<div class="row " id="all2">
			<div class="col-xs-1 col-md-1" id="f1">f1</div>
			<div class="col-xs-10 col-md-10" id="f2">f2</div>
			<div class="col-xs-1 col-md-1" id="f3">f3</div>
		</div>

	</div>


</body>
</html>