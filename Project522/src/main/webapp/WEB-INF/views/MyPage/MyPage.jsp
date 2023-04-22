<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- css 파일 경로 -->
    <!-- <link href="./MyPage.css" rel="stylesheet"> -->
    <link rel="stylesheet"
	href="../../../resources/MyPage/MyPage.css">
    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@1,700&family=Roboto:wght@500&display=swap" rel="stylesheet">
    <!--google icon-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<body>
    <div id="first" class="border container">
        <div class="row">
            <div class="col-sm-3">
                <img src="image.png" class="rounded-circle" alt="Cinque Terre" width="110" height="110"> 
                <h4>닉네임</h4>
                <div class="buttonHashTag">
                    <button type="button" class="btn">#분위기가 좋은</button>
                    <button type="button" class="btn">#잔잔한</button>
                    <button type="button" class="btn">#고양이 출입 가능</button>
                    <button type="button" class="btn">#시설이 깨끗한</button>
                </div>
                <div class="user">
                    <div class="text-start">
                        <button id="user_btn" type="button" class="btn">> Review</button>
                    </div>
                    <div class="text-start">
                        <button type="button" class="btn">> Community</button>
                    </div>
                    <div class="text-start">
                        <button type="button" class="btn">> Comment</button>
                    </div>
                </div>
                <div class="Logout">
                    <button type="button" class="btn">Log Out</button>
                </div>
            </div>
            <!--오른쪽 화면-->
            <div class="col-sm-9">
                     <!-- ======= Alt Services Section ======= -->
                    <section id="alt-services" class="alt-services">
                        <div class="container" data-aos="fade-up">
                        <div class="col-lg-5 d-flex flex-column justify-content-center">
                            <h3>Review</h3>
                        <div id="review" class="container">
                            <div class="icon-box d-flex position-relative" data-aos="fade-up" data-aos-delay="100">
                                <i class="bi bi-easel flex-shrink-0">
                                    <span class="material-symbols-outlined">
                                        edit_square
                                    </span>
                                </i>
                                <div>
                                    <h4><a href="" class="stretched-link">2023.03.02</a></h4>
                                    <p>안녕하세요</p>
                                </div>
                            </div><!-- End Icon Box -->
                            <div class="icon-box d-flex position-relative" data-aos="fade-up" data-aos-delay="100">
                                <i class="bi bi-easel flex-shrink-0">
                                    <span id="close" class="material-symbols-outlined">
                                        edit_square
                                    </span>
                                </i>
                                <div>
                                    <h4><a href="" class="stretched-link">2023.03.02</a></h4>
                                    <p>안녕하세요 오늘 날씨는 맑음</p>
                                </div>
                            </div><!-- End Icon Box -->
                            <div class="icon-box d-flex position-relative" data-aos="fade-up" data-aos-delay="100">
                                <i class="bi bi-easel flex-shrink-0"></i>
                                <div>
                                <h4><a href="" class="stretched-link">2023.03.02</a></h4>
                                <p>안녕하세요</p>
                                </div>
                            </div><!-- End Icon Box -->
                            <div class="icon-box d-flex position-relative" data-aos="fade-up" data-aos-delay="100">
                                <i class="bi bi-easel flex-shrink-0"></i>
                                <div>
                                <h4><a href="" class="stretched-link">2023.03.02</a></h4>
                                <p>안녕하세요</p>
                                </div>
                            </div><!-- End Icon Box -->     
                            </div>
                        </div>
                    </section><!-- End Alt Services Section -->
            </div>

        </div>
    </div>
    
</body>
</html>
