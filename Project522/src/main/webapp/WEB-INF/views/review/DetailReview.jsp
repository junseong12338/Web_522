<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="description" content="" />
		<meta name="author" content="" />
	    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
	
	    <title>가게별 리뷰 목록</title>
	
	    <!-- Bootstrap core CSS -->
	    <link href="../../resources/review/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	    <!-- Additional CSS Files -->
	    <link rel="stylesheet" href="../../resources/review/assets/css/fontawesome.css">
	    <link rel="stylesheet" href="../../resources/review/assets/css/templatemo-woox-travel.css">
	    <link rel="stylesheet" href="../../resources/review/assets/css/owl.css">
	    <link rel="stylesheet" href="../../resources/review/assets/css/animate.css">
	    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
	    <link
	    rel="stylesheet"
	    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"/>
	    
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	    <link href="../../resources/css/make.css" rel="stylesheet" />
		
		<link rel="stylesheet" type="text/css" href="../../resources/css/make.css">
		
		
	<!--
	
	TemplateMo 580 Woox Travel
	
	https://templatemo.com/tm-580-woox-travel
	
	-->
</head>
<body>
	<!-- ***** Header Area Start ***** -->

<!-- 맨위 로그인창 -->
	<div class="bg-light">
		<header class="container "> 
			<nav
				class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">
					<a class="navbar-brand" href="/">마이카페</a>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
						data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
			
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<c:choose>
			
								<c:when test="${not empty sessionScope.userInfo}">
			
									<li class="nav-item"><a class="nav-link" href="/MyPage/MPC">마이페이지</a>
									</li>
			
									<li class="nav-item"><a class="nav-link active"
										aria-current="page" href="/user_login/logout">로그아웃</a></li>
								</c:when>
								<c:otherwise>
			
									<li class="nav-item"><a class="nav-link active"
										aria-current="page" href="/user_login/login">로그인</a></li>
									<li class="nav-item"><a class="nav-link"
										href="user_login/join">회원가입</a></li>
								</c:otherwise>
							</c:choose>
			
			
			
			
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-bs-toggle="dropdown" aria-expanded="false">
									커뮤니티 </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li><a class="dropdown-item" href="/community/list">나눔 카페</a></li>
									<li><a class="dropdown-item" href="/community/list">봉사 카페</a></li>
									<li><a class="dropdown-item" href="/community/list">카페 투어</a></li>
									<li><a class="dropdown-item" href="/community/list">자유 게시판</a></li>
								</ul>
							</li>
			
			
						</ul>
						<form class="d-flex">
							<input class="form-control me-1" type="search"
								placeholder="조회할 카페 검색" aria-label="조회할 카페 검색">
							<button class="btn btn-outline-dark" type="submit">Search</button>
						</form>
					</div>
				</div>
			</nav> 
		</header>
	</div>

	<div class="visit-country">

			<div class="container">
				<div class="row">
					<div class="col-lg-8" style="margin:0 auto;">
						<div class="items">
							<div class="row">
								<c:forEach items="${List}" var="review">
									<div class="col-lg-11">
										<div class="item">
											<div class="row">

												<div class="col-lg-12">
													<div class="right-content">
													

														<div style="margin-top:10px;">
															<h4 > ${review.review_Title}</h4>
															<span> <i class="fas fa-coffee"></i> ${review.review_Cafename}</span>
														</div>
														<div class="main-button">
															<a class='move'
																style="color: white; background-color: black; border: 0;"
																href='<c:out value="${review.review_Num}"/>'>리뷰 보기
															</a>
														</div>

														<ul class="info">
															<li><i class="fa fa-user"></i> ${review.user_Id}</li>
															<li><i class="fa fa-globe"></i> 작성일: <fmt:formatDate
																	value="${review.review_Date}" pattern="yyyy-MM-dd" /></li>
															<li></li>
														</ul>

													</div>
												</div>
											</div>
										</div>
									</div>
									<!-- list end -->
								</c:forEach>

							</div>
						</div>
					</div>

				</div>

			</div>
			<div class="col-lg-12 mt-5 mb-3">

				<ul class="page-numbers">
				
					<c:if test="${pageMaker.prev}">
						<li>
						<a href="${pageMaker.startPage -1}"><i class="fa fa-arrow-left"></i></a>
						</li>
					</c:if>
					<c:forEach  var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						<li class="paginate_button page-item  ${pageMaker.cri.pageNum == num ? "active":""} ">
							<a href="${num}">${num}</a>
						</li>
					</c:forEach>

					
					<c:if test="${pageMaker.next}">
						<li class="paginate_button page-item next"><a href="${pageMaker.endPage +1 }"><i class="fa fa-arrow-right"></i></a></li>
					</c:if>
				</ul>
			
				<!--  end Pagination  -->
		
				<form id='actionForm' action="/review/DetailReview" method='get'>
					<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'>
					<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
					<input type='hidden' name='review_Cafename' value='${pageMaker.cri.review_Cafename}'>

				</form>

			</div>
		</div>
	<!-- Bootstrap core JavaScript -->
	<script src="../../resources/review/vendor/jquery/jquery.min.js"></script>
	<script
		src="../../resources/review/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="../../resources/review/assets/js/isotope.min.js"></script>
	<script src="../../resources/review/assets/js/owl-carousel.js"></script>
	<script src="../../resources/review/assets/js/isotope.js"></script>
	<script src="../../resources/review/assets/js/tabs.js"></script>
	<script src="../../resources/review/assets/js/popup.js"></script>
	<script src="../../resources/review/assets/js/custom.js"></script>

	<script>
		$(".option").click(function() {
			$(".option").removeClass("active");
			$(this).addClass("active");
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function(){
			var actionForm = $("#actionForm");
			$(".paginate_button a").on(
					"click",
					function(e) {
						e.preventDefault();
						console.log('click');
						actionForm.find("input[name='pageNum']")
								.val($(this).attr("href"));
						actionForm.submit();
			});
			
			$(".move").on("click",function(e){
				e.preventDefault();
				actionForm.append("<input type='hidden' name='review_Num' value='"+$(this).attr("href")+"'>");
				actionForm.attr("action","/review/getReview");
				actionForm.submit();
			})
			
		});
	</script>

</body>
</html>