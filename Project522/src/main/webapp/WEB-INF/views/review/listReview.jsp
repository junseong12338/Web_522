<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>

<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
   <meta name="description" content="" />
   <meta name="author" content="" />
  <title>카페 리스트</title>
  <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
          <link href="../../resources/css/styles.css" rel="stylesheet" />
        <link href="../../resources/css/custom.css" rel="stylesheet" />
         <link href="../../resources/css/customList.css" rel="stylesheet" />
        <link href="../../resources/css/sidebars.css" rel="stylesheet" />
           <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
								integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
								crossorigin="anonymous">
</head>

<body>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css"
    integrity="sha256-2XFplPlrFClt0bIdPgpz8H7ojnk10H69xRqd9+uTShA=" crossorigin="anonymous" />
<!-- 맨위 로그인창 -->
<header class="container">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
 <div class="container-fluid">
   <a class="navbar-brand" href="#">마이카페</a>
   <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
     <span class="navbar-toggler-icon"></span>
   </button>
   <div class="collapse navbar-collapse" id="navbarSupportedContent">
     <ul class="navbar-nav me-auto mb-2 mb-lg-0">
       <li class="nav-item">
         <a class="nav-link active" aria-current="page" href="#">로그인</a>
       </li>
       <li class="nav-item">
         <a class="nav-link" href="#">회원가입</a>
       </li>
       <li class="nav-item dropdown">
         <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
           커뮤니티
         </a>
         <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
           <li><a class="dropdown-item" href="#">나눔 카페</a></li>
           <li><a class="dropdown-item" href="#">봉사 카페</a></li>
           <li><a class="dropdown-item" href="#">카페 투어</a></li>
           <li><a class="dropdown-item" href="#">자유 게시판</a></li>
         </ul>
       </li>
     
     </ul>

   </div>
 </div>
