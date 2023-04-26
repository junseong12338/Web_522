<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


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
        <title>home</title>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./resources/css/styles.css" rel="stylesheet" />
        <link href="./resources/css/custom.css" rel="stylesheet" />
        <link href="./resources/css/sidebars.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
								integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
								crossorigin="anonymous">
    </head>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=cbeb53fc639beafda1dfcf096df608fc&libraries=services"></script>

<body class="bg-light">
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
	<symbol id="bootstrap" viewBox="0 0 118 94">
	  <title>나만의 작은 공간 카페 리뷰 사이트 마이카페</title>
	  <path fill-rule="evenodd" clip-rule="evenodd"
			d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
	</symbol>
   </svg>



	<!-- 맨위 로그인창 -->
	<header class="container ">
	 <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">마이카페</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
    <c:choose>   
<!-- userInfo가 존재하면 보여줄 화면구성  -->
     <c:when test="${not empty sessionScope.userInfo}">
        <!-- 마이페이지 -->
        <li class="nav-item">
          <a class="nav-link" href="MyPage/MyPage">마이페이지</a>
        </li>
        
          <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_login/logout">로그아웃</a>
        </li>
    </c:when>
    <c:otherwise>
    <!-- userInfo가 존재하지 않으면 보여줄 화면구성 비 로그인 화며  -->
    
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_login/login">로그인</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="user_login/join">회원가입</a>
        </li>
    </c:otherwise>
    </c:choose>
   
    
    
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            커뮤니티
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="/community/list">나눔 카페</a></li>
            <li><a class="dropdown-item" href="/community/list">봉사 카페</a></li>
            <li><a class="dropdown-item" href="/community/list">카페 투어</a></li>
            <li><a class="dropdown-item" href="/community/list">자유 게시판</a></li>
          </ul>
        </li>
        
      
      </ul>
      <form class="d-flex">
        <input class="form-control me-1" type="search" placeholder="조회할 카페 검색" aria-label="조회할 카페 검색">
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
	            <h1 class="display-4 fw-bolder">나만의 작은 공간 </h1>
	            <p class="lead fw-normal text-white-50 mb-0">카페 리뷰 사이트 마이카페입니다.</p>
	        </div>
	    </div>
	</header>
	<!-- 소개 로고 -->

	<!-- 필터 검색  -->
	<div class="flex-shrink-0 px-5 py-3">
		<svg class="bi pe-none me-2" width="30" height="24">
			<use xlink:href="#bootstrap" /></svg>
		
		<button class="btn btn-outline-dark" id='sidebarToggle'>필터 열기</button> <br><br>
		<svg class="bi pe-none me-2" width="30" height="24">
			<use/></svg>
			 <c:choose>
			 <c:when test="${not empty sessionScope.userInfo}">
			 		<a class="btn btn-outline-dark" href='review/listReview'>리뷰 작성</a>
			 </c:when>
		
			 </c:choose>
		<br/>
		 
	</div>
	<!-- 필터 검색  -->
	
	<div class="d-flex" id='wrapper'>
	<!-- 필터  버튼  -->
	<div class="border-end bg-white" id='sidebar-wrapper'>
	  <div class="list-group list-group-flush">
	    <div class="flex-shrink-0 p-5 " style="width: 270px; height: 50px;">
	      <a href="#" class="d-flex align-items-center pb-3 mb-3 link-body-emphasis text-decoration-none border-bottom">
	        <svg class="bi pe-none me-2" width="30" height="24">
	          <use xlink:href="#bootstrap" />
	        </svg> 
	        <span class="fs-5 fw-semibold">필터</span> 
	     
	      </a>
		 <ul class="list-unstyled ps-0">
			<li class="mb-1">
			    <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse1" aria-expanded="true">분위기</button>
			    <div class="collapse show" id="dashboard-collapse1">
			        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			            <li>
			                <a href="#"  class="link-body-emphasis d-inline-flex text-decoration-none rounded">
			                 <input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />
			                    &nbsp;&nbsp;조용함
			                </a>
			            </li>
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">
			                     <input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />&nbsp;&nbsp;잔잔함
			                   
			                </a>
			            </li>
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">
			                <input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />&nbsp;&nbsp;
			                    활기참
			                   
			                </a>
			            </li>
        			    <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">
			                  <input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />&nbsp;&nbsp;
			                    감성넘침
			                </a>
			            </li>
        			    <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">
			                  <input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />&nbsp;&nbsp;
			                    배경음악이 큼
			                </a>
			            </li>			            
			        </ul>
			    </div>
			</li>
			<li class="mb-1">
			    <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="true">방문 목적</button>
			    <div class="collapse show" id="dashboard-collapse">
			        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded"><input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />&nbsp;&nbsp;공부</a>
			            </li>
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded"><input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />&nbsp;&nbsp;회의</a>
			            </li>
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded"><input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />&nbsp;&nbsp;모임</a>
			            </li>
			           <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded"><input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />&nbsp;&nbsp;취미</a>
			            </li>
			        </ul>
			    </div>
			</li>
			<li class="mb-1">
			    <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse2" aria-expanded="true">내부 시설</button>
			    <div class="collapse show" id="dashboard-collapse2">
			        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded"><input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />&nbsp;&nbsp;주차가능</a>
			            </li>
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded"><input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />&nbsp;&nbsp;내부화장실</a>
			            </li>
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded"><input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />&nbsp;&nbsp;화장실 깨끗함</a>
			            </li>
			           <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded"><input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />&nbsp;&nbsp;콘센트많음</a>
			            </li>
			        </ul>
			    </div>
			</li>
			<li class="border-top my-3"></li>
			</ul>
			</div>
		</div>
	</div>

	<!-- 필터  버튼  -->

		<!-- 카페 리스트 -->
		<div id="page-content-wrapper">
		  <!-- Page content-->
		  <div class="container-fluid">
		    <section class="py-4">
		      <div class="container px-4 px-lg-5 mt-5">
		        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
					<c:forEach items="${List}" var="review" varStatus="status" begin="0" end="7">
		            <div class="col mb-5">
		                <div class="card h-100">
		                  <!-- 지도 위치-->
		                <div class="">
							<!-- 지도 설정 -->
							<c:set var="mapIndex" value="${status.index + 1}"/>

							<div id="map${mapIndex}" style="width:100%;height:250px;"></div>
							<script>
							var mapContainer${mapIndex} = document.getElementById('map${mapIndex}'), // 지도를 표시할 div 
							    mapOption${mapIndex} = {
							        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
							        level: 3 // 지도의 확대 레벨
							    };  
							
							// 지도를 생성합니다    
							var map${mapIndex} = new kakao.maps.Map(mapContainer${mapIndex}, mapOption${mapIndex}); 
							
							// 주소-좌표 변환 객체를 생성합니다
							var geocoder = new kakao.maps.services.Geocoder();
							var address_name='${review.review_Cafeaddr}';
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
 							<div class="input_wrap">
								<input type="hidden" name="review_Cafeaddr"value='<c:out value="${review.review_Cafeaddr}"/>'></input>
							</div>
		                  <!-- Product details-->
		                  <div class="card-body p-4">
		                    <div class="text-center">
		                      <!-- Product name-->
		                      <h5 class="fw-bolder">${review.review_Cafename}</h5>
		                      <!-- Product reviews-->
		                      <div class="d-flex justify-content-center mb-2">
		                        <div>
		                        <span class="badge bg-secondary">${review.review_SelectTag1}</span>
    		                    <span class="badge bg-success">${review.review_SelectTag2}</span>
    		                    <span class="badge bg-dark">${review.review_SelectTag3}</span>
		                        </div>
		                        
		                      </div>
		                    </div>
		                  </div>
		                  <!-- Product actions-->
		                  <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                    <div class="text-center">
		                      <form action='review/DetailReview' method='GET'>
		                        <input type="hidden" name="review_Cafename" value="${review.review_Cafename}">
		                        <button type="submit" class="btn btn-outline-dark mt-auto">더많은 리뷰 보기</button>
		                        
		                      </form>
		                    </div>
		                  </div>
		                </div>
		             
		            </div>
		          </c:forEach>
		          
		          <c:if test="${List.size() < 8}">
			    <c:set var="dummyCount" value="${8 - List.size()}" />
			    <c:forEach begin="1" end="${dummyCount}">
			         <div class="col mb-5" style="    opacity: 0;">
		                <div class="card h-100">
		                  <!-- 지도 위치-->
		                <div class="">
							<!-- 지도 설정 -->
							<c:set var="mapIndex" value=""/>

							<div id="map${mapIndex}" style="width:100%;height:250px;"></div>
							
				
						</div>
 							<div class="input_wrap">
								<input type="hidden" name="review_Cafeaddr"value='<c:out value=""/>'></input>
							</div>
		                  <!-- Product details-->
		                  <div class="card-body p-4">
		                    <div class="text-center">
		                      <!-- Product name-->
		                      <h5 class="fw-bolder"></h5>
		                      <!-- Product reviews-->
		                      <div class="d-flex justify-content-center mb-2">
		                        <div>
		                        <span class="badge bg-secondary"></span>
    		                    <span class="badge bg-success"></span>
    		                    <span class="badge bg-dark"></span>
		                        </div>
		                        
		                      </div>
		                    </div>
		                  </div>
		                  <!-- Product actions-->
		                  <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
		                    <div class="text-center">
		                        <br/> <br/>
		                        
		                    </div>
		                  </div>
		                </div>
		             
		            </div>
   			 </c:forEach>
