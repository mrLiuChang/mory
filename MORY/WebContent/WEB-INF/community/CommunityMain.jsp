<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>CommunityMain.jsp</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">



<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">







<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>




<style type="text/css">
/*   div{border:1px solid gray;}   */

/* #img
{
  
	height: 200px;
	background-image: url('img/건강한아기1.jpg'),url('img/보기 좋다.jpg'),url('img/하트.jpg');
	background-size: contain;
	
} */
</style>



<script type="text/javascript">
	function myFunction(id) {
		var x = document.getElementById(id);
		if (x.className.indexOf("w3-show") == -1) {
			x.className += " w3-show";
		} else {
			x.className = x.className.replace(" w3-show", "");
		}
	}

	/* 모델  */
	$(document).ready(function() {
		$("#myBtn").click(function() {
			$("#myModal").modal();
		});
	});

	/* 모델 1 */
	$(document).ready(function() {
		$("#myBtn").click(function() {
			$("#myModal1").modal();
		});
	});

	function previewImage(targetObj, divPeedPhoto) {

		var preview = document.getElementById(divPeedPhoto); //div id
		var ua = window.navigator.userAgent;

		//ie일때(IE8 이하에서만 작동)

		if (ua.indexOf("MSIE") > -1) {

			targetObj.select();

			try {

				var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)

				var ie_preview_error = document
						.getElementById("ie_preview_error_" + divPeedPhoto);

				if (ie_preview_error) {
					preview.removeChild(ie_preview_error); //error가 있으면 delete
				}

				var img = document.getElementById(divPeedPhoto); //이미지가 뿌려질 곳

				//이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
				img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"
						+ src + "', sizingMethod='scale')";

			} catch (e) {

				if (!document
						.getElementById("ie_preview_error_" + divPeedPhoto)) {

					var info = document.createElement("<p>");
					info.id = "ie_preview_error_" + divPeedPhoto;
					info.innerHTML = e.name;
					preview.insertBefore(info, null);
				}
			}
			//ie가 아닐때(크롬, 사파리, FF)
		} else {
			var files = targetObj.files;
			for (var i = 0; i < files.length; i++) {
				var file = files[i];
				var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
				if (!file.type.match(imageType))
					continue;
				var prevImg = document.getElementById("prev_" + divPeedPhoto); //이전에 미리보기가 있다면 삭제
				if (prevImg) {
					preview.removeChild(prevImg);
				}

				var img = document.createElement("img");
				img.id = "prev_" + divPeedPhoto;
				img.classList.add("obj");
				img.file = file;
				img.style.width = '30%';
				img.style.height = '30%';
				preview.appendChild(img);

				if (window.FileReader) { // FireFox, Chrome, Opera 확인.
					var reader = new FileReader();
					reader.onloadend = (function(aImg) {
						return function(e) {
							aImg.src = e.target.result;
						};
					})(img);

					reader.readAsDataURL(file);

				} else { // safari is not supported FileReader

					//alert('not supported FileReader');

					if (!document.getElementById("sfr_preview_error_"
							+ divPeedPhoto)) {

						var info = document.createElement("p");

						info.id = "sfr_preview_error_" + divPeedPhoto;

						info.innerHTML = "not supported FileReader";

						preview.insertBefore(info, null);

					}
				}
			}
		}
	}
