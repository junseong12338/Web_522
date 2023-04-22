<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html >

  <head>
	
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>WoOx Travel Reservation Page</title>

    <!-- Bootstrap core CSS -->
    <link href="../../resources/review/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="../../resources/review/assets/css/fontawesome.css">
    <link rel="stylesheet" href="../../resources/review/assets/css/templatemo-woox-travel.css">
    <link rel="stylesheet" href="../../resources/review/assets/css/owl.css">
    <link rel="stylesheet" href="../../resources/assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
  />
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link href="../../resources/css/make.css" rel="stylesheet" />

<link rel="stylesheet" type="text/css"
	href="../../resources/css/make.css">
<!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->
  </head>

<body>

  <!-- ***** Preloader Start ***** -->
  <div id="js-preloader" class="js-preloader">
    <div class="preloader-inner">
      <span class="dot"></span>
      <div class="dots">
        <span></span>
        <span></span>
        <span></span>
      </div>
    </div>
  </div>
  <!-- ***** Preloader End ***** -->

  <!-- ***** Header Area Start ***** -->
 <div class=" bg-light">
		<header class="container">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">
					<a class="navbar-brand" href="/">마이카페</a>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link active"
								aria-current="page" href="user_login/login">로그인</a></li>
							<li class="nav-item"><a class="nav-link"
								href="user_login/register">회원가입</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
									커뮤니티 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="#">나눔 카페</a></li>
									<li><a class="dropdown-item" href="#">봉사 카페</a></li>
									<li><a class="dropdown-item" href="#">카페 투어</a></li>
									<li><a class="dropdown-item" href="#">자유 게시판</a></li>
								</ul></li>

						</ul>
						<form class="d-flex">
							<input class="form-control me-1" type="search"
								placeholder="Search" aria-label="조회할 카페 검색">
							<button class="btn btn-outline-dark" type="submit">Search</button>
						</form>
					</div>
				</div>
			</nav>
		</header>
	</div>
  <!-- ***** Header Area End ***** -->



  <div class="reservation-form">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
			<div id="map" class="rounded-3" style="width:100%;height:350px;"></div>
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
        
        <div class="col-lg-12">
        	
			
          <div id="reservation-form">
          	
          	<div class="row">
          		<div class="more-info row">
					<div class="col-lg-6 col-sm-6">
					  
				    	<div class="info-item">
				            <i class="fas fa-coffee"></i>
				            <h5>카페 이름</h4>
				            <input type="hidden" name="review_Cafename" value='<c:out value="${review.review_Cafename }" />'></input>
				            <p><c:out value="${review.review_Cafename }" /></p>
				         </div>
				     </div>
				     
				     <div class="col-lg-6 col-sm-6">
				    	<div class="info-item">
				            <i class="fa fa-map-marker"></i>
				            <h5>카페 위치</h4>
				            <input type="hidden" name="review_Cafeaddr" value='<c:out value="${review.review_Cafeaddr }" />'></input>
							<p><c:out value="${review.review_Cafeaddr }" /></p>
				         </div>
				     </div>
				</div>

          	</div>
          	
            <div class="row">
              <div class="col-lg-12 mt-4">
                <h4><c:out value="${review.review_Title }"/></h4>
                <p><lable> 글 작성자: <c:out value="${review.user_Id}"/> | </lable>
					<label> 글 작성일: <fmt:formatDate value="${review.review_Date}" pattern="yyyy-MM-dd"/></label></p>
              </div>
              
              <div class="col-lg-6">
                  <fieldset>
                      <h5 class="mt-2">방문목적</h6>
                      <p class="mt-1">
							<span class="badge bg-secondary" style="font-size:14px;"><c:out value="${review.review_SelectTag1 }" /></span>
						</p>
                  </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
 					<h5 class="mt-2">분위기</h5>
					<p class="mt-1">
						<span class="badge bg-secondary" style="font-size:14px;"><c:out value="${review.review_SelectTag2 }" /></span>
					</p>
                </fieldset>
              </div>
              <div class="col-lg-6">
                  <fieldset>
                      	<h5 class="mt-2">편의시설</h5>
						<p class="mt-1">
							<span class="badge bg-secondary" style="font-size:14px;"><c:out value="${review.review_SelectTag3 }" /></span>
						</p>
                  </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
						<h5 class="mt-2">해쉬태그</h5>
						<p class="mt-1">
							<c:if test="${not empty hashtagarray}">
								
									<c:forEach items="${hashtagarray}" var="hasharr">
										<span class="badge bg-secondary" style="font-size:14px;"><c:out value='${hasharr}' /></span>
									</c:forEach>
								
							</c:if>
						</p>
                </fieldset>
              </div>
              <div class="col-lg-12 mt-2">
              	<c:if test="${not empty imgarray}">
					<div class="swiper-container col-md-10" style="width: 550px; height: 250px;">
						<div class="swiper-wrapper">
							<c:forEach items="${imgarray}" var="imgarr">
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
							slidesPerView: 'auto',
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
              <div class="col-lg-12 mt-2">
                  <fieldset>
                      <label for="chooseDestination" class="form-label">글 내용</label>
                      <textarea  rows="12" name="review_Content"
							readonly="readonly"><c:out
								value="${review.review_Content}" />
						</textarea>
                  </fieldset>
              </div>
              <div>                        
				<form name="infoForm" role="form" method="post">			
					<input type="hidden" id="Rnum" name="Rnum" value='<c:out value="${review.review_Num}"/>'>
				</form>

				<script type="text/javascript">
					var formObj = $("form[name='infoForm']");
					var str = '${review.review_Cafename }';
					var cafename= str.replace(' ', '+');
					console.log(cafename);
					$(document).ready(function() {
						// 목록 
						$(".list_btn").on("click", function(){
							location.href = "/review/DetailReview?review_Cafename="+cafename;
						});
						
						// 수정 
						$(".update_btn").on("click", function(){
							formObj.attr("action", "/review/modifyReview");
							formObj.attr("method", "get");
							formObj.submit();				
						});
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
				<div class="ec-base-tab gFlex">
					<div class="board">
						<button type="button" class="list_btn" style="color:#fff;width:150px;background-color:black;">목록</button>
						<button type="button" class="update_btn" style="color:#fff;width:150px;background-color:black;">수정</button>
						<button type="button" class="delete_btn" style="color:#fff;width:150px;background-color:black;">삭제</button>
					</div>
				</div>
				
				
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>



  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="../../resources/review/vendor/jquery/jquery.min.js"></script>
  <script src="../../resources/review/vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="../../resources/review/assets/js/isotope.min.js"></script>
  <script src="../../resources/review/assets/js/owl-carousel.js"></script>
  <script src="../../resources/review/assets/js/wow.js"></script>
  <script src="../../resources/review/assets/js/tabs.js"></script>
  <script src="../../resources/review/assets/js/popup.js"></script>
  <script src="../../resources/review/assets/js/custom.js"></script>

  <script>
    $(".option").click(function(){
      $(".option").removeClass("active");
      $(this).addClass("active"); 
    });
  </script>

  </body>

</html>
