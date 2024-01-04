<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		
<!DOCTYPE html>
<html lang="ko">

<head>
	<title>이벤트 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
	<meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
	<link rel="icon" href="../images/favicon.png" />
	<link rel="stylesheet" href="../CSS/header_footer.css" />
	<link rel="stylesheet" href="../CSS/event.css" />
	<link rel="stylesheet" href="../CSS/reset.css" />
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
						<li><a href="event.jsp">이벤트</a></li>
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

		<div id="modal1" class="modal">
			<div class="modal-content">
				<h3 class="modal-text">이벤트</h3>
				<div class="modal-img"><img src="../images/후기.jpg" alt="후기" width="500" /></div>
				<button onclick="closeModal('modal1')" class="close_btn">
					<iconify-icon icon="ph:x-light" width="30px"></iconify-icon>
				</button>
			</div>
		</div>

		<nav class="side-bar">
			<h2>커뮤니티</h2>
			<ul class="sb-list">
				<li><a href="notice.jsp">공지사항</a></li>
				<li><a href="board_main.jsp">문의하기</a></li>
				<li><a href="event.jsp">이벤트</a></li>
				<li><a href="FAQ.jsp">FAQ</a></li>
			</ul>
		</nav>
		<div id="box"></div>

		<div class="manager_wrap">

			<div class="title">
				<h4>이벤트</h4>
			</div>

			<div class="sub-title">
				<h5>저희 DASH를 이용해주시는 고객님들에게<!-- <br /> -->
					감사한 마음을 담아 이벤트를 진행합니다.</h5>
			</div>

			<section class="area_1">

				<div class="event_box1" onclick="openModal('modal1')">
				</div>

				<div class="event_box2" onclick="openModal('modal1')">
				</div>

				<div class="event_box3" onclick="openModal('modal1')">
				</div>

				<div class="event_box4" onclick="openModal('modal1')">
				</div>

			</section>

		</div>

	</main>
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
	<script src="../script/header.js"></script>
	<script src="../script/event.js"></script>
	<script src="../script/loginSession2.js"></script>
	<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>

</body>

</html>