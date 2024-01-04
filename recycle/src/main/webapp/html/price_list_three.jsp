<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		
<!DOCTYPE html>
<html lang="ko">

<head>
	<title> 이용하기 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH </title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
	<meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
	<link rel="icon" href="../images/favicon.png" />
	<link rel="stylesheet" href="../CSS/price_list_three.css">
	<link rel="stylesheet" href="../CSS/header_style.css">
	<link rel="stylesheet" href="../CSS/footer_style.css">
	<link rel="stylesheet" href="../CSS/sidebar_style.css">

	<!-- 결제창 띄우게 하는 코드 -->
	<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
	<script>
		var IMP = window.IMP;
		IMP.init("imp37081646");

		function requestPay() {
			IMP.request_pay(
				{
					pg: "kcp.{상점ID}",
					pay_method: "card",
					merchant_uid: "57008833-33004",
					name: "Special",
					amount: 3630000,
					buyer_email: "Iamport@chai.finance",
					buyer_name: "포트원 기술지원팀",
					buyer_tel: "010-1234-5678",
					buyer_addr: "서울특별시 강남구 삼성동",
					buyer_postcode: "123-456",
				},
				function (rsp) {
					// callback
					//rsp.imp_uid 값으로 결제 단건조회 API를 호출하여 결제결과를 판단합니다.
				}
			);
		}
	</script>
	<meta charset="UTF-8" />
	<title>Sample Payment</title>
	<!-- 여기까지 -->

</head>

<body>
	<!-- 헤더 -->
	<header>
		<div class="header">
			<div class="air"></div>
			<a href="../index.jsp" id="logo">
				<img src="../images/logo.svg" alt="로고" />
			</a>
			<div class="login_menu">
				<div id="loginStatus"></div>

			</div>
		</div>
		<nav class="nav">
			<a href="../index.jsp" id="logo2">
				<img src="../images/logo.svg" alt="로고" width="95" />
			</a>
			<ul class="gnb">
				<!-- <div id="test"></div> -->
				<li class="gnb-menu">
					<a href="#" class="menu-btn">회사소개</a>
					<ul class="sub-menu">
						<li><a href="dash.jsp">Dash란?</a></li>
						<li><a href="greeting.jsp">인사말</a></li>
						<li><a href="manager.jsp">커플 매니저 소개</a></li>
					</ul>
				</li>

				<li class="gnb-menu">
					<a href="#" class="menu-btn">커뮤니티</a>
					<ul class="sub-menu">
						<li><a href="notice.jsp">공지사항</a></li>
						<li><a href="board_main.jsp">문의하기</a></li>
						<!-- <li><a href="#">문의하기</a></li> -->
						<li><a href="FAQ.jsp">FAQ</a></li>
					</ul>
				</li>

				<li class="gnb-menu">
					<a href="#" class="menu-btn">이용안내</a>
					<ul class="sub-menu">

						<li><a href="estimate.jsp">상담예약</a></li>
						<li><a href="price.jsp">이용요금</a></li>
					</ul>
				</li>

				<li class="gnb-menu">
					<a href="#" class="menu-btn">후기정보</a>
					<ul class="sub-menu">
						<li><a href="mgr_reviews.jsp">매니저 후기</a></li>
						<li><a href="interview.jsp">인터뷰</a></li>
					</ul>
				</li>

				<li class="gnb-menu">
					<a href="#" class="menu-btn">매칭하기</a>
					<ul class="sub-menu">
						<li><a href="matching.jsp">Dash매칭</a></li>
						<li><a href="bestmember.jsp">This Is Me</a></li>
					</ul>
				</li>
			</ul>
			<button class="nav-icon"><iconify-icon icon="ph:list-fill"></iconify-icon></button>

		</nav>
		<div class="dim-layer"></div>
	</header>

	<main>
		<nav class="side-bar">
			<h2>이용안내</h2>
			<ul class="sb-list">
				<li><a href="estimate.jsp">상담예약</a></li>
				<li><a href="price.jsp">이용요금</a></li>
			</ul>
		</nav>
		<!-- <div id="box"></div> -->

		<div class="content">
			<p class="title">이용요금제</p>
			<p class="sub_title">첫 상담부터 성혼까지 체계적인 서비스로 고객과 함께합니다.</p>

			<div class="box">
				<button class="btn_p3" onclick="requestPay()">
					<a href="#">이용하기</a>
				</button>
			</div>

		</div>


		<footer class="footer">
			<div class="footer-content">
				<h3>(주)Re:connect</h3>
				<span>대표 : Recycle</span>
				<span>사업자등록번호 : 999-99-99999</span>
				<span>주소 : (34838)대전광역시 중구 중앙로121번길 20 (선화동 41) 2층</span>
				<span>Tel.042-222-2402</span>
				<ul class="footer-socials">
					<li>
						<a href="#"><img src="../images/ico_image.svg" alt="ico_image" /></a>
					</li>
					<li>
						<a href="#"><img src="../images/ico_instagram.svg" alt="ico_instagram" /></a>
					</li>
					<li>
						<a href="#"><img src="../images/ico_youtube.svg" alt="ico_youtube" /></a>
					</li>
				</ul>
				<div class="footer-menu">
					<p>
						copyright &copy;2023 by<a href="”#”"> Re:connect.</a> All pictures
						cannot be copied without permission.
					</p>
					<ul class="f-menu">
						<li><a href="../index.jsp">Home</a></li>
						<li><a href="dash.jsp">About</a></li>
						<li><a href="estimate.jsp">Contact</a></li>
						<li><a href="FAQ.jsp">FAQ</a></li>
					</ul>
				</div>
			</div>
		</footer>
		<script src="../script/header_script.js"></script>
		<script src="../script/loginSession2.js"></script>
		<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>