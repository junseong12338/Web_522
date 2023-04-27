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

    <title>리뷰 수정</title>

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

  <!-- ***** Header Area Start ***** -->
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

  <!-- ***** Header Area End ***** -->


	<form action="reviewmodify" method="post" enctype="multipart/form-data">
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
				            <h5>카페 이름</h5>
				            <input type="hidden" name="review_Cafename" value='<c:out value="${review.review_Cafename }" />'></input>
				            <p><c:out value="${review.review_Cafename }" /></p>
				         </div>
				     </div>
				     
				     <div class="col-lg-6 col-sm-6">
				    	<div class="info-item">
				            <i class="fa fa-map-marker"></i>
				            <h5>카페 위치</h5>
				            <input type="hidden" name="review_Cafeaddr" value='<c:out value="${review.review_Cafeaddr }" />'></input>
							<p><c:out value="${review.review_Cafeaddr }" /></p>
				         </div>
				     </div>
				</div>

          	</div>
          	
            <div class="row  mt-5">
                  
              <div class="col-lg-6 mb-5">
                  <fieldset>
                      <h5 class="mt-2">방문목적</h5>
                      
                      	<p class="mt-3 me-3">
							<c:set var="orgTag" value="${review.review_SelectTag1 }"/>
								<c:forEach items="${getTagList1}" var="tag1">
									<c:set var='listTag' value="${tag1.tag_Content}"/>
									<%
										String orTag=(String)pageContext.getAttribute("orgTag");
										String liTag=(String)pageContext.getAttribute("listTag");
										
										if(orTag.contains(liTag)){
									%>
										<input type="checkbox" name="review_SelectTag1"
										value="${tag1.tag_Content}" checked />
										${tag1.tag_Content}
									<%} else{ %>
										<input type="checkbox" name="review_SelectTag1"
										value="${tag1.tag_Content}" />
										${tag1.tag_Content}
									<%} %>
									
								</c:forEach>
		                 </p>
						
                  </fieldset>
              </div>
              <div class="col-lg-6">
                <fieldset>
 					<h5 class="mt-2">분위기</h5>
                      	<p class="mt-3 me-3">
								<c:set var="orgTag" value="${review.review_SelectTag2 }"/>
								<c:forEach items="${getTagList2}" var="tag2">
									<c:set var='listTag' value="${tag2.tag_Content}"/>
									<%
										String orTag=(String)pageContext.getAttribute("orgTag");
										String liTag=(String)pageContext.getAttribute("listTag");
										
										if(orTag.contains(liTag)){
									%>
										<input type="checkbox" name="review_SelectTag2"
										value="${tag2.tag_Content}" checked />
										${tag2.tag_Content}
									<%} else{ %>
										<input type="checkbox" name="review_SelectTag2"
										value="${tag2.tag_Content}" />
										${tag2.tag_Content}
									<%} %>
									
								</c:forEach>
		                 </p>
                </fieldset>
              </div>
              <div class="col-lg-6">
                  <fieldset>
                      	<h5 class="mt-2">편의시설</h5>
                      	<p class="mt-3 me-3">
								<c:set var="orgTag" value="${review.review_SelectTag3 }"/>
								<c:forEach items="${getTagList3}" var="tag3">
									<c:set var='listTag' value="${tag3.tag_Content}"/>
									<%
										String orTag=(String)pageContext.getAttribute("orgTag");
										String liTag=(String)pageContext.getAttribute("listTag");
										
										if(orTag.contains(liTag)){
									%>
										<input type="checkbox" name="review_SelectTag3"
										value="${tag3.tag_Content}" checked />
										${tag3.tag_Content}
									<%} else{ %>
										<input type="checkbox" name="review_SelectTag3"
										value="${tag3.tag_Content}" />
										${tag3.tag_Content}
									<%} %>
									
								</c:forEach>	
		                 </p>
                  </fieldset>
              </div>
              <div class="col-lg-6 mb-5">
                <fieldset>
						<h5 class="mt-2">해쉬태그</h5>
						
							<div class="form-group mt-1">
			                    <input  type="hidden" value="" name="review_HashTag" id="review_HashTag" />
			                </div>
							<div class="form-group">
			                     <input type="text" id="tag" size="7"
			                        placeholder="해시태그를 등록해주세요." style="width: 300px;" />
			                </div>
			                <p class="mb-0">
								<ul id="tag-list">
									
								</ul>
			                </p>
						
                </fieldset>
             
              </div>
              <div class="col-lg-12 mt-5">
              	<c:if test="${not empty imgarray}">
					 <div class="cities-town">
					    <div class="container">
					      <div class="row">
					        <div class="slider-content">
					          <div class="row">
					           				           
					            <div class="col-lg-12">
					              <div class="owl-cites-town owl-carousel">
									<c:forEach items="${imgarray}" var="imgarr">
										<div class="item">
						                  <div class="thumb">
						                    <img src="/imgf/<c:out value='${imgarr}' />" width="200" onerror="this.src='/resources/img/imgalt.png';">
						                   	<span class='img-del-btn' idx='${imgarr}'>x</span>	
						                  </div>
						                </div>		
									</c:forEach>
					                
					              </div>
					            </div>
					          </div>
					        </div>
					      </div>
					    </div>
					  </div>
				</c:if>
              </div>
              
              <div class="col-lg-12 mt-2">
       				<input type="hidden" id="review_Num" name="review_Num" value='<c:out value="${review.review_Num}"/>'>
       				<input type="hidden" id="review_Image" name="review_Image" value='<c:out value="${review.review_Image}"/>'>
              		<input type="hidden" id="pageNum" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
					<input type="hidden" id="amount" name="amount" value='<c:out value="${cri.amount}"/>'>
              		<input type="hidden" style="width:450px;" id="delImg" name="delImg" value=''>
       
                  <fieldset>
                  	<label for="chooseDestination" class="form-label">제목</label>
                  	<input type="text" name="review_Title" placeholder=" 제목을 입력하세요!" value='<c:out value="${review.review_Title }"/>'>
                  	
                      <label for="chooseDestination" class="form-label">내용</label>
                      <textarea  rows="12" name="review_Content"><c:out value="${review.review_Content }"/></textarea>
                  </fieldset>
              </div>
              <div>
 					<script type="text/javascript">
		               var sel_files=[];//이미지 정보들을 담는 배열
		               
		               function readURL(input) {
		                  var file = input.files[0];
		                  console.log(file)
		                  if (file != '') {
		                     var reader = new FileReader();
		                     reader.readAsDataURL(file);
		                     reader.onload = function(e) {
		                        console.log(e.target)
		                        console.log(e.target.result)
		                        $('#preview').attr('src', e.target.result);
		                     }
		                  }
		               }
		            </script>
		            <!-- 사진 선택 -->
		            <div id="reviewimgselect" class="ec-base-tab gFlex  row">
		               <div class="board">
		                  <h5>사진선택</h5>
		                  <div class="uploadDiv" style="height: 250px; width: 350px;">	
		                     <input type="file" id="input_img" onchange="readURL(this);" name="review_Image1" multiple  />
		                     <br>
		                     <img id="preview" src="#" width=200 height=150 alt="선택된 이미지가 없습니다" style="align-content: flex-end; ">
		                  </div>
		
		
		               </div>
		            </div>
		
		            <!-- 수정버튼 -->
		            <div class="ec-base-tab gFlex  row" style="padding:10px;">
		               <div class="board">
		                  <button type="submit" class="insert_btn btn btn-dark" style="width:150px;">수정</button>	
		               </div>
		            </div>

				
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </form>



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
<script>
				    $(document).ready(function () {
				        var tag = {};
				        var counter = 0;
				        var tagList= [] ;
				        var tagll=[]
				        tagll='${hashtagarray}'.split(',');
						var delImgList=[];
				        
				        tagll.forEach(function(item){

				        	console.log(item);
                            $("#tag-list").append("<li class='tag-item'>"+item+"<span class='del-btn' idx='"+counter+"'>x</span></li>");
                            addTag(item);
                            tagList.push(item);
	                        $("#review_HashTag").val(tagList);

				        	});
				        
				        
				        // 입력한 값을 태그로 생성한다.
				        function addTag (value) {
				            tag[counter] = value;
				            counter++; // del-btn 의 고유 id 가 된다.
				        	console.log(counter);

				        }
				
				        // tag 안에 있는 값을 array type 으로 만들어서 넘긴다.
				        function marginTag () {
				            return Object.values(tag).filter(function (word) {
				                return word !== "";
				            });
				        }
				
				        $("#tag").on("keypress", function (e) {
				            var self = $(this);
				
				            //엔터나 스페이스바 눌렀을때 실행
				            if (e.key === "Enter" || e.keyCode == 32) {
				
				                var tagValue = self.val(); // 값 가져오기
				
				                // 해시태그 값 없으면 실행X
				                if (tagValue !== "") {
				
				                    // 같은 태그가 있는지 검사한다. 있다면 해당값이 array 로 return 된다.
				                    var result = Object.values(tag).filter(function (word) {
				                        return word === tagValue;
				                    })
				                
				                    // 해시태그가 중복되었는지 확인
				                    if (result.length == 0) { 
				                        $("#tag-list").append("<li class='tag-item'>"+tagValue+"<span class='del-btn' idx='"+counter+"'>x</span></li>");
				                        addTag(tagValue);
				                        self.val("");
				                        tagList.push(tagValue);
				                        
				                        $("#review_HashTag").val(tagList);
				                    } else {
				                        alert("태그값이 중복됩니다.");
				                    }
				                }
				                e.preventDefault(); // SpaceBar 시 빈공간이 생기지 않도록 방지
				            }
				        });
				
				        // 삭제 버튼 
				        // 인덱스 검사 후 삭제
				        $(document).on("click", ".del-btn", function (e) {
				            var index = $(this).attr("idx");
				            tag[index] = "";
				            tagList[index] = "NULL";

				            
				            $("#review_HashTag").val(tagList);
				            $(this).parent().remove();
				        });
				        
				        $(document).on("click", ".img-del-btn", function (e) {
				            var index = $(this).attr("idx");

				            delImgList.push(index);
				            $("#delImg").val(delImgList);

				            $(this).parent().remove();
				        });
					})
</script>   
  </body>

</html>
