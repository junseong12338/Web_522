<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>Test Page</h1>
    
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Value</th>
        </tr>
        
        <c:forEach items="${mpcList}" var="mpc">
            <tr>
                <td>${mpc.user_id}</td>
                <td>${mpc.community_context}</td>
                <td>${mpc.community_date}</td>
            </tr>
        </c:forEach>
    </table>
    
</body>
</html>