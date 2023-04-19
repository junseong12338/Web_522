<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>카페 리스트</title>
</head>

<body>
  <h1>카페 이름을 검색하세요</h1>
  <input id="CafeName" value="" type="text" />
  <button id="search">검색</button>

  <div id="results"></div>
  <div id="pagination"></div>

  <script src="https://code.jquery.com/jquery-3.4.1.js"
    integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
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
            for (var i = 0; i < documents.length; i++) {
              var document = documents[i];
              if (document.category_name.includes("음식점 > 카페")) {
            	 
            	  resultHtml += "<form action='insertReview' method='GET'>";  
            	  resultHtml += "<input type='hidden' name='place_name' value='" + document.place_name + "'>"; 	  
            	  resultHtml += "<input type='hidden' name='category_name' value='" + document.category_name + "'>"; 	 
            	  resultHtml += "<input type='hidden' name='address_name' value='" + document.address_name + "'>"; 	 
            	  resultHtml += "<input type='hidden' name='road_address_name' value='" + document.road_address_name + "'>"; 	 
            	  resultHtml += "<strong>" + document.place_name + "</strong><br/>";
	           	  resultHtml += "<strong>" + document.category_name + "</strong><br/>";
	           	  resultHtml += "<strong>" +  document.address_name+ "</strong><br/>";
	           	  resultHtml += "<strong>" +  document.road_address_name + "</strong><br/>";
	           	  resultHtml += "<button type='submit'>리뷰작성</button>";
	           	  resultHtml += "</form>";
	           	  resultHtml += "<hr>";
              }
            }
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
              var maxPageNum = totalPage < 3 ? totalPage : 3; // 전체 페이지 수가 3보다 작은 경우 최대 페이지 번호를 전체 페이지 수로 설정

              for (var i = 1; i <= maxPageNum; i++) {
                if (i == currentPage) {
                  paginationHtml += "<strong>" + i + "</strong>";
                } else {
                  paginationHtml += "<a href='#' class='paginationBtn' data-page='" + i + "'>" + i + "</a>";
                }
              }
              $("#pagination").html(paginationHtml);
            }
            // 페이지 버튼 클릭 시 이벤트
            $(document).on("click", ".btn-page", function () { 
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
</body>

</html>