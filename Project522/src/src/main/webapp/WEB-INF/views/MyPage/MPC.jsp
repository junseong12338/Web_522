<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="	https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<style>
</style>
</head>
<body>
	<div class="border container p-5 my-4 text-center">
		<h1>소모임 댓글</h1>
	</div>
	<div class="border container">
		<c:forEach items="${mpcList}" var="mpcList">
			<div class="border row pt-2">
				<h6>${mpcList.community_date}</h6>
			</div>
			<div class="border row p-5">
				<h1>${mpcList.community_context}</h1>
			</div>
			<div class="border row">
				<div class="col-sm-10"></div>
				<div class="col-sm-2">
					<div style="float: right">
						<button class="btn btn-primary"
							onclick="remove(${mpcList.community_num})" type="button">삭제</button>
						<button type="button" class="btn btn-primary">수정</button>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<script>
	function remove(community_num) {
		  if (confirm("삭제하시겠습니까?")) {
		    $.ajax({
		      url: "/MyPage/remove",
		      type: "POST",
		      data: { "community_num": community_num },
		      success: function() {
		        location.reload();
		      }
		    });
		  }
		}

	</script>
</body>
</html>
