<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>미니 프로젝트</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<!-- 상단 메뉴 부분 -->
<nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top shadow-lg">
	<a class="navbar-brand" href="index.html">SoftCampus</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
	        data-target="#navMenu">
		<span class="navbar-toggler-icon"></span>        
	</button>
	<div class="collapse navbar-collapse" id="navMenu">
		
	</div>
</nav>

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form action="login.html" method="get">

						<div class="form-group">
						
						<label for="user_id">아이디</label>
						<div class="input-group">
						<input type="text" id="user_id" name="user_id" class="form-control"/>
								<div class="input-group-append">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="user_pw">비밀번호</label>
							<input type="password" id="user_pw" name="user_pw" class="form-control"/>
						</div>
						<div class="form-group">
							<label for="user_name">이름</label>
							<input type="text" id="user_name" name="user_name" class="form-control"/>
						</div>
						<div class="form-group">
							<label for=""user_nickname"">닉네임</label>
							<input type="text" id="user_nickname" name=""user_nickname"" class="form-control"/>
						</div>													
						<div class="form-group">
							<label for="user_address">주소</label>
							<input type="text" id="user_address" name="user_address" value="이태원" class="form-control"/>
						</div>	
						<div class="form-group">
							<div class="text-right">
								<button type="submit" class="btn btn-primary">회원가입</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>
</div>


</body>
</html>