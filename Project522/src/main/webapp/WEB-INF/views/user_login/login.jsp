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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>
<script>
function checkUserIdpw(){
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
}
</script>


<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">

					<form action="login_pro" method="post">
				    <div class="form-group">
				        <label for="user_id">아이디</label>
				        <input type="text" id="user_id" name="user_id" class="form-control">
				    </div>
				    <div class="form-group">
				        <label for="user_pw">비밀번호</label>
				        <input type="password" id="user_pw" name="user_pw" class="form-control">
				    </div>
				    <div class="form-group text-right">
				        <button type="button" class="btn btn-primary" onclick="checkUserIdpw()">로그인</button>
				        <a href="join" class="btn btn-danger">회원가입</a>
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

</body>
</html>








    