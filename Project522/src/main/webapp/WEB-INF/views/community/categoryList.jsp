<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<title>Community</title>

<!-- Bootstrap core CSS -->
<link
	href="../../../resources/community/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Additional CSS Files -->
<link rel="stylesheet"
	href="../../../resources/community/assets/css/fontawesome.css">
<link rel="stylesheet"
	href="../../../resources/community/assets/css/templatemo-woox-travel.css">
<link rel="stylesheet"
	href="../../../resources/community/assets/css/owl.css">
<link rel="stylesheet"
	href="../../../resources/community/assets/css/animate.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../../../resources/css/styles.css" rel="stylesheet" />
<link href="../../../resources/css/custom.css" rel="stylesheet" />
<link href="../../../resources/css/sidebars.css" rel="stylesheet" />
<!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->

</head>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cbeb53fc639beafda1dfcf096df608fc&libraries=services"></script>

<body class="bg-light">

	<!-- ***** Preloader Start ***** -->
	<div id="js-preloader" class="js-preloader">
		<div class="preloader-inner">
			<span class="dot"></span>
			<div class="dots">
				<span></span> <span></span> <span></span>
			</div>
		</div>
	</div>

	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;"> <symbol
			id="bootstrap" viewBox="0 0 118 94">
	<title>나만의 작은 공간 카페 리뷰 사이트 마이카페</title>
	<path fill-rule="evenodd" clip-rule="evenodd"
			d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
	</symbol> </svg>



	<!-- 맨위 로그인창 -->
	<header class="container ">
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
							aria-current="page" href="/user_login/login">로그인</a></li>
						<li class="nav-item"><a class="nav-link"
							href="user_login/register">회원가입</a></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
								커뮤니티 </a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li><a class="dropdown-item" href="/community/list">나눔
										카페</a></li>
								<li><a class="dropdown-item" href="/community/list">봉사
										카페</a></li>
								<li><a class="dropdown-item" href="/community/list">카페
										투어</a></li>
								<li><a class="dropdown-item" href="/community/list">자유
										게시판</a></li>
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
	<!-- 맨위 로그인창 -->


	<!-- 소개 로고 -->
	<header class="bg-dark py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="text-center text-white">
				<h1 class="display-4 fw-bolder" style="color: white;">나만의 작은 공간
				</h1>
				<p class="lead fw-normal text-white-50 mb-0">카페 리뷰 사이트 마이카페입니다.</p>
			</div>
		</div>
	</header>
	<!-- 필터 검색  -->
	<div class="d-flex" id='wrapper'>
		<!-- 필터  버튼  -->
		<div class="border-end bg-white" id='sidebar-wrapper'>
			<div class="list-group list-group-flush">
				<div class="flex-shrink-0 p-5 " style="width: 270px; height: 50px;">
					<a href="#"
						class="d-flex align-items-center pb-3 mb-3 link-body-emphasis text-decoration-none border-bottom">
						<span class="fs-5 fw-semibold">카테고리</span>
					</a>
					<ul class="list-unstyled ps-0">
						<li class="mb-1">
							<a class="btn" href="/community/categoryList?community_category=1-DAY-CLASS">1-DAY-CLASS</a>
							<a class="btn" href="/community/categoryList?community_category=카페 탐방">카페 탐방</a>
							<a class="btn" href="/community/categoryList?community_category=봉사 활동">봉사 활동</a>
							<a class="btn" href="/community/categoryList?community_category=나눔 카페">나눔 카페</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="visit-country d-flex justify-content-center">
			<div class="container">
				<div class="row">
					<div class="col-lg-8">
						<div class="items">
							<div class="row">
								<div class="col-lg-12">
									<c:forEach var='obj' items="${list}" varStatus="status">
										<div class="item">
											<div class="row">
												<div class="col-lg-4 col-sm-5">
													<div class="image">
														<img
															src="../../../resources/community/assets/images/country-03.jpg"
															alt="" border="0">
															<c:set var="mapIndex" value="${status.index + 1}" />
														<div id="map${mapIndex}"
															style="width:200px;height:200px;margin-top:-200px"></div>
														<script>
							var mapContainer${mapIndex} = document.getElementById('map${mapIndex}'), // 지도를 표시할 div 
							    mapOption${mapIndex} = {
							        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
							        level: 4 // 지도의 확대 레벨
							    };  
							
							// 지도를 생성합니다    
							var map${mapIndex} = new kakao.maps.Map(mapContainer${mapIndex}, mapOption${mapIndex}); 
							
							// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new kakao.maps.services.Geocoder();
							var address_name='${obj.community_place}';
							// 주소로 좌표를 검색합니다
							geocoder.addressSearch((address_name), function(result, status) {
							
							    // 정상적으로 검색이 완료됐으면 
							     if (status === kakao.maps.services.Status.OK) {
							
							        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
							
							        // 결과값으로 받은 위치를 마커로 표시합니다
							        var marker${mapIndex} = new kakao.maps.Marker({
							            map: map${mapIndex},
							            position: coords
							        });
							
							        // 인포윈도우로 장소에 대한 설명을 표시합니다
							      /*   var infowindow = new kakao.maps.InfoWindow({
							            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
							        });
							        infowindow.open(map, marker); */
							
							        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							        map${mapIndex}.setCenter(coords);
							    } 
							});    
							</script>
													</div>
												</div>
												<div class="col-lg-8 col-sm-7">
													<div class="right-content">
														<h4>
															<b>${obj.community_title }</b>
														</h4>
														<span>${obj.community_place }</span>
														<div class="main-button">
															<a class='move'
																style="color: white; background-color: black; border: 0;"
																href="get?community_num=<c:out value="${obj.community_num}"/>">상세
																보기</a>
														</div>
														<br>
														<ul class="info">
															<li style="text-align: left"><i class="fa fa-user"></i><b>${obj.user_id }</b></li>
															<li style="text-align: left"><i class="fa fa-home"></i>${obj.community_date }</li>
														</ul>
														<ul class="info">
															<li style="text-align: left"><i class="fa fa-globe"></i>${obj.community_schedule }</li>
															<li style="text-align: left"><i class="fa fa-globe"></i>${obj.community_category }</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
									<!-- <div class="col-lg-8">
										<ul class="page-numbers">
										<li><a href="#"><i class="fa fa-arrow-left"></i></a></li>
										<li><a href="#">1</a></li>
										<li class="active"><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#"><i class="fa fa-arrow-right"></i></a></li>
									</ul>
									</div> -->
									<div class="main-button m-5">
										<a class='move'
											style="margin-bottom: 2; color: white; background-color: black; border: 0;"
											id='regBtn' href='register'>글쓰기</a>
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
	<script src="../../../resources/community/vendor/jquery/jquery.min.js"></script>
	<script
		src="../../../resources/community/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../../resources/js/scripts.js"></script>
	<script src="../../../resources/community/assets/js/isotope.min.js"></script>
	<script src="../../../resources/community/assets/js/owl-carousel.js"></script>
	<script src="../../../resources/community/assets/js/wow.js"></script>
	<script src="../../../resources/community/assets/js/tabs.js"></script>
	<script src="../../../resources/community/assets/js/popup.js"></script>
	<script src="../../../resources/community/assets/js/custom.js"></script>

	<script>
		function bannerSwitcher() {
			next = $('.sec-1-input').filter(':checked').next('.sec-1-input');
			if (next.length)
				next.prop('checked', true);
			else
				$('.sec-1-input').first().prop('checked', true);
		}

		var bannerTimer = setInterval(bannerSwitcher, 5000);

		$('nav .controls label').click(function() {
			clearInterval(bannerTimer);
			bannerTimer = setInterval(bannerSwitcher, 5000)
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {

			var result = '<c:out value="${result}"/>';
			var actionForm = $("#actionForm");
			$("#regBtn").on("click", function() {
				self.location = "/community/register";
			});

			/* $(".move").on("click", function(e) { e.preventDefault();
				actionForm.append("<input type='hidden' name='community_num' value='"+ $(this).attr("href") + "'>");
				actionForm.attr("action","/community/get");
				actionForm.submit();
			}); */
		});
	</script>
	<br>
	<br>
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2023</p>
		</div>
	</footer>
</body>

</html>