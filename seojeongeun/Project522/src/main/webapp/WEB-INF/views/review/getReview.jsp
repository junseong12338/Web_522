<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Item - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!--  -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>

<!--jquery-->
<!-- 
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/autocomplete.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/data.js"></script>
 -->
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../../resources/css/styles.css" rel="stylesheet" />
<link href="../../resources/css/make.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css"
	href="../../resources/css/make.css">
<!-- API -->
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=t8jd1zo1li"></script>



</head>

<body>
	<!-- Review section-->

	<section class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">

				<div class="bigImg col-md-6">
					<script
							src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

						<link rel="stylesheet"
							href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
							integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
							crossorigin="anonymous">
							
							<!-- 지도 설정 -->
						<p style="margin-top:-12px">

</p>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cbeb53fc639beafda1dfcf096df608fc&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 1 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();
var address_name='${review.review_Cafeaddr}';
// 주소로 좌표를 검색합니다
geocoder.addressSearch((address_name), function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
      /*   var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
        });
        infowindow.open(map, marker); */

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
				</div>

				<div class="row col-md-6">
					<div class="row-md-6">
						<div class="fs-5 mb-5">

							<!-- 카페이름 -->
							<div class="case">
								<div class="input_wrap">
									<input type="hidden" name="review_Cafename" value='<c:out value="${review.review_Cafename }" />'></input>
										<span>카페 이름 </span>&nbsp;<c:out value="${review.review_Cafename }" /><span>
										</span> <span> <i class="fas fa-map-marker-alt"
											class="case_search_btn" id="search_btn"></i>
										</span>
									</div>
								</div>
								<div class="suggestions suggestions_pannel"></div>
								<br>
								<div>
									<div class="input_wrap">
										<input type="hidden" name="review_Cafeaddr"value='<c:out value="${review.review_Cafeaddr }" />'></input>
											<span>카페 위치 </span>&nbsp;<c:out value="${review.review_Cafeaddr }" />
									</div>
								</div>
								<div class="suggestions suggestions_pannel"></div>
								<i class="fa-solid fa-magnifying-glass"></i>
							</div>

						</div>

						<!--js파일 호출 index.js -->
						<script type="text/javascript" src="../../resources/js/make.js"></script>
					</div>

				</div>

			</div>
		</div>

	</section>

	<section>
		<div></div>
		<div class="container px-4 px-lg-5 mt-5">
			<!-- 방문 목적 -->
			<div class="ec-base-tab gFlex row">
				<div class="cont col-md-3" id="visit">
					<h3>방문목적</h3>

					<div>
						<%-- <label>Review_SelectTag1</label> 
						<input name='review_SelectTag1'
						value='<c:out value="${re.review_SelectTag1 }"/>' readonly="readonly"> --%>
						<lable> <c:out value="${review.review_SelectTag1 }" /> </lable>

					</div>

				</div>
				<div class="cont col-md-3" id="mood">
					<h3>분위기</h3>
					<lable> <c:out value="${review.review_SelectTag2 }" /> </lable>

					<br>
				</div>

				<div class="cont col-md-3" id="amenities">

					<h3>편의시설</h3>
					<lable> <c:out value="${review.review_SelectTag3 }" /> </lable>

					<br>

				</div>
				<div class="cont col-md-3" id="cafetheme">

					<h3>동물카페</h3>
					<lable> <c:out value="${review.review_SelectTag4 }" /> </lable>

					<br>
				</div>


			</div>


			<!-- 사용자 해쉬태그 -->
			<div id="userhashtag" class="ec-base-tab gFlex  row">
				<div class="board">
					<br>
					<c:if test="${not empty hashtagarray}">
						<h3>해쉬태그</h3>
					
						<ul id="tag-list" >
							<c:forEach items="${hashtagarray}" var="hasharr">
								<li class='tag-item'><c:out value='${hasharr}' /></li>
							</c:forEach>
						</ul>
					</c:if>
				</div>
			</div>
			
			<!-- 리뷰 이미지 -->
			<link rel="stylesheet"
				href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
				integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
				crossorigin="anonymous">
			
			<div>
				<c:if test="${not empty imgarray}">
					<div class="swiper-container" style="width: 450px; height: 200px;">
						<div class="swiper-wrapper">
							<c:forEach items="${imgarray}" var="imgarr">
								<%-- <c:out value='${imgarr}' /> --%>
								<div class="swiper-slide">
									<img src="/imgf/<c:out value='${imgarr}' />" width="200">
								</div>

							</c:forEach>


						</div>
					</div>
					
					<script>
						const swiper = new Swiper('.swiper-container', {
							grabCursor : true,
							effect : "creative",

							creativeEffect : {
								prev : {
									shadow : true,
									translate : [ "-120%", 0, -500 ],
								},
								next : {
									shadow : true,
									translate : [ "120%", 0, -500 ],
								},
							},
						});
					</script>

				</c:if>
			</div>

			<!-- 리뷰 내용 -->
			<div id="reviewcontents" class="ec-base-tab gFlex  row">
				<div class="board">
					<h3>리뷰 제목, 내용</h3>
					<form>
						<input type="text" name="review_Title"
							value='<c:out value="${review.review_Title }"/>'
							style="width: 450px;" readonly="readonly"> <br> <br>


						<textarea rows="10" cols="70" name="review_Content"
							readonly="readonly"><c:out
								value="${review.review_Content}" />
							</textarea>
					</form>


				</div>
			</div>

			<form name="infoForm" role="form" method="post">			
				<input type="hidden" id="Rnum" name="Rnum" value='<c:out value="${review.review_Num}"/>'>
			</form>

			<script type="text/javascript">
				var formObj = $("form[name='infoForm']");

				$(document).ready(function() {
					// 수정 
					$(".update_btn").on("click", function(){
						formObj.attr("action", "/review/modifyReview");
						formObj.attr("method", "get");
						formObj.submit();				
					})
					// 삭제
					$(".delete_btn").on("click", function(){
						
						var deleteYN = confirm("삭제하시겠습니까?");
						if(deleteYN == true){
							
						formObj.attr("action", "/review/reviewdelete");
						formObj.attr("method", "post");
						formObj.submit();	
						}
					});		
				});
			</script> 
			<!-- 목록보기 -->
			<div class="ec-base-tab gFlex  row">
				<div class="board">
					<h3>목록보기</h3>
					<button type="button" class="list_btn btn btn-primary">목록</button>
					<button type="button" class="update_btn btn btn-primary">수정</button>
					<button type="button" class="delete_btn btn btn-primary" style=" background-color: #FB592D">삭제</button>
				</div>
			</div>


		</div>
	</section>

	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2023</p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="../../resources/js/scripts.js"></script>
</body>

</html>


