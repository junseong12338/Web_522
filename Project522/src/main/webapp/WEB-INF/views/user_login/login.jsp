<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인 화면</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="../../resources/css/styles.css" rel="stylesheet" />
        <link href="../../resources/css/custom.css" rel="stylesheet" />
        <link href="../../resources/css/customList.css" rel="stylesheet" />
        <link href="../../resources/css/sidebars.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
								integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
								crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>




<script>
/*  function checkUserIdpw(){
    var user_id = $("#user_id").val();
    var user_pw = $("#user_pw").val();
    
    if(user_id.length == 0 && user_pw.length == 0){
        alert('아이디와 비밀번호를 입력해주세요');
        return false;
    }
    
    else if(user_id.length == 0){
        alert('아이디를 입력해주세요');
        return false;
    }
    
    else if(user_pw.length == 0){
        alert('비밀번호를 입력해주세요');
        return false;
    }
    
    // 입력된 아이디와 비밀번호를 서버로 전송합니다.
    $("form").submit();
    return true;
} */
</script> 
<!-- 맨위 로그인창 -->
	<header class="container ">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container-fluid">
	    		<a class="navbar-brand" href="/">마이카페</a>
	    		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      			<span class="navbar-toggler-icon"></span>
	   			</button>
	   			<div class="collapse navbar-collapse" id="navbarSupportedContent">
	     			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					    <li class="nav-item">
							<a class="nav-link" href="/user_login/login" style="color:black; text-decoration:none;" onmouseover="this.style.color='#495057';" onmouseout="this.style.color='black';">로그인</a>
				    	</li>
				        <li class="nav-item">
				          	<a class="nav-link" href="/user_login/join" style="color:black; text-decoration:none;" onmouseover="this.style.color='#495057';" onmouseout="this.style.color='black';">회원가입</a>
				        </li>
					    <li class="nav-item dropdown">
					    	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color:black; text-decoration:none;" onmouseover="this.style.color='#495057';" onmouseout="this.style.color='black';">커뮤니티</a>
			          		<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
					            <li><a class="dropdown-item" href="/community/list?pageNum=1&amount=5&type=G&keyword=1-DAY-CLASS">1-DAY-CLASS</a></li>
					            <li><a class="dropdown-item" href="/community/list?pageNum=1&amount=5&type=G&keyword=카페 탐방">카페 탐방</a></li>
					            <li><a class="dropdown-item" href="/community/list?pageNum=1&amount=5&type=G&keyword=봉사 활동">봉사 활동</a></li>
					            <li><a class="dropdown-item" href="/community/list?pageNum=1&amount=5&type=G&keyword=나눔 카페">나눔 카페</a></li>
				            </ul>
				       </li>
		      		</ul>
	    		<form action="/Search" method="get" class="d-flex w-50" >
			        <input class="form-control me-2" type="search" id = "Search" name="Search" placeholder="조회할 카페 검색" aria-label="조회할 카페 검색" value="">
			        <button class="btn btn-outline-dark" type="submit">Search</button>
	      		</form>
		    </div>
		  </div>
		</nav>
	</header>
	
	<!-- 소개 로고 -->
	<header class="bg-dark py-5">
	    <div class="container px-4 px-lg-5 my-5">
	        <div class="text-center text-white">
	        <img src="..." class="img-fluid" alt="...">
	            <h1 class="display-4 fw-bolder">나만의 작은 공간 </h1>
	            <p class="lead fw-normal text-white-50 mb-0">카페 리뷰 사이트 마이카페입니다.</p>
	        </div>
	    </div>
	</header>
	

<div class="container" style="margin-top:100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6"  style="min-height: calc(100vh - 100px); max-width: 700px; margin: 0 auto;">
				<div class="card shadow">
					<div class="card-body">
	
						<form action="login_pro" method="post">
					    <div class="form-group">
					        <label for="user_id">아이디</label>
					        <input type="text" id="user_id" name="user_id" class="form-control" required="ID를 입력해주세요">
					    </div>
					    <div class="form-group">
					        <label for="user_pw">비밀번호</label>
					        <input type="password" id="user_pw" name="user_pw" class="form-control" required="비밀번호를 입력해주세요">
					    </div>
					    <div class="form-group text-right">
					        <button type="submit" class="btn btn-primary">로그인</button>
					        <a href="join" class="btn btn-danger" style="color: white;">회원가입</a>
					    </div>
					</form>
					
					<% if (request.getAttribute("error") != null) { %>
				    <script>
				        alert("<%= request.getAttribute("error") %>");
				    </script>
				
				<% } %>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p>
		</div>
	</footer>
</body>
</html>








    