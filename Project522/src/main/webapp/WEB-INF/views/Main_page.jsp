<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.*"%>

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
    </head>

<body>
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
	<symbol id="bootstrap" viewBox="0 0 118 94">
	  <title>Bootstrap</title>
	  <path fill-rule="evenodd" clip-rule="evenodd"
			d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
	</symbol>
   </svg>



	<!-- 맨위 로그인창 -->
	<header class="container">
	    <div class="nav-scroller px-4">
	        <ul class="nav justify-content-end">
	            <li class="nav-item">
	                <a class="nav-link" style="display: block; text-align: left; color: gray; text-align: left;"
	                    onMouseover="this.style.color='black';"
	                    onMouseout="this.style.color='gray';" href="#">메인화면</a>
	            </li>
	            <li class="nav-item">
	                <a class="nav-link" style="color: gray;"
	                    onMouseover="this.style.color='black';"
	                    onMouseout="this.style.color='gray';" href="#">회원가입</a>
	            </li>
	            <li class="nav-item">
	                <a class="nav-link" style="color: gray;"
	                    onMouseover="this.style.color='black';"
	                    onMouseout="this.style.color='gray';" href="#">로그인</a>
	            </li>
	        </ul>
	    </div>
	</header>
	<!-- 맨위 로그인창 -->


	<!-- 소개 로고 -->
	<header class="bg-dark py-5">
	    <div class="container px-4 px-lg-5 my-5">
	        <div class="text-center text-white">
	            <h1 class="display-4 fw-bolder">소개 로고</h1>
	            <p class="lead fw-normal text-white-50 mb-0">With this Prototype Website</p>
	        </div>
	    </div>
	</header>
	<!-- 소개 로고 -->

	<!-- 필터 검색  -->
	<div class="flex-shrink-0 px-5 py-3">
		<svg class="bi pe-none me-2" width="30" height="24">
			<use xlink:href="#bootstrap" /></svg>

		<button class="btn btn-outline-dark" id="sidebarToggle">필터 열기</button>
		<br /> <a href='review/listReview'>리뷰 목록</a><br />
	</div>

	<div class="d-flex" id="wrapper">

	<!-- 필터  버튼  -->
	<div class="border-end bg-white" id="sidebar-wrapper">
	  <div class="list-group list-group-flush">
	    <div class="flex-shrink-0 p-5 " style="width: 270px; height: 50px;">
	      <a href="#" class="d-flex align-items-center pb-3 mb-3 link-body-emphasis text-decoration-none border-bottom">
	        <svg class="bi pe-none me-2" width="30" height="24">
	          <use xlink:href="#bootstrap" />
	        </svg> 
	        <span class="fs-5 fw-semibold">필터</span> 
	        &nbsp;&nbsp;
	        <span class="btn btn-outline-dark btn-sm mt-auto">적용</span>
	      </a>
		 <ul class="list-unstyled ps-0">
			<li class="mb-1">
			    <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapseㅇ" aria-expanded="false">나이대</button>
			    <div class="collapse" id="dashboard-collapseㅇ">
			        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			            <li></li>
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">
			                    10대&nbsp;&nbsp;
			                    <input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />
			                </a>
			            </li>
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">
			                    20대&nbsp;&nbsp;
			                    <input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />
			                </a>
			            </li>
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">
			                    30대&nbsp;&nbsp;
			                    <input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" />
			                </a>
			            </li>
			        </ul>
			    </div>
			</li>
			<li class="mb-1">
			    <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed" data-bs-toggle="collapse" data-bs-target="#dashboard-collapse" aria-expanded="false">test1</button>
			    <div class="collapse" id="dashboard-collapse">
			        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">test&nbsp;&nbsp;<input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" /></a>
			            </li>
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">test&nbsp;&nbsp;<input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" /></a>
			            </li>
			            <li>
			                <a href="#" class="link-body-emphasis d-inline-flex text-decoration-none rounded">test&nbsp;&nbsp;<input class="form-check-input" type="checkbox" id="checkboxNoLabel2" value="" /></a>
			            </li>
			        </ul>
			    </div>
			</li>
			<li class="mb-1">
			  <button class="btn btn-toggle d-inline-flex align-items-center rounded border-0 collapsed"
			    data-bs-toggle="collapse" data-bs-target="#orders-collapse"
			    aria-expanded="false">test2</button>
			  <div class="collapse" id="orders-collapse">
			    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
			      <li><a href="#"
			        class="link-body-emphasis d-inline-flex text-decoration-none rounded">test
			          &nbsp;&nbsp; <input class="form-check-input" type="checkbox"
			          id="checkboxNoLabel2" value="" />
			      </a></li>
			      <li><a href="#"
			        class="link-body-emphasis d-inline-flex text-decoration-none rounded">test
			          &nbsp;&nbsp; <input class="form-check-input" type="checkbox"
			          id="checkboxNoLabel2" value="" />
			      </a></li>
			      <li><a href="#"
			        class="link-body-emphasis d-inline-flex text-decoration-none rounded">test
			          &nbsp;&nbsp; <input class="form-check-input" type="checkbox"
			          id="checkboxNoLabel2" value="" />
			      </a></li>
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
		<!-- Page content wrapper-->
		<div id="page-content-wrapper">
		  <!-- Page content-->
		  <div class="container-fluid">
		    <section class="py-4">
		      <div class="container px-4 px-lg-5 mt-5">
		        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
		          <c:forEach items="${List}" var="review">
		            <div class="col mb-5">
		              <a href="#">
		                <div class="card h-100">
		                  <!-- Product image-->
		                  <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
		                  <!-- Product details-->
		                  <div class="card-body p-4">
		                    <div class="text-center">
		                      <!-- Product name-->
		                      <h5 class="fw-bolder">${review.review_Cafename}</h5>
		                      <!-- Product reviews-->
		                      <div class="d-flex justify-content-center mb-2">
		                        <div>
		                          <i class="bi bi-hand-thumbs-up"></i>20
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
		              </a>
		            </div>
		          </c:forEach>
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
