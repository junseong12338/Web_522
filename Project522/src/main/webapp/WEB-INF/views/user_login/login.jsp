<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인</title>
</head>
<body>
					
					
					<form action="login_success" method="get">
						<div>
						
							<p>아이디
							<input type="text" id="user_id"  name="user_id"/>
							
						</div>
						<div>
						
							<p>비밀번호
							<input type="password" id="user_pw" name="user_pw"/>
							
						</div>
						<div>
						
							<button type="submit">로그인</button>
					        <c:if test="${not empty msg}">
					            <script>alert("${msg}");</script>
					        </c:if>
						
							
							<a href="register">회원가입</a>
							
						</div>
					</form>
					
</body>
</html>
</body>
</html>