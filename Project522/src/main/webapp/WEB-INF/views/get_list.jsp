<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var='obj' items="${list}">
		${obj.community_num }, ${obj.community_category }, ${obj.community_title }, ${obj.community_date }, ${obj.community_map }, ${obj.user_id }, ${obj.community_place }, ${obj.community_schedule }<br/>
	</c:forEach>
</body>
</html>