</nav>
 </header>
 <!-- 맨위 로그인창 -->
  <h1 style="text-align: center;">카페 이름을 검색하세요</h1>
	<div style="text-align: center;">
	  <input  class="" placeholder="Search" aria-label="Search" id="CafeName"  type="text" />
	  <button class="btn btn-outline-dark" id="search">Search</button>
  </div>
  <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="crossorigin="anonymous"></script>
  <script>
    $(document).ready(function () {
      var category_group_code = "CE7"; // CE7은 카페, 커피전문점 카테고리 코드입니다.
      var pageSize = 15; // 한 페이지에 보여줄 검색결과 개수
      var currentPage = 1; // 현재 페이지
      var category_name = "카페, 커피전문점"
      function searchKeyword() {
        $.ajax({
          method: "GET",
          url: "https://dapi.kakao.com/v2/local/search/keyword",
          data: {
            query: $("#CafeName").val(),
            category_group_code: category_group_code,
            page: currentPage,
            size: pageSize
          },
          headers: { Authorization: "KakaoAK 14f0ec8498623bf43485b341276362d0" },
        })
          .done(function (msg) {
            var totalCnt = msg.meta.total_count;
            var totalPage = Math.ceil(totalCnt / pageSize);
            var documents = msg.documents;
            var resultHtml = "";

            resultHtml += "<table class='table manage-candidates-top mb-0'>";
resultHtml += "<thead>";
resultHtml += "<tr class='fs-2 fs-md-3 fs-lg-4' style='font-size: clamp(15px, 2vw, 20px)'>";
resultHtml += "<th>Cafe Name</th>";
/* resultHtml += "<th class='text-center'>vote</th>"; */
resultHtml += "<th class='text-center'>리뷰작성</th>";
resultHtml += "</tr>";
resultHtml += "</thead>";

for (var i = 0; i < documents.length; i++) {
  var document = documents[i];
  if (document.category_name.includes("음식점 > 카페")) {
    resultHtml += "<tbody>";
    resultHtml += "<tr class='candidates-list'>";
    resultHtml += "<td class=''>";
    resultHtml += "<div class='thumb'>";
    resultHtml += "</div>";
    resultHtml += "<div class='candidate-list-details'>";
    resultHtml += "<div class='candidate-list-info'>";
    resultHtml += "<div class='candidate-list-title' id='results'>";
    resultHtml += "<h5 style='font-size: clamp(15px, 2vw, 20px)' class='mb-0'><a href='#'>"+document.place_name+"</a></h5>";
    resultHtml +="</div>";
    resultHtml += "<div class='candidate-list-option'>";
    resultHtml += "<ul class='list-unstyled'>";
    resultHtml += "<li  style='font-size: clamp(10px, 2vw, 13px)'><i class='fas fa-map-marker-alt pr-1'></i>"+document.address_name+"</li>";
    resultHtml += "</ul>";
    resultHtml += "</div>";
    resultHtml += "</div>";
    resultHtml += "</div>";
    resultHtml += "</td>";
/*     resultHtml += "<td class='candidate-list-favourite-time text-center'>";
    resultHtml += "<a class='candidate-list-favourite order-2 text-danger' href='#' style='font-size: clamp(15px, 2vw, 20px)'><i class='fas fa-heart'></i>20</a>";
     resultHtml += "<span class='candidate-list-time order-1'></span>";
    resultHtml += "</td>"; */
    resultHtml += "<td class='candidate-list-favourite-time text-center'>"
    resultHtml += "<form action='insertReview' method='GET' id='review-form'>";
    resultHtml += "<input type='hidden' name='place_name' value='" + document.place_name + "'/>";
    resultHtml += "<input type='hidden' name='category_name' value='" + document.category_name + "'/>";
    resultHtml += "<input type='hidden' name='address_name' value='" + document.address_name + "'/>";
    resultHtml += "<input type='hidden' name='road_address_name' value='" + document.road_address_name + "'/>";
    resultHtml += "<button type='submit' class='text-info' data-toggle='tooltip' title='' data-original-title='Edit' style='font-size: clamp(15px, 2vw, 20px)' background-color:transparent;'><i class='fas fa-pencil-alt'></i></button>";
    resultHtml += "</form>";
    resultHtml += "<td class='candidate-list-favourite-time text-center'>"
    resultHtml += "</td>";
  }
}
resultHtml += "</table>";
$("#results").html(resultHtml);



            // 선택 버튼 데이터 처리 함수
            function selectAllDocuments() {
              $(".document-checkbox").prop("checked", true);
            }

            $("#select-all").on("click", function () {
              selectAllDocuments();
            });


            // 선택 버튼 데이터 처리 함수
            function getSelectedDocuments() {
              var selectedDocuments = [];

              $(".document-checkbox:checked").each(function () {
                var index = $(this).parent().index();
                selectedDocuments.push(documents[index]);
              });

              return selectedDocuments;
            }


            // 페이지네이션 버튼 생성 함수
            function makePaginationHtml() {
             var paginationHtml = "";
  var totalPage = Math.ceil(totalCnt / pageSize);
  var maxPageNum = totalPage < 3 ? totalPage : 3;
  paginationHtml += '<ul class="pagination justify-content-center mb-0">';
  paginationHtml += '<li class="page-item " id="pagination"></li>';
  for (var i = 1; i <= maxPageNum; i++) {
    if (i == currentPage) {
      paginationHtml += '<li class="page-item active" aria-current="page"><span class="page-link">' + i + '</span></li>';
    } else {
      paginationHtml += '<li class="page-item"><a class="page-link paginationBtn" href="#" data-page="' + i + '">' + i + '</a></li>';
    }
  }
  paginationHtml += "</ul>";
  $("#pagination").html(paginationHtml);
  var paginationHtml = "";
  var totalPage = Math.ceil(totalCnt / pageSize);
  var maxPageNum = totalPage < 3 ? totalPage : 3;

  paginationHtml += '<div class="page-list">';
  paginationHtml += '<ul class="pagination  mt-3">';
  for (var i = 1; i <= maxPageNum; i++) {
    if (i == currentPage) {
      paginationHtml += '<li class="page-item active" aria-current="page"><span class="page-link">' + i + '</span></li>';
    } else {
      paginationHtml += '<li class="page-item"><a class="page-link paginationBtn" href="#" data-page="' + i + '">' + i + '</a></li>';
    }
  }
  paginationHtml += '</ul>';
  paginationHtml += '</div>';
  $("#pagination").html(paginationHtml);
            }
            // 페이지 버튼 클릭 시 이벤트
            $(document).on("click", ".btn-page", function () { // class명을 "btn-page"로 변경
              currentPage = $(this).data("page"); // 현재 페이지 변경
              searchKeyword(); // 검색 함수 호출
            });

            makePaginationHtml(); // 페이지네이션 버튼 생성 함수 호출
          })
          .fail(function (msg) {
            console.log(msg);
          });
      }
      $("#search").click(function () {
        currentPage = 1; // 검색 버튼을 누를 때마다 currentPage를 1로 초기화
        searchKeyword(); // 검색 함수 호출
      });

      // 페이지 버튼 클릭 시 이벤트
      $(document).on("click", ".paginationBtn", function () {
        currentPage = $(this).data("page"); // 현재 페이지 변경
        searchKeyword(); // 검색 함수 호출
      });

      // 엔터 키 입력 이벤트 핸들러
      $("#CafeName").on("keydown", function (event) {
        if (event.keyCode === 13) {
          currentPage = 1; // 엔터 키 입력 시 페이지 번호 초기화
          searchKeyword();
        }
      });

    });
  </script>
  
<div class="d-flex justify-content-center align-items-center h-100">
  <div class="col-lg-9 mt-4 mt-lg-0">
    <div class="row justify-content-center">
      <div class="col-md-12 mt-4">
        <div class="user-dashboard-info-box mb-4 bg-white p-4 shadow-sm" style="min-height: calc(100vh - 100px); max-width: 700px; margin: 0 auto;">
          <div class="" id="results" style="height: calc(100% - 40px);">
          </div>
         
          <div style="height: 40px;">
            <div class="pagination justify-content-center mb-0">
           
              <div id="pagination" style= "margin: 0 auto;">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

  <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
  	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="./resources/js/scripts.js"></script>
  <script type="text/javascript"></script>
  <footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p>
		</div>
	</footer>
</body>

</html>