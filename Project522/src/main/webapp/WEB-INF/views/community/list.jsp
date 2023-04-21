<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<title>WoOx Travel Bootstrap 5 Theme</title>

<!-- Bootstrap core CSS -->
<link
	href="../../../resources/community/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet"
	href="../../../resources/community/assets/css/fontawesome.css">
<link rel="stylesheet"
	href="../../../resources/community/assets/css/templatemo-woox-travel.css">
<link rel="stylesheet"
	href="../../../resources/community/assets/css/owl.css">
<link rel="stylesheet"
	href="../../../resources/community/assets/css/animate.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
<!--

TemplateMo 580 Woox Travel

https://templatemo.com/tm-580-woox-travel

-->

</head>

<body>

	<!-- ***** Preloader Start ***** -->
	<div id="js-preloader" class="js-preloader">
		<div class="preloader-inner">
			<span class="dot"></span>
			<div class="dots">
				<span></span> <span></span> <span></span>
			</div>
		</div>
	</div>
	<!-- ***** Preloader End ***** -->

	<!-- ***** Header Area Start ***** -->

	<!-- ***** Header Area End ***** -->

	<!-- ***** Main Banner Area Start ***** -->

	<!-- ***** Main Banner Area End ***** -->

	<div class="visit-country">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="items">
						<div class="row">
							<div class="col-lg-12 col-sm-2">
								<c:forEach var='obj' items="${list}">
									<div class="item">
										<div class="row">
											<div class="col-lg-2 col-sm-1">
												<div class="image">
													<img
														src="../../../resources/community/assets/images/country-01.jpg"
														alt="" border="0">
												</div>
											</div>
											<div class="col-lg-10 col-sm-7">
												<div class="right-content">
													<h4>${obj.community_title }</h4>
													<span>${obj.community_place }</span>
													<div class="main-button">
														<a class='move'
															href="get?community_num=<c:out value="${obj.community_num}"/>">상세
															보기</a>
													</div>
													<br>
													<ul class="info">
														<li><i class="fa fa-user"></i>${obj.user_id }</li>
														<li><i class="fa fa-home"></i>${obj.community_date }</li>
													</ul>
													<br>
													<ul class="info">
														<li style="text-align: left"><i class="fa fa-globe"></i>${obj.community_schedule }</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
								<div class="col-lg-12">
									<ul class="page-numbers">
										<li><a href="#"><i class="fa fa-arrow-left"></i></a></li>
										<li><a href="#">1</a></li>
										<li class="active"><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#"><i class="fa fa-arrow-right"></i></a></li>
									</ul>
								</div>
								<a class="btn btn-outline-info pull-right" id='regBtn'
									href='register'>글쓰기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="../../../resources/community/vendor/jquery/jquery.min.js"></script>
	<script
		src="../../../resources/community/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="../../../resources/community/assets/js/isotope.min.js"></script>
	<script src="../../../resources/community/assets/js/owl-carousel.js"></script>
	<script src="../../../resources/community/assets/js/wow.js"></script>
	<script src="../../../resources/community/assets/js/tabs.js"></script>
	<script src="../../../resources/community/assets/js/popup.js"></script>
	<script src="../../../resources/community/assets/js/custom.js"></script>

	<script>
		function bannerSwitcher() {
			next = $('.sec-1-input').filter(':checked').next('.sec-1-input');
			if (next.length)
				next.prop('checked', true);
			else
				$('.sec-1-input').first().prop('checked', true);
		}

		var bannerTimer = setInterval(bannerSwitcher, 5000);

		$('nav .controls label').click(function() {
			clearInterval(bannerTimer);
			bannerTimer = setInterval(bannerSwitcher, 5000)
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {

			var result = '<c:out value="${result}"/>';
			var actionForm = $("#actionForm");
			$("#regBtn").on("click", function() {
				self.location = "/community/register";
			});

			/* $(".move").on("click", function(e) { e.preventDefault();
				actionForm.append("<input type='hidden' name='community_num' value='"+ $(this).attr("href") + "'>");
				actionForm.attr("action","/community/get");
				actionForm.submit();
			}); */
		});
	</script>

</body>

</html>
