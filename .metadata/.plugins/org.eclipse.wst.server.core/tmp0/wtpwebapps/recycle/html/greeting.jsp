<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<title> 인사말 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH </title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
	<meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
	<link rel="icon" href="../images/favicon.png" />
	<link rel="stylesheet" href="../CSS/greeting_style.css">
	<link rel="stylesheet" href="../CSS/reset.css">
	<link rel="stylesheet" href="../CSS/header_style.css">
	<link rel="stylesheet" href="../CSS/footer_style.css">
	<link rel="stylesheet" href="../CSS/sidebar_style.css">
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


	<!-- 메인 -->
	<main>
		<!-- 사이드바 -->
		<!-- <article class="l-side"> -->
		<nav class="side-bar">
			<h2>회사소개</h2>
			<ul class="sb-list">
				<li><a href="dash.jsp">Dash란?</a></li>
				<li><a href="greeting.jsp">인사말</a></li>
				<li><a href="manager.jsp">커플 매니저 소개</a></li>
			</ul>
		</nav>
		<!-- </article> -->
		<!-- 본문 -->
		<div id="box"></div>
		<h2 id="title">인사말</h2>
		<p id="sub-title">포트폴리오 설명</p>
		<div class="container">
			<div class="con con1">
				<img src="../images/프로젝트 설계4.png" alt="프로젝트 설계">
				<div class="content">
					<h4>
						마음을 연결하는 결혼정보 플랫폼 're: Connect'
					</h4>
					<p>
						Recycle
					</p>
					<p>
						Lorem ipsum dolor sit amet consectetur adipisicing elit. <br />
						Impedit magnam labore, error molestias quibusdam illo provident <br />
						at ipsam odit explicabo? Tempora debitis ipsam voluptas et obcaecati <br />
						dolores voluptatem animi optio.
					</p>
				</div>
			</div>
			<div class="con con2">
				<div class="content">
					<h4>
						프로젝트 정보구조도
					</h4>
					<p>
						포트폴리오 설명입니다.
					</p>
					<p>
						Lorem ipsum dolor sit amet consectetur adipisicing elit. <br />
						Impedit magnam labore, error molestias quibusdam illo provident <br />
						at ipsam odit explicabo? Tempora debitis ipsam voluptas et obcaecati <br />
						dolores voluptatem animi optio.
					</p>
				</div>
				<img src="../images/정보구조도.png" alt="정보구조도">
			</div>

			<div class="con con1 con5">
				<img src="../images/스키마.jpg" alt="스키마">
				<div class="content">
					<h4>
						프로젝트 스키마
					</h4>
					<p>
						포트폴리오 설명입니다.
					</p>
					<p>
						Lorem ipsum dolor sit amet consectetur adipisicing elit. <br />
						Impedit magnam labore, error molestias quibusdam illo provident <br />
						at ipsam odit explicabo? Tempora debitis ipsam voluptas et obcaecati <br />
						dolores voluptatem animi optio.
					</p>
				</div>
			</div>
			<div class="con con3">
				<img src="../images/색상 글꼴.png" alt="색상 및 글꼴">
				<div class="content">
					<h4>
						프로젝트 디자인
					</h4>
					<p>
						디자인 초안
					</p>
					<p>
						Lorem ipsum dolor sit amet consectetur adipisicing elit. <br />
						Impedit magnam labore, error molestias quibusdam illo provident <br />
						at ipsam odit explicabo? Tempora debitis ipsam voluptas et obcaecati <br />
						dolores voluptatem animi optio.
					</p>
				</div>
			</div>
			<div class="con con4">
				<img src="../images/참고자료.png" alt="참고자료">
				<div class="content">
					<h4>
						참고자료
					</h4>
					<p>
						포트폴리오 설명입니다.
					</p>
					<p>
						Lorem ipsum dolor sit amet consectetur adipisicing elit. <br />
						Impedit magnam labore, error molestias quibusdam illo provident <br />
						at ipsam odit explicabo? Tempora debitis ipsam voluptas et obcaecati <br />
						dolores voluptatem animi optio.
					</p>
				</div>
			</div>
		</div>
	</main>

	<!-- 아래 footer 하단 고정 -->
	<footer class="footer">
		<div class="footer-content">
			<h3>(주)Re:connect</h3>
			<span>대표 : Recycle</span>
			<span>사업자등록번호 : 999-99-99999</span>
			<span>주소 : (34838)대전광역시 중구 중앙로121번길 20 (선화동 41) 2층</span>
			<span>Tel.042-222-2402</span>
			<ul class="footer-socials">
				<li>
					<a href="index_logout.jsp"><img src="../images/ico_image.svg" alt="ico_image" /></a>
					<!-- 임시로 로그아웃 넣어 놨음 -->
				</li>
				<li>
					<a href="account_manager.jsp"><img src="../images/ico_instagram.svg" alt="ico_instagram" /></a>
					<!-- 임시로 커플매니저페이지 넣어 놨음 -->
				</li>
				<li>
					<a href="admin_manager_management.jsp"><img src="../images/ico_youtube.svg"
							alt="ico_youtube" /></a>
					<!-- 임시로 관리자페이지 넣어 놨음 -->
				</li>
			</ul>
			<div class="footer-menu">
				<p>
					copyright &copy;2023 by
					<a href="../index.jsp">Re:connect.</a>
					All pictures cannot be copied without permission.
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