<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,javax.servlet.http.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%request.setCharacterEncoding("utf-8");%>

<jsp:include page="../jsp/user_list_component.jsp"/>  

<%
String userName = (String) request.getAttribute("userName");
String userPhotoURL = (String) request.getAttribute("userPhotoURL");
String imageName = (String) request.getAttribute("imageName");
%>
		
<!DOCTYPE html>
<html lang="ko">

<head>
	<title>회원탈퇴 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
	<meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
	<link rel="icon" href="../images/favicon.png" />
	<link rel="stylesheet" href="../CSS/account_withdrawal.css" />
	<link rel="stylesheet" href="../CSS/footer_style.css" />
	<link rel="stylesheet" href="../CSS/reset.css" />
</head>

<body>
	<!-- 마이페이지 헤더 -->
	<header class="account_header">
		<div class="header_btn">
			<div class="message_badge">
				<button type="button" class="btn_messenger" onclick="">메신저</button>
				<span class="push_num" style="display: none">0</span>
			</div>
			<div class="alarm_badge">
				<button type="button" class="btn_alarm" onclick="">알림</button>
				<span class="push_num" style="display: none">0</span>
			</div>
		</div>

		<div class="member">
			<button type="button" class="btn_member">
				<div class="user_photo">
					<figure class="user_img">
						<img src="<%=request.getContextPath()%>/images/<%=imageName%>" alt="user_img" />
					</figure>
				</div>
			</button>

			<div class="layer_member">
				<ul>
					<li>
						<img src="<%=request.getContextPath()%>/images/<%=imageName%>" alt="user_img" /><span><%=userName %></span>
						<!-- 유저이미지, 이름 입력 -->
					</li>
					<li>
						<a href="account.jsp"><span>개인정보 수정</span><iconify-icon icon="la:edit-solid"
								width="30"></iconify-icon></a>
					</li>
					<li>
						<a href="../jsp/logout.jsp"><span>로그아웃</span>
							<iconify-icon icon="material-symbols:logout" width="25"></iconify-icon></a>
					</li>
				</ul>
			</div>
		</div>
	</header>

	<!-- 마이페이지 사이드메뉴 -->
	<div class="nav">
		<a href="../index.jsp" id="logo2">
			<img src="../images/logo.svg" alt="logo" />
		</a>
		<ul class="gnb">
			<li class="gnb-menu">
				<a href="profil.jsp" class="menu-btn">마이프로필</a>
			</li>
			<li class="gnb-menu">
				<a href="account.jsp" class="menu-btn">개인정보수정</a>
			</li>
			<li class="gnb-menu">
				<a href="authored_content.jsp" class="menu-btn">내가 작성한 글</a>
			</li>
			<li class="gnb-menu">
				<a href="Likestatus.jsp" class="menu-btn">좋아요 현황</a>
			</li>
			<li class="gnb-menu">
				<a href="matching_current.jsp" class="menu-btn">매칭현황</a>
			</li>
			<li class="gnb-menu">
				<a href="member_ship.jsp" class="menu-btn">멤버십</a>
			</li>
			<li class="gnb-menu">
				<a href="account_withdrawal.jsp" class="menu-btn secession">회원탈퇴</a>
			</li>
		</ul>
		<button type="button" class="nav-icon">
			<iconify-icon icon="ph:list-fill"></iconify-icon>
		</button>
	</div>
	<main>
		<div class="container">
			<div class="container_main">
				<div class="content">
					<h1>탈퇴 안내</h1>
					<div class="withdrawal">
						<div class="guide_text">
							<p>그 동안 <span>DASH</span>를 이용해 주셔서 감사합니다.</p>
							<p>개인정보보호를 위하여 비밀번호를 다시 한번 확인해주세요.</p>
						</div>
						<p class="guide_text2">
							*회원이 탈퇴를 신청한 경우, 회원은 7일간의 유예 기간을 갖습니다.<br>
							*유예 기간 동안 회원은 언제든지 탈퇴 신청을 철회할 수 있습니다.
						</p>
						<form action="../jsp/withdrawalProcess.jsp" method="post" id="withdrawal_form">
							<label for="password">비밀번호 확인 : </label>
							<input type="password" id="password" name="password" required>
							<div class="submit">
								<p class="agree-content">
									회원 탈퇴 약관

									제1조 (유예 기간)

									본 약관에 따라 회원이 탈퇴를 신청한 경우, 회원은 7일간의 유예 기간을 갖습니다.
									유예 기간 동안 회원은 언제든지 탈퇴 신청을 철회할 수 있습니다.
									제2조 (탈퇴 조건)

									유예 기간 종료 후, 회원은 탈퇴가 최종적으로 이루어집니다.
									탈퇴 신청이 승인되면 해당 회원의 모든 계정 정보와 데이터는 영구적으로 삭제됩니다.
									제3조 (탈퇴 신청)

									회원은 회원 탈퇴를 원할 경우, 로그인 후 "회원 탈퇴" 또는 유사한 옵션을 통해 탈퇴 신청을 시작할 수 있습니다.
									탈퇴 신청 시, 회원은 비밀번호를 입력하여 확인해야 합니다.
									제4조 (탈퇴 철회)

									유예 기간 동안 탈퇴 신청을 철회하고 싶은 경우, 회원은 탈퇴 신청 전과 동일한 방법을 통해 철회할 수 있습니다.
									제5조 (책임)

									회원은 본인의 계정과 관련된 모든 책임을 지며, 탈퇴 시 관련된 모든 데이터와 정보가 삭제됨을 이해합니다.
									회사는 회원 탈퇴와 관련하여 발생한 어떠한 손해에 대해서도 책임지지 않습니다.
									제6조 (약관의 변경)

									회사는 본 약관을 변경할 권리를 갖습니다. 변경 사항은 본 웹 사이트에 게시되며, 변경된 약관은 즉시 효력을 발생합니다.
									변경된 약관에 동의하지 않는 회원은 회원 탈퇴 절차를 따라 탈퇴할 수 있습니다.
									제7조 (유의사항)

									탈퇴 후에는 복구가 불가능하며, 탈퇴와 관련한 모든 정보와 데이터가 영구적으로 삭제됩니다.
									탈퇴 신청 시 유예 기간 동안 어떠한 데이터나 정보도 복구할 수 없으므로 주의해야 합니다.
									제8조 (관할법원)

									본 약관에 대한 해석 및 분쟁에 관한 관할법원은 [법원 이름]으로 합니다.
									본 약관에 동의함으로써, 회원은 유예 기간을 이해하고 탈퇴와 관련한 모든 규정을 준수하는 것으로 간주됩니다.
								</p>
								<label>
									<input type="checkbox" name="agree" required />개인정보처리방침에 동의합니다.
								</label>
								<button type="submit" id="submit-withdrawal" onclick="handleSubmit()">회원탈퇴</button>
							</div>
						</form>
						<p id="result-message"></p>
					</div>
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
	<script src="../script/account_withdrawal.js"></script>
	<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>