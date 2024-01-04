<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		
<!DOCTYPE html>
<html lang="ko">

<head>
	<title> 우수회원 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH </title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
	<meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
	<link rel="icon" href="../images/favicon.png" />
	<link rel="stylesheet" href="../CSS/bestmember.css">
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

	<div>
		<nav class="side-bar">
			<h2>매칭</h2>
			<ul class="sb-list">
				<li><a href="matching.jsp">Dash 매칭</a></li>
				<li><a href="bestmember.jsp">This Is Me</a></li>
				<!-- <li><a href="#">이용요금</a></li> -->
			</ul>
		</nav>
		<div id="box"></div>
		<div class="content">
			<div>
				<h1 class="title">우 수 회 원</h1>
				<p class="sub-title">메니저가 직접 선정한 DASH의 우수회원</p>
			</div>
			<swiper-container class="mySwiper" loop="true" pagination="true" pagination-clickable="true"
				navigation="true" space-between="30" centered-slides="true" autoplay-delay="2500"
				autoplay-disable-on-interaction="false">
				<swiper-slide><img src="../images/Song.jpg" width="1000px" height="450px" alt="고객사진"></swiper-slide>
				<swiper-slide><img src="../images/An.jpg" width="1000px" height="450px" alt="고객사진"></swiper-slide>
				<swiper-slide><img src="../images/Yoo.jpg" width="1000px" height="450px" alt="고객사진"></swiper-slide>

			</swiper-container>

			<div class="ranking-list">
				<div class="ranking-number-1">1</div>
				<img src="../images/An.jpg" alt="인물" width="70px" height="70px">
				<div class="ranking">
					<p>유*나</p>
					<p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consectetur adipisicing.</p>
				</div>
				<div class="heart-container" title="Like">
					<input type="checkbox" class="checkbox" id="Give-It-An-Id">
					<div class="svg-container">
						<svg viewBox="0 0 24 24" class="svg-outline" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
							</path>
						</svg>
						<svg viewBox="0 0 24 24" class="svg-filled" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
							</path>
						</svg>
						<svg class="svg-celebrate" width="100" height="100" xmlns="http://www.w3.org/2000/svg">
							<polygon points="10,10 20,20"></polygon>
							<polygon points="10,50 20,50"></polygon>
							<polygon points="20,80 30,70"></polygon>
							<polygon points="90,10 80,20"></polygon>
							<polygon points="90,50 80,50"></polygon>
							<polygon points="80,80 70,70"></polygon>
						</svg>
					</div>
				</div>
			</div>
			<div class="ranking-list">
				<div class="ranking-number-2">2</div>
				<img src="../images/An.jpg" alt="인물" width="70px" height="70px">
				<div class="ranking">
					<p>유*나</p>
					<p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consectetur adipisicing.</p>
				</div>
				<div class="heart-container" title="Like">
					<input type="checkbox" class="checkbox" id="Give-It-An-Id">
					<div class="svg-container">
						<svg viewBox="0 0 24 24" class="svg-outline" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
							</path>
						</svg>
						<svg viewBox="0 0 24 24" class="svg-filled" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
							</path>
						</svg>
						<svg class="svg-celebrate" width="100" height="100" xmlns="http://www.w3.org/2000/svg">
							<polygon points="10,10 20,20"></polygon>
							<polygon points="10,50 20,50"></polygon>
							<polygon points="20,80 30,70"></polygon>
							<polygon points="90,10 80,20"></polygon>
							<polygon points="90,50 80,50"></polygon>
							<polygon points="80,80 70,70"></polygon>
						</svg>
					</div>
				</div>
			</div>
			<div class="ranking-list">
				<div class="ranking-number-3">3</div>
				<img src="../images/An.jpg" alt="인물" width="70px" height="70px">
				<div class="ranking">
					<p>유*나</p>
					<p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consectetur adipisicing.</p>
				</div>
				<div class="heart-container" title="Like">
					<input type="checkbox" class="checkbox" id="Give-It-An-Id">
					<div class="svg-container">
						<svg viewBox="0 0 24 24" class="svg-outline" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
							</path>
						</svg>
						<svg viewBox="0 0 24 24" class="svg-filled" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
							</path>
						</svg>
						<svg class="svg-celebrate" width="100" height="100" xmlns="http://www.w3.org/2000/svg">
							<polygon points="10,10 20,20"></polygon>
							<polygon points="10,50 20,50"></polygon>
							<polygon points="20,80 30,70"></polygon>
							<polygon points="90,10 80,20"></polygon>
							<polygon points="90,50 80,50"></polygon>
							<polygon points="80,80 70,70"></polygon>
						</svg>
					</div>
				</div>
			</div>
			<div class="ranking-list">
				<div class="ranking-number">4</div>
				<img src="../images/An.jpg" alt="인물" width="70px" height="70px">
				<div class="ranking">
					<p>유*나</p>
					<p>Lorem ipsum dolor sit amet.</p>
				</div>
				<div class="heart-container" title="Like">
					<input type="checkbox" class="checkbox" id="Give-It-An-Id">
					<div class="svg-container">
						<svg viewBox="0 0 24 24" class="svg-outline" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
							</path>
						</svg>
						<svg viewBox="0 0 24 24" class="svg-filled" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
							</path>
						</svg>
						<svg class="svg-celebrate" width="100" height="100" xmlns="http://www.w3.org/2000/svg">
							<polygon points="10,10 20,20"></polygon>
							<polygon points="10,50 20,50"></polygon>
							<polygon points="20,80 30,70"></polygon>
							<polygon points="90,10 80,20"></polygon>
							<polygon points="90,50 80,50"></polygon>
							<polygon points="80,80 70,70"></polygon>
						</svg>
					</div>
				</div>
			</div>
			<div class="ranking-list">
				<div class="ranking-number">5</div>
				<img src="../images/An.jpg" alt="인물" width="70px" height="70px">
				<div class="ranking">
					<p>유*나</p>
					<p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consectetur adipisicing.</p>
				</div>
				<div class="heart-container" title="Like">
					<input type="checkbox" class="checkbox" id="Give-It-An-Id">
					<div class="svg-container">
						<svg viewBox="0 0 24 24" class="svg-outline" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
							</path>
						</svg>
						<svg viewBox="0 0 24 24" class="svg-filled" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
							</path>
						</svg>
						<svg class="svg-celebrate" width="100" height="100" xmlns="http://www.w3.org/2000/svg">
							<polygon points="10,10 20,20"></polygon>
							<polygon points="10,50 20,50"></polygon>
							<polygon points="20,80 30,70"></polygon>
							<polygon points="90,10 80,20"></polygon>
							<polygon points="90,50 80,50"></polygon>
							<polygon points="80,80 70,70"></polygon>
						</svg>
					</div>
				</div>
			</div>
			<div class="ranking-list">
				<div class="ranking-number">6</div>
				<img src="../images/An.jpg" alt="인물" width="70px" height="70px">
				<div class="ranking">
					<p>유*나</p>
					<p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consectetur adipisicing.</p>
				</div>
				<div class="heart-container" title="Like">
					<input type="checkbox" class="checkbox" id="Give-It-An-Id">
					<div class="svg-container">
						<svg viewBox="0 0 24 24" class="svg-outline" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
							</path>
						</svg>
						<svg viewBox="0 0 24 24" class="svg-filled" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
							</path>
						</svg>
						<svg class="svg-celebrate" width="100" height="100" xmlns="http://www.w3.org/2000/svg">
							<polygon points="10,10 20,20"></polygon>
							<polygon points="10,50 20,50"></polygon>
							<polygon points="20,80 30,70"></polygon>
							<polygon points="90,10 80,20"></polygon>
							<polygon points="90,50 80,50"></polygon>
							<polygon points="80,80 70,70"></polygon>
						</svg>
					</div>
				</div>
			</div>
			<div class="ranking-list">
				<div class="ranking-number">7</div>
				<img src="../images/An.jpg" alt="인물" width="70px" height="70px">
				<div class="ranking">
					<p>유*나</p>
					<p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consectetur adipisicing.</p>
				</div>
				<div class="heart-container" title="Like">
					<input type="checkbox" class="checkbox" id="Give-It-An-Id">
					<div class="svg-container">
						<svg viewBox="0 0 24 24" class="svg-outline" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
							</path>
						</svg>
						<svg viewBox="0 0 24 24" class="svg-filled" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
							</path>
						</svg>
						<svg class="svg-celebrate" width="100" height="100" xmlns="http://www.w3.org/2000/svg">
							<polygon points="10,10 20,20"></polygon>
							<polygon points="10,50 20,50"></polygon>
							<polygon points="20,80 30,70"></polygon>
							<polygon points="90,10 80,20"></polygon>
							<polygon points="90,50 80,50"></polygon>
							<polygon points="80,80 70,70"></polygon>
						</svg>
					</div>
				</div>
			</div>
			<div class="ranking-list">
				<div class="ranking-number">8</div>
				<img src="../images/An.jpg" alt="인물" width="70px" height="70px">
				<div class="ranking">
					<p>유*나</p>
					<p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consectetur adipisicing.</p>
				</div>
				<div class="heart-container" title="Like">
					<input type="checkbox" class="checkbox" id="Give-It-An-Id">
					<div class="svg-container">
						<svg viewBox="0 0 24 24" class="svg-outline" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
							</path>
						</svg>
						<svg viewBox="0 0 24 24" class="svg-filled" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
							</path>
						</svg>
						<svg class="svg-celebrate" width="100" height="100" xmlns="http://www.w3.org/2000/svg">
							<polygon points="10,10 20,20"></polygon>
							<polygon points="10,50 20,50"></polygon>
							<polygon points="20,80 30,70"></polygon>
							<polygon points="90,10 80,20"></polygon>
							<polygon points="90,50 80,50"></polygon>
							<polygon points="80,80 70,70"></polygon>
						</svg>
					</div>
				</div>
			</div>
			<div class="ranking-list">
				<div class="ranking-number">9</div>
				<img src="../images/An.jpg" alt="인물" width="70px" height="70px">
				<div class="ranking">
					<p>유*나</p>
					<p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consectetur adipisicing.</p>
				</div>
				<div class="heart-container" title="Like">
					<input type="checkbox" class="checkbox" id="Give-It-An-Id">
					<div class="svg-container">
						<svg viewBox="0 0 24 24" class="svg-outline" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
							</path>
						</svg>
						<svg viewBox="0 0 24 24" class="svg-filled" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
							</path>
						</svg>
						<svg class="svg-celebrate" width="100" height="100" xmlns="http://www.w3.org/2000/svg">
							<polygon points="10,10 20,20"></polygon>
							<polygon points="10,50 20,50"></polygon>
							<polygon points="20,80 30,70"></polygon>
							<polygon points="90,10 80,20"></polygon>
							<polygon points="90,50 80,50"></polygon>
							<polygon points="80,80 70,70"></polygon>
						</svg>
					</div>
				</div>
			</div>
			<div class="ranking-list">
				<div class="ranking-number">10</div>
				<img src="../images/An.jpg" alt="인물" width="70px" height="70px">
				<div class="ranking">
					<p>유*나</p>
					<p>Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet consectetur adipisicing.</p>
				</div>
				<div class="heart-container" title="Like">
					<input type="checkbox" class="checkbox" id="Give-It-An-Id">
					<div class="svg-container">
						<svg viewBox="0 0 24 24" class="svg-outline" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Zm-3.585,18.4a2.973,2.973,0,0,1-3.83,0C4.947,16.006,2,11.87,2,8.967a4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,11,8.967a1,1,0,0,0,2,0,4.8,4.8,0,0,1,4.5-5.05A4.8,4.8,0,0,1,22,8.967C22,11.87,19.053,16.006,13.915,20.313Z">
							</path>
						</svg>
						<svg viewBox="0 0 24 24" class="svg-filled" xmlns="http://www.w3.org/2000/svg">
							<path
								d="M17.5,1.917a6.4,6.4,0,0,0-5.5,3.3,6.4,6.4,0,0,0-5.5-3.3A6.8,6.8,0,0,0,0,8.967c0,4.547,4.786,9.513,8.8,12.88a4.974,4.974,0,0,0,6.4,0C19.214,18.48,24,13.514,24,8.967A6.8,6.8,0,0,0,17.5,1.917Z">
							</path>
						</svg>
						<svg class="svg-celebrate" width="100" height="100" xmlns="http://www.w3.org/2000/svg">
							<polygon points="10,10 20,20"></polygon>
							<polygon points="10,50 20,50"></polygon>
							<polygon points="20,80 30,70"></polygon>
							<polygon points="90,10 80,20"></polygon>
							<polygon points="90,50 80,50"></polygon>
							<polygon points="80,80 70,70"></polygon>
						</svg>
					</div>
				</div>
			</div>
		</div>
	</div>

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
	<script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-element-bundle.min.js"></script>
</body>

</html>