</c:if>

<!-- 현재 페이지 목록을 감싸는 div 태그 -->
<div class="page-list">
  <ul class="pagination">

    <!-- Previous 버튼 -->
    <li class="page-item <c:if test='${hasPrevPage eq false}'>disabled</c:if>">
      <a class="page-link" href="/?page=${currentPage > 0 ? currentPage - 1 : 0}" aria-disabled="${hasPrevPage eq false}">Previous</a>
    </li>

    <!-- 페이지 목록 -->
    <c:forEach begin="0" end="${totalPages - 1}" var="pageNum">
      <li class="page-item <c:if test='${pageNum eq currentPage}'>active</c:if>">
        <a class="page-link" href="/?page=${pageNum}">${pageNum + 1}</a>
      </li>
    </c:forEach>

    <!-- Next 버튼 -->
    <li class="page-item <c:if test='${hasNextPage eq false}'>disabled</c:if>">
      <a class="page-link" href="/?page=${currentPage < totalPages - 1 ? currentPage + 1 : totalPages - 1}" aria-disabled="${hasNextPage eq false}">Next</a>
    </li>
    
  </ul>
</div>

		        </div>
		      </div>
		    </section>
		  </div>
		</div>
		<!-- 카페 리스트 -->
		
	</div>
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="./resources/js/scripts.js"></script>
	<!-- Footer-->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p>
		</div>
	</footer>
</body>
</html>