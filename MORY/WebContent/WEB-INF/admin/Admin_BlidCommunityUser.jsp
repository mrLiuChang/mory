<%@ page  contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BlidUser.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <!-- jquery 다운받아서 경로잡고 지정해줘야함 -->
<script src="assets/jquery.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
    a{color:black;}
    .drop-menu{border: 1px solid grey;}
    .drop-menu-top{background: gray; color:white; border: gray;}
    th{background:lightgrey;}
    th, td{padding:5px 0px;  text-align: center; border-bottom: 1px solid grey; border-top: 1px solid grey;}
    a:hover{text-decoration: none;}
    footer a{color:grey; text-decoration: underline;}
</style>
</head>
<body>

<form action="/bliddetail.do" method="post"> 
<div class="container">
<!-- 헤더시작  -->
<div class="row " id="all0">
		<div class="col-xs-1  col-md-1"  id="h1"></div>
		<div class="col-xs-10 col-md-10" id="h2" >
			<div class="col-xs-12col-md-12"style="text-align: center;">	
					<a href="http://localhost:8090/Mory/new/NewSpead.jsp" style="margin:0px ; color:black;">
	                  <img src="img/Mory_logo.png" width="100"/>
                       <!-- <span style="font-size:30px; text-align: center;"><b>MORY</b></span> -->
                       <img src="img/Mainlogo.png" width="100" />
	                </a>
	            </div>
		</div>
	  <div class="col-xs-1 col-md-1"  id="h3"></div>
</div>		

<!--사이드 시작  -->
<c:import url="/menu/Admin_side-menu.jsp"></c:import>
<!-- 본문시작  -->
<h2>블라인드 조회</h2>
<hr>
<div class="col-xs-12 col-md-9">
		<div class="row" style="border-bottom: 2px solid grey; padding: 20px;">
			<div class="col-xs-12 col-md-1 text-center" style="padding: 0px;">
				<h5>검색기간</h5>
			</div>
			<div class="col-xs-12 col-md-2" style="padding: 0px; margin-right: 10px;">
				<input type="text" class="form-control" placeholder="ex)170215" name="term">
			</div>
			<div class="col-xs-12 col-md-1 text-center" style="padding: 0px;">
				<h5>조회유형</h5>
			</div>
			<div class="col-xs-12 col-md-2" style="padding: 0px; margin-right: 10px;">
				<select class="form-control" style="width: 160px;" name="value">
					<option>선택하세요&lt;필수&gt;</option>
					<option value="1">뉴스피드</option>
					<option value="2">커뮤니티</option>
				</select>
			</div>
		<div class="row ">	
			<div class=" col-xs-12 col-md-1 text-center" style="padding: 0px;">
				<h5>아이디</h5>
			</div>
			<div class="col-xs-12 col-md-2" style="padding: 0px;">
				<input type="text" class="form-control" name="id">
			</div>
			
			<div class="col-xs-12 col-md-1 text-center">
				<button class="btn btn-default" type="submit">검색</button>
			</div>
		</div>	
		
		<!-- 피드신고목록  -->
		<div class="row" style="padding: 30px 0px;">
			<table class="table table-bordered table-hover">
			
				<tr>
					<th class="col-xs-1 col-md-1">No</th>
					<th class="col-xs-1 col-md-1">커뮤니티</th>
					<th class="col-xs-1 col-md-1">아이디</th>
					<th class="col-xs-1 col-md-1">내용</th>
					<th class="col-xs-1 col-md-1">작성일</th>
					<th class="col-xs-1 col-md-1">신고횟수</th>
				</tr>
			<c:forEach var="lists" items="${lists}">	
				<tr>
					<td>${lists.num }</td>
					<td>${lists.community_Type_Name }</td>
					<td>${lists.write_User_Id}</td>
					<td>${lists.write_Cont}</td>
					<td>${lists.write_Reg_Dtm}</td>
					<td>${lists.repo_Count}</td>
				</tr>
			</c:forEach> 
			</table>
		</div>
	</div>
	</div>
</div>
</form>
</body>
</html>