<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

    <title>WoOx Travel Reservation Page</title>

    <!-- Bootstrap core CSS -->
    <link href="../../../resources/community/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="../../../resources/community/assets/css/fontawesome.css">
    <link rel="stylesheet" href="../../../resources/community/assets/css/templatemo-woox-travel.css">
    <link rel="stylesheet" href="../../../resources/community/assets/css/owl.css">
    <link rel="stylesheet" href="../../../resources/community/assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var formObj = $("form[name='readForm']");

						// 수정 
						$(".update_btn").on("click", function() {
							formObj.attr("action", "/community/modify");
							formObj.attr("method", "get");
							formObj.submit();
						})

						// 삭제
						$(".delete_btn").on("click", function() {

							var deleteYN = confirm("삭제하시겠습니까?");
							if (deleteYN == true) {

								formObj.attr("action", "/community/remove");
								formObj.attr("method", "post");
								formObj.submit();

							}
						})

						// 목록
						$(".list_btn").on("click", function() {

							location.href = "/community/list";
						})

						$(".replyWriteBtn").on("click", function() {
							var formObj1 = $("form[name='replyForm']");
							formObj1.attr("action", "/community/replyRegister");
							formObj1.submit();
						});

						//댓글 수정 View
						$(".replyUpdateBtn").on("click",function() {
							/* location.href = "/board/replyUpdateView?bno=${read.bno}"
								+ "&page=${scri.page}"
								+ "&perPageNum=${scri.perPageNum}"
								+ "&searchType=${scri.searchType}"
								+ "&keyword=${scri.keyword}"
								+ "&rno="
								+ $(this).attr("data-rno"); */
							/* formObj.attr("action", "/community/modifyReply");
							formObj.attr("method", "get");
							formObj.submit(); */
							location.href = "/community/modifyReply?comment_num="+ $(this).attr("data-comment_num");
						});

						//댓글 삭제 View
						$(".replyDeleteBtn")
								.on(
										"click",
										function() {
											location.href = "/community/removeReply?comment_num="+ $(this).attr("data-comment_num");
										});
					})
</script>
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
  
  <!-- ***** Header Area End ***** -->

  <div class="reservation-form">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <form id="reservation-form" name="readForm" method="post" role="form">
            <div class="row">
              <div class="col-lg-12">
                <h4>소모임 작성</h4>
              </div>
              <fieldset>
                      <input type="hidden" id="community_num" name="community_num"
					value="${community.community_num}">
                  </fieldset>
              <div class="col-lg-6">
                  <fieldset>
                      <label for="Name" class="form-label">작성자</label>
                      <input type="text" name='user_id' class="form-control" value="${community.user_id}" readonly="readonly">
                  </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                    <label for="Title" class="form-label">소모임 제목</label>
                    <input type="text" class="form-control" name='community_title' value="${community.community_title}" readonly="readonly">
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                    <label for="Title" class="form-label">카테고리</label>
                    <input type="text" class="form-control" name='community_category' value="${community.community_category}" readonly="readonly">
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                    <label for="Number" class="form-label">소모임 일정</label>
                    <input type="date" name="community_schedule" class="form-control" value="${community.community_schedule}" readonly="readonly">
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                    <label for="address" class="form-label">소모임 장소</label>
                    <input type="text" name="community_place" class="form-control" value="${community.community_place}" readonly="readonly">
                </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
                    <label for="address" class="form-label">좌표</label>
                    <input type="text" name="community_map" class="form-control" value="${community.community_map}" readonly="readonly">
                </fieldset>
              </div>
              <div class="col-lg-12">
                  <fieldset>
                      <label for="chooseDestination" class="form-label">Choose Your Destination</label>
                      <div class="input-group">
                        <span class="input-group-text"></span>
                        <textarea class="form-control" aria-label="With textarea" readonly="readonly">${community.community_context}"</textarea>
                      </div>
                  </fieldset>
                  <br><br>
              </div>  
              <div class="col-lg-2">
				<fieldset>
					<button type="button" class="update_btn">수정</button>
				</fieldset>
				</div>
				<div class="col-lg-2">
				<fieldset>
					<button type="button" class="delete_btn btn btn-primary">삭제</button>
				</fieldset>
				</div>
				<div class="col-lg-2">
				<fieldset>
					<button type="button" class="list_btn btn btn-primary">목록</button>
				</fieldset>
				</div>
				
			</div>
          </form>
        </div>
      </div>
      <div class="row">
      <div class="col-lg-12">
      <c:forEach items="${commentList}" var="obj" >
				<div>
					<p>
						작성자 : ${obj.ori_Reply.user_id} 
						작성 날짜 : ${obj.ori_Reply.comment_date}<br>
					</p>

					<p>${obj.ori_Reply.comment_contents}</p>
					<div>
						<button type="button" class="replyUpdateBtn btn btn-warning"
							data-comment_num="${obj.ori_Reply.comment_num}">수정</button>
						<button type="button" class="replyDeleteBtn btn btn-danger"
							data-comment_num="${obj.ori_Reply.comment_num}">삭제</button>
					</div>
				</div>
				<c:forEach items="${obj.list}" var="reobj">
					<div>
						<p>
							작성자 : ${reobj.user_id} <br> 작성 날짜 : ${reobj.comment_date}<br>
						</p>

						<p>${reobj.comment_contents}</p>
						<div>
							<button type="button" class="replyUpdateBtn btn btn-warning"
								data-comment_num="${reobj.comment_num}">수정</button>
							<button type="button" class="replyDeleteBtn btn btn-danger"
								data-comment_num="${reobj.comment_num}">삭제</button>
						</div>
					</div>
				</c:forEach>
				<br>
				<br>
			</c:forEach>

<section id="container">
			<form method="post" action="/community/replyRegister">
				<p>
					<label>댓글 작성자</label> <input type="text" name="user_id">
				</p>
				<p>
					<textarea rows="5" cols="50" name="comment_contents"></textarea>
				</p>
				<p>
					<input type="hidden" name="community_num" value="${community.community_num}">
					<button type="submit">댓글 작성</button>
				</p>
			</form>
			</section>
      </div>
      </div>
      
    </div>
  </div>
  
 

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
  <script src="../../../resources/community/vendor/jquery/jquery.min.js"></script>
  <script src="../../../resources/community/vendor/bootstrap/js/bootstrap.min.js"></script>

  <script src="../../../resources/community/assets/js/isotope.min.js"></script>
  <script src="../../../resources/community/assets/js/owl-carousel.js"></script>
  <script src="../../../resources/community/assets/js/wow.js"></script>
  <script src="../../../resources/community/assets/js/tabs.js"></script>
  <script src="../../../resources/community/assets/js/popup.js"></script>
  <script src="../../../resources/community/assets/js/custom.js"></script>

<!--   <script>
    $(".option").click(function(){
      $(".option").removeClass("active");
      $(this).addClass("active"); 
    });
  </script>
 -->
  </body>

</html>