</script>
</head>
<body>

	<c:import url="../main/Mainmenu.jsp" /> 
	<div class="container" id="container">
		<!-- 첫번째 row  -->
		

		<!-- 	두번째 row  -->
		<div class="row " id="all1">
			<div class="col-xs-1 col-md-1" id="b1"></div>
			<div class="col-xs-10 col-md-10" id="b2">

				<div class="col-xs-12 col-md-12"
					style="height: 50px; border: 3px solid lightgray;">

					<div class="col-xs-6 col-md-6" style="margin-top: 15px;">
						<div class="col-xs-6 col-md-6">공지사항</div>
						<div class="col-xs-6 col-md-6">육아정보</div>
					</div>
					<div class="col-xs-6 col-md-6" style="margin-top: 15px;">
						<div class="col-xs-6 col-md-6" style="text-align: right;">
							초보육아Q&A</div>
						<div class="col-xs-6 col-md-6" style="text-align: right;">
							육아건강</div>

					</div>
				</div>

				<div class="col-xs-12 col-md-12"
					style="height: 1200px; border: 1px solid lightgray; margin-top: 7px;">

					<div class="col-xs-12 col-md-12">


						<div id="ingi mam" class="col-xs-12 col-md-12 container "
							style="height: 200px; margin-top: 10px; border: 1px solid;">

							<table id="mam">

								<c:forEach var="communitydto" items="${communitydto}">
									<tr>
										<td>${communitydto.write_seq }</td>
										<td>${communitydto.community_type_code }</td>
										<td>${communitydto.community_title }</td>
										<td>${communitydto.community_love_cnt }</td>
										<td>${communitydto.write_user_id }</td>
										<td>${communitydto.write_cont }</td>
										<td>${communitydto.write_reg_dtm }</td>
										<td>${communitydto.uplo_loca }</td>
										<td>${communitydto.community_type_name }</td>
									</tr>
								</c:forEach>

								<!-- <div id="myCarousel" class="carousel slide" data-ride="carousel">
								    Indicators
								    <ol class="carousel-indicators">
								      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								      <li data-target="#myCarousel" data-slide-to="1"></li>
								      <li data-target="#myCarousel" data-slide-to="2"></li>
								    </ol>
								
								    Wrapper for slides
								    <div class="carousel-inner">
								
								      <div class="item active">
								         <img src="img/건강한아기1.jpg" id="img" alt="Los Angeles" style="width:100%;">
								        <div class="carousel-caption">
								          <h3>건강한 아기</h3>
								          <p>건강 애기</p>
								        </div> 
								      </div>
								
								      <div class="item">
								        <img src="img/보기 좋다.jpg" id="img" alt="Chicago" style="width:100%;">
								        <div class="carousel-caption">
								          <h3>보기좋디</h3>
								          <p>좋아</p>
								        </div> 
								      </div>
								    
								      <div class="item">
								         <img src="img/하트.jpg" id="img" alt="New York" style="width:100%;">
								        <div class="carousel-caption">
								          <h3>하트</h3>
								          <p>사랑이다.</p>
								        </div>
								      </div>
								  
								    </div>
								
								    Left and right controls
								    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
								      <span class="glyphicon glyphicon-chevron-left"></span>
								      <span class="sr-only">Previous</span>
								    </a>
								    <a class="right carousel-control" href="#myCarousel" data-slide="next">
								      <span class="glyphicon glyphicon-chevron-right"></span>
								      <span class="sr-only">Next</span>
								    </a>
								  </div> -->
							</table>
						</div>

					</div>


					<div class="col-xs-12 col-md-12"
						style="border: 1px solid lightgray; height: 30px; margin-top: 10px; text-align: center;">
						공지사항</div>

					<div class="col-xs-12 col-md-12"
						style="height: 160px; border: 1px solid lightgray; margin-top: 10px;">

						<div class="col-xs-5 col-md-5"
							style="height: 100px; border: 1px solid lightgray; margin-top: 20px;">
							
							<table>
							<c:forEach var="communitydto" items="${communitydto}">
										<tr>
											<td>${communitydto.write_seq }</td>
											<td>${communitydto.community_type_code }</td>
											<td>${communitydto.community_title }</td>
											<td>${communitydto.community_love_cnt }</td>
											<td>${communitydto.write_user_id }</td>
											<td>${communitydto.write_cont }</td>
											<td>${communitydto.write_reg_dtm }</td>
											<td>${communitydto.uplo_loca }</td>
											<td>${communitydto.community_type_name }</td>
										</tr>
								</c:forEach>
							</table>

						</div>

						<div class="col-xs-2 col-md-2"
							style="margin-top: 50px; text-align: center;">
							<button type="button" value="더보기" style="width: 80px;">더보기</button>
						</div>

						<div class="col-xs-5 col-md-5"
							style="height: 100px; border: 1px solid lightgray; margin-top: 20px;">
					
						<table>
						<c:forEach var="communitydto" items="${communitydto}">
										<tr>
											<td>${communitydto.write_seq }</td>
											<td>${communitydto.community_type_code }</td>
											<td>${communitydto.community_title }</td>
											<td>${communitydto.community_love_cnt }</td>
											<td>${communitydto.write_user_id }</td>
											<td>${communitydto.write_cont }</td>
											<td>${communitydto.write_reg_dtm }</td>
											<td>${communitydto.uplo_loca }</td>
											<td>${communitydto.community_type_name }</td>
										</tr>
								</c:forEach>
						</table>
						</div>

					</div>

					<div class="col-xs-12 col-md-12"
						style="border: 1px solid lightgray; height: 30px; margin-top: 10px; text-align: center;">
						육아 정보</div>

					<div class="col-xs-12 col-md-12"
						style="height: 160px; border: 1px solid lightgray; margin-top: 10px;">

						<div class="col-xs-5 col-md-5"
							style="height: 100px; border: 1px solid lightgray; margin-top: 20px;">

							<table id="infant_data">
								<c:forEach var="communitydto" items="${communitydto}">
									<c:if test="${communitydto.community_type_code == 30}">
										<tr>
											<td>${communitydto.write_seq }</td>
											<td>${communitydto.community_type_code }</td>
											<td>${communitydto.community_title }</td>
											<td>${communitydto.community_love_cnt }</td>
											<td>${communitydto.write_user_id }</td>
											<td>${communitydto.write_cont }</td>
											<td>${communitydto.write_reg_dtm }</td>
											<td>${communitydto.uplo_loca }</td>
											<td>${communitydto.community_type_name }</td>
										</tr>
									</c:if>
								</c:forEach>

							</table>
						</div>

						<div class="col-xs-2 col-md-2"
							style="margin-top: 50px; text-align: center;">
							<button type="button" value="더보기" style="width: 80px;">더보기</button>
						</div>

						<div class="col-xs-5 col-md-5"
							style="height: 100px; border: 1px solid lightgray; margin-top: 20px;">
							<table id="infant_data">
						
								<c:forEach var="communitydto" items="${communitydto}">
									<c:if test="${communitydto.community_type_code ==40 }">
									<tr>
										<td>${communitydto.write_seq }</td>
										<td>${communitydto.community_type_code }</td>
										<td>${communitydto.community_title }</td>
										<td>${communitydto.community_love_cnt }</td>
										<td>${communitydto.write_user_id }</td>
										<td>${communitydto.write_cont }</td>
										<td>${communitydto.write_reg_dtm }</td>
										<td>${communitydto.uplo_loca }</td>
										<td>${communitydto.community_type_name }</td>
									</tr>
									</c:if>
								</c:forEach>
							</table>
						</div>
					</div>

					<div class="col-xs-12 col-md-12"
						style="border: 1px solid lightgray; height: 30px; margin-top: 10px; text-align: center;">
						초보육아Q&A</div>



					<div class="col-xs-12 col-md-12"
						style="height: 160px; border: 1px solid lightgray; margin-top: 10px;">

						<div class="col-xs-5 col-md-5"
							style="height: 100px; border: 1px solid lightgray; margin-top: 20px;">
							<table id="elementary">
								<c:forEach var="communitydto" items="${communitydto}">
									<tr>
										<td>${communitydto.write_seq }</td>
										<td>${communitydto.community_type_code }</td>
										<td>${communitydto.community_title }</td>
										<td>${communitydto.community_love_cnt }</td>
										<td>${communitydto.write_user_id }</td>
										<td>${communitydto.write_cont }</td>
										<td>${communitydto.write_reg_dtm }</td>
										<td>${communitydto.uplo_loca }</td>
										<td>${communitydto.community_type_name }</td>
									</tr>
								</c:forEach>


							</table>

						</div>

						<div class="col-xs-2 col-md-2"
							style="margin-top: 50px; text-align: center;">
							<button type="button" value="더보기" style="width: 80px;">더보기</button>
						</div>

						<div class="col-xs-5 col-md-5"
							style="height: 100px; border: 1px solid lightgray; margin-top: 20px;">
							<table id="elementary">
								<c:forEach var="communitydto" items="${communitydto}">
									<tr>
										<td>${communitydto.write_seq }</td>
										<td>${communitydto.community_type_code }</td>
										<td>${communitydto.community_title }</td>
										<td>${communitydto.community_love_cnt }</td>
										<td>${communitydto.write_user_id }</td>
										<td>${communitydto.write_cont }</td>
										<td>${communitydto.write_reg_dtm }</td>
										<td>${communitydto.uplo_loca }</td>
										<td>${communitydto.community_type_name }</td>
									</tr>
								</c:forEach>


							</table>


						</div>
					</div>
					<div class="col-xs-12 col-md-12"
						style="border: 1px solid lightgray; height: 30px; margin-top: 10px; text-align: center;">
						육아 건강</div>

					<div class="col-xs-12 col-md-12"
						style="height: 160px; border: 1px solid lightgray; margin-top: 10px;">

						<div class="col-xs-5 col-md-5"
							style="height: 100px; border: 1px solid lightgray; margin-top: 20px;">
							<table id="health">
								<c:forEach var="communitydto" items="${communitydto}">
									<tr>
										<td>${communitydto.write_seq }</td>
										<td>${communitydto.community_type_code }</td>
										<td>${communitydto.community_title }</td>
										<td>${communitydto.community_love_cnt }</td>
										<td>${communitydto.write_user_id }</td>
										<td>${communitydto.write_cont }</td>
										<td>${communitydto.write_reg_dtm }</td>
										<td>${communitydto.uplo_loca }</td>
										<td>${communitydto.community_type_name }</td>
									</tr>
								</c:forEach>


							</table>

						</div>

						<div class="col-xs-2 col-md-2"
							style="margin-top: 50px; text-align: center;">
							<button type="button" value="더보기" style="width: 80px;">더보기</button>
						</div>

						<div class="col-xs-5 col-md-5"
							style="height: 100px; border: 1px solid lightgray; margin-top: 20px;">
							<h1>용진테스트</h1>
							<table id="health">


								<c:forEach var="communitydto" items="${communitydto}">
										<tr>
											<td>${communitydto.write_seq }</td>
											<td>${communitydto.community_type_code }</td>
											<td>${communitydto.community_title }</td>
											<td>${communitydto.community_love_cnt }</td>
											<td>${communitydto.write_user_id }</td>
											<td>${communitydto.write_cont }</td>
											<td>${communitydto.write_reg_dtm }</td>
											<td>${communitydto.uplo_loca }</td>
											<td>${communitydto.community_type_name }</td>
										</tr>
								</c:forEach>




							</table>
						</div>
					</div>






					<div class="col-xs-12 col-md-12"
						style="height: 40px; border: 1px solid lightgray; margin-top: 100px;">


						<div class="col-xs-3 col-md-3">
							<select nama="name"
								style="height: 30px; margin-top: 5px; margin-left: 115px;">
								<option value="닉네임">닉네임</option>
								<option value="내용">내용</option>
								<option value="제목+내용">제목+내용</option>
							</select>
						</div>
						<div class="col-xs-6 col-md-6"
							style="height: 30px; border: 1px solid lightgray; margin-top: 5px;">

						</div>

						<div class="col-xs-3 col-md-3"
							style="margin-top: 5px; text-align: left">
							<button type="button" value="검색"
								style="height: 30px; width: 50px; margin-right: 150px;">검색</button>
						</div>


					</div>


				</div>


			</div>



			<div class="col-xs-1 col-md-1" id="b3" style="margin-top: 450px;">




				<!-- Acordian Action -->
				<div class="w3-container">

					<a onclick="myFunction('Demo1')" style="width: 100px;"
						class="glyphicon glyphicon-plus-sign btn-lg"></a>
					<div id="Demo1" class="w3-container w3-hide">
						<button type="button" class="btn btn-primary " data-toggle="modal"
							data-target="#myModal">
							<span class="glyphicon glyphicon-user "></span>
						</button>
						<br />
						<button type="button" class="btn btn-primary " data-toggle="modal"
							data-target="#myModal1">
							<span class="glyphicon glyphicon-time"></span>
						</button>
						<br />
						<button type="button" onclick="location.href='communityinputform.do'">
							<span class="glyphicon glyphicon-pencil"></span>
						</button>
						<br />

					</div>

				</div>





				<!--  내정보  -->

				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header" style="text-align: center;">




								<div id="divPeedPhoto"></div>
								<input type="file" name="profile_pt" id="profile_pt"
									onchange="previewImage(this,'divPeedPhoto')"
									style="text-align: center;">
								<!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4> -->





							</div>
							<div class="modal-body" style="text-align: center;">
								이름 : 진드래곤 <br> 닉네임 : Jin
							</div>
							<div class="modal-footer ">

								<div class="col-xs-12 col-md-12">
									<div class="col-xs-4 col-md-4" style="text-align: left;">
										<button type="button" value="뉴스피드">뉴스피드</button>
									</div>
									<div class="col-xs-4 col-md-4" style="text-align: center;">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">돌아가기</button>
									</div>
									<div class="col-xs-4 col-md-4" style="text-align: right;">
										<button type="button" value="커뮤니티">커뮤니티</button>
									</div>
								</div>


								<div class="col-xs-12 col-md-12">
									<div class="col-xs-4 col-md-4" style="text-align: left;">
										<button type="button" value="다이어리">다이어리</button>
									</div>
									<div class="col-xs-4 col-md-4"></div>
									<div class="col-xs-4 col-md-4" style="text-align: right;">
										<button type="button" value="개인정보">개인정보</button>
									</div>

								</div>


							</div>
						</div>
					</div>
				</div>





				<!-- 알림 -->



				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header" style="text-align: center;">
								<h4>알림</h4>
							</div>
							<div class="modal-body" style="height: 600px;">
								<div class="col-xs-12 col-md-12"
									style="border: 1px solid; height: 50px;">
									<div class="col-xs-3 col-md-3" style="">
										<img src="img/user.PNG" alt=""
											style="height: 45px; margin-right: 800px;" />
									</div>

									<div class="col-xs-6 col-md-6">
										진드래곤<br> 2017
									</div>
									<div class="col-xs-3 col-md-3"
										style="text-align: right; margin-top: 10px;">
										<button type="button" value="수락">수락</button>
										<button type="button" value="거절">거절</button>
									</div>


								</div>

							</div>
							<div class="modal-footer "></div>
						</div>
					</div>
				</div>









			</div>

		</div>



		<!-- 세번째 row  -->
		<div class="row " id="all2">
			<div class="col-xs-1 col-md-1" id="f1"></div>
			<div class="col-xs-10 col-md-10" id="f2"></div>
			<div class="col-xs-1 col-md-1" id="f3"></div>
		</div>


	</div>

</body>
</html>