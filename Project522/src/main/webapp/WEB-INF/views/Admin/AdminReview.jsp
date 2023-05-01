<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>home</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../../../resources/MyPage/style.css" rel="stylesheet">
        
        <!--마이페이지-->
        <!--마이페이지 css-->
        <link href="../../../resources/MyPage/MyPage.css" rel="stylesheet">
        <!--마이페이지 Google Fonts-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@1,700&family=Roboto:wght@500&display=swap" rel="stylesheet">
        <!--마이페이지 google icon-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
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
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="user_login/login">로그인</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="user_login/register">회원가입</a>
        </li>
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
        <!-- 마이페이지 -->
        <li class="nav-item">
          <a class="nav-link" href="MyPage/MyPage">마이페이지</a>
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
	</div>

  <!--마이페이지-->
  <div id="first" class="border container">
    <div class="row">
        <div class="col-sm-3">
            <img src="../../../resources/MyPage/image/image.png" 
            class="rounded-circle" alt="Cinque Terre" width="110" height="110"> 
            <h4>닉네임</h4>
            <div class="buttonHashTag">
                <button type="button" class="btn">#분위기가 좋은</button>
                <button type="button" class="btn">#잔잔한</button>
                <button type="button" class="btn">#고양이 출입 가능</button>
                <button type="button" class="btn">#시설이 깨끗한</button>
            </div>
            <div class="user">
                <div class="text-start">
						<button type="button" class="btn"
							onclick="location.href='/Admin/AdminReview'">> Review</button>
					</div>
					<div class="text-start">
						<button type="button" class="btn"
							onclick="location.href='/Admin/AdminCommunity'">> Community</button>
					</div>
               		<div class="text-start">
						<button type="button" class="btn"
							onclick="location.href='/Admin/AdminReply'">> Comment</button>
					</div>
                </div>
            </div>
            <div class="Logout">
                <button type="button" class="btn" onclick="location.href='/user_login/logout'">Log Out</button>
            </div>
        </div>
        <!--오른쪽 화면-->
        <div class="col-sm-9" id="layoutMP">
                 <!-- ======= Alt Services Section ======= -->
                <section id="alt-services" class="alt-services">
                    <div class="container" data-aos="fade-up">
                    <div class="col-lg-5 d-flex flex-column justify-content-center">
                        <h3>Review</h3>
                    <div id="review" class="container">
                        <!--review-->
                        <c:forEach items="${AdminmprList}" var="AdminmprList">
	                        <div class="review_page">
	                            <div class="icon-box d-flex position-relative" data-aos="fade-up" data-aos-delay="100">
	                                <i class="bi bi-easel flex-shrink-0">
	                                    <span class="material-symbols-outlined">
	                                        edit_square
	                                    </span>
	                                </i>
	                                <div>
	                                    <h4><a href="" class="stretched-link">${AdminmprList.review_Date}</a></h4>
	                                    <p>${AdminmprList.review_Title}</p>
	                                </div>
	                            </div>   
	                            <div class="delete_button">
								    <button type="button" class="btn" onclick="remove(${AdminmprList.review_Num})">x</button>
								</div>
   
	                        </div>     
                        </c:forEach>                 
                    </div>
                </section><!-- End Alt Services Section -->
                <div class="container mt-3">
					<div class='page-list'>
						<ul class="pagination">
							<c:if test="${pageMaker.prev}">
								<li class="page-item"><a href="${pageMaker.startPage -1}">Previous</a></li>
							</c:if>

							<c:forEach var="num" begin="${pageMaker.startPage}"
								end="${pageMaker.endPage}">
								<li class="page-item  ${pageMaker.cri.pageNum == num ? "active":""} ">
									<a class="page-link" href="${num}">${num}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next}">
								<li class="page-item"><a href="${pageMaker.endPage +1 }">next</a></li>
							</c:if>
						</ul>
					</div>
				</div>
				<form id='actionForm' action="/Admin/AdminReivew" method='get'>
					<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
					<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
				</form>
			</div>
        </div>

    </div>
  </div>  
	<script>
		function remove(community_num) {
			  if (confirm("삭제하시겠습니까?")) {
			    $.ajax({
			      url: "/MyPage/remove",
			      type: "POST",
			      data: { "community_num": community_num },
			      success: function() {
			        location.reload();
			      }
			    });
			  }
			}
	</script>
	
	<script type="text/javascript">
	    $(document).ready(function() {
	        var actionForm = $("#actionForm");
	
	        $(".page-item a").on(
	            "click",
	            function(e) {
	                e.preventDefault();
	                console.log('click');
	                actionForm.find("input[name='pageNum']").val($(this).attr("href"));
	                actionForm.submit(); 
	            }
	        );
	    });
	</script>
	

	<!--bootstrap core-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="./resources/js/scripts.js"></script>
</body>
</html>
