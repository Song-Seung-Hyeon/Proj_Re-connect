<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		
<!DOCTYPE html>
<html lang="ko">

<head>
	<title>회원가입 | 마음을 다시 연결하는 결혼 정보 플랫폼 DASH</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="keyworeds" content="결혼, wedding, 결혼정보업체, DASH, Re:Connect, 듀오, 가연," />
	<meta name="description" content="안녕하세요, 마음을 다시 연결하는 결혼 정보 플랫폼 DASH 입니다." />
	<link rel="icon" href="../images/favicon.png" />
	<link rel="stylesheet" href="../CSS/create_account.css" />
	<link rel="stylesheet" href="../CSS/header_footer_noside.css" />
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
		<div id="box"></div>
		<div class="singUp">
			<h2>회원가입</h2>
			<form action="../jsp/accountInsertData.jsp" method="post" id="singUp-form">
				<div class="info-id">
					<input type="text" name="user_id" id="user_id" placeholder="아이디" maxlength="10" required
						oninput="checkDuplicate()" />
					<span id="id-explan" class="id-explan">아이디는 영문, 숫자만 사용하실 수 있습니다.</span>
				</div>

				<div class="info-pw">
					<input type="password" name="user_pw" id="user_pw" placeholder="비밀번호" minlength="8" maxlength="15"
						required oninput="validatePassword()" />
					<span class="pw-explan">영문/숫자/특수문자 조합으로 8자 이상 15자 이하 사용 가능.
						<br />사용가능 특수문자: !@#$%^&*?_~</span>
				</div>
				<div class="info-pw">
					<input type="password" name="user_pw_confirm" id="user_pw_confirm" placeholder="비밀번호 확인"
						minlength="8" maxlength="15" required oninput="validatePassword()" />
				</div>
				<span id="pw-match-message" style="color: red"></span>

				<div class="name-sex-box">
					<div class="info-name">
						<input type="text" name="user_name" placeholder="이름" maxlength="10" required />
					</div>

					<div class="info-sex">
						<input type="radio" id="male" name="user_gender" value="0"/><label for="male">남자</label>
						<input type="radio" id="female" name="user_gender" value="1"/><label for="female">여자</label>
					</div>
				</div>

				<div class="info-birth">
					<select class="b-year" name="user_year" required>
						<option value="">연도 선택</option>
						<option value="2004">2004년</option>
						<option value="2003">2003년</option>
						<option value="2002">2002년</option>
						<option value="2001">2001년</option>
						<option value="2000">2000년</option>
						<option value="1999">1999년</option>
						<option value="1998">1998년</option>
						<option value="1997">1997년</option>
						<option value="1996">1996년</option>
						<option value="1995">1995년</option>
						<option value="1994">1994년</option>
						<option value="1993">1993년</option>
						<option value="1992">1992년</option>
						<option value="1991">1991년</option>
						<option value="1990">1990년</option>
						<option value="1989">1989년</option>
						<option value="1988">1988년</option>
						<option value="1987">1987년</option>
						<option value="1986">1986년</option>
						<option value="1985">1985년</option>
						<option value="1984">1984년</option>
						<option value="1983">1983년</option>
						<option value="1982">1982년</option>
						<option value="1981">1981년</option>
						<option value="1980">1980년</option>
						<option value="1979">1979년</option>
						<option value="1978">1978년</option>
						<option value="1977">1977년</option>
						<option value="1976">1976년</option>
						<option value="1975">1975년</option>
						<option value="1974">1974년</option>
						<option value="1973">1973년</option>
						<option value="1972">1972년</option>
						<option value="1971">1971년</option>
						<option value="1970">1970년</option>
						<option value="1969">1969년</option>
						<option value="1968">1968년</option>
						<option value="1967">1967년</option>
						<option value="1966">1966년</option>
						<option value="1965">1965년</option>
						<option value="1964">1964년</option>
						<option value="1963">1963년</option>
						<option value="1962">1962년</option>
						<option value="1961">1961년</option>
						<option value="1960">1960년</option>
						<option value="1959">1959년</option>
						<option value="1958">1958년</option>
						<option value="1957">1957년</option>
						<option value="1956">1956년</option>
						<option value="1955">1955년</option>
						<option value="1954">1954년</option>
						<option value="1953">1953년</option>
						<option value="1952">1952년</option>
						<option value="1951">1951년</option>
						<option value="1950">1950년</option>
					</select>
					<select class="b-month" name="user_month" required>
						<option value="">월 선택</option>
						<option value="01">1월</option>
						<option value="02">2월</option>
						<option value="03">3월</option>
						<option value="04">4월</option>
						<option value="05">5월</option>
						<option value="06">6월</option>
						<option value="07">7월</option>
						<option value="08">8월</option>
						<option value="09">9월</option>
						<option value="10">10월</option>
						<option value="11">11월</option>
						<option value="12">12월</option>
					</select>
					<select class="b-day" name="user_day" required>
						<option value="">일 선택</option>
						<option value="01">1일</option>
						<option value="02">2일</option>
						<option value="03">3일</option>
						<option value="04">4일</option>
						<option value="05">5일</option>
						<option value="06">6일</option>
						<option value="07">7일</option>
						<option value="08">8일</option>
						<option value="09">9일</option>
						<option value="10">10일</option>
						<option value="11">11일</option>
						<option value="12">12일</option>
						<option value="13">13일</option>
						<option value="14">14일</option>
						<option value="15">15일</option>
						<option value="16">16일</option>
						<option value="17">17일</option>
						<option value="18">18일</option>
						<option value="19">19일</option>
						<option value="20">20일</option>
						<option value="21">21일</option>
						<option value="22">22일</option>
						<option value="23">23일</option>
						<option value="24">24일</option>
						<option value="25">25일</option>
						<option value="26">26일</option>
						<option value="27">27일</option>
						<option value="28">28일</option>
						<option value="29">29일</option>
						<option value="30">30일</option>
						<option value="31">31일</option>
					</select>
				</div>

				<div class="info-tel">
					<select class="phone-first" name="user_phone" required>
						<option value="">연락처</option>
						<option value="010" selected="">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
					<input class="phone-last" type="text" name="phone_last" required maxlength="8"
						oninput="formatPhoneNumber(this)" />
					<input type="button" value="인증번호 받기" class="phone-check" id="sendVerificationButton"
						onclick="sendVerificationCode()" disabled />
				</div>

				<div class="verification-code" style="display: none">
					<input type="text" name="verification_code" id="verificationCode" placeholder="인증번호 입력"
						maxlength="6" required oninput="checkVerificationCode()" />
					<input type="button" value="인증번호 확인" class="verify-button" id="verifyButton" onclick="verifyCode()"
						disabled />
				</div>

				<div class="info-email">
					<input type="text" class="email-id" name="email" placeholder="이메일" required />@
					<input type="text" class="text-email" name="email_diract" value="" required />
					<select class="email-select" name="email_select" onchange="checkEmailAddy()">
						<option value="" selected>선택해주세요</option>
						<option value="naver.com">naver.com</option>
						<option value="google.com">google.com</option>
						<option value="daum.net">daum.net</option>
						<option value="nate.com">nate.com</option>
						<option value="1">::직접 입력::</option>
					</select>
				</div>
				<div class="country-education-box">
					<div class="info-country">
						<select class="country" name="user_country" required>
							<option value="">거주지역</option>
							<option value="서울">서울</option>
							<option value="수원/화성">수원/화성</option>
							<option value="인천">인천</option>
							<option value="천안/당진">천안/당진</option>
							<option value="청주">청주</option>
							<option value="대전">대전</option>
							<option value="전주">전주</option>
							<option value="광주">광주</option>
							<option value="대구">대구</option>
							<option value="부산">부산</option>
							<option value="울산">울산</option>
							<option value="창원/마산">창원/마산</option>
							<option value="경기">경기</option>
							<option value="평택/오산">평택/오산</option>
							<option value="세종">세종</option>
							<option value="충북">충북</option>
							<option value="충남">충남</option>
							<option value="아산">아산</option>
							<option value="전북">전북</option>
							<option value="전남">전남</option>
							<option value="경북">경북</option>
							<option value="강원">강원</option>
							<option value="경남">경남</option>
							<option value="제주">제주</option>
						</select>
					</div>

					<div class="info-education">
						<select class="education" name="user_education" required>
							<option value="">학력</option>
							<option value="대학교 졸업">대학교 졸업</option>
							<option value="대학교 중퇴">대학교 중퇴</option>
							<option value="대학교 재학">대학교 재학</option>
							<option value="대학원 졸업">대학원 졸업</option>
							<option value="대학(2,3년제)졸업">대학(2,3년제)졸업</option>
							<option value="대학(2,3년제)중퇴">대학(2,3년제)중퇴</option>
							<option value="고등학교 졸업">고등학교 졸업</option>
							<option value="기타">기타</option>
						</select>
					</div>
				</div>
				<input type="checkbox" name="agree_all" value="Y" class="agree_all" id="agree_all" />
				<label for="agree_all" class="chek_all"><span class="bold">이용약관, 개인정보 수집 및 이용, 마케팅 활용 모두
						동의</span></label>
				<div class="agree_first">
					<div class="agree_text">
						제1조 (목적)<br />
						<br />
						이 약관은 DASH(이하 "회사"라 합니다.)와 이용자간에 회사가 운영하는
						인터넷 사이트 및 동 사이트의 기본 DB를 공유하는 모든 사이트 및
						제휴사이트 포함. 이하 "사이트"라 합니다, 사이트 에서 제공하는 제반
						서비스(이하 "서비스"라 합니다)의 가입 및 이용에 관한 제반 사항과
						기타 필요한 사항을 규정함을 목적으로 합니다.<br />
						<br />
						<br />
						제2조 (용어의 정의)<br />
						<br />
						이 약관에서 사용하는 주요한 용어의 정의는 다음과 같습니다.<br />
						1. 회원 : 서비스를 제공받기 위하여 이용자 아이디(ID)를 부여 받은
						자를 말합니다.<br />
						2. 회원 아이디 (이하 "ID" ) : 회원의 식별과 회원의 서비스 이용을
						위하여 회원이 선정하고 회사가 부여하는 문자와 숫자의 조합을
						말합니다.<br />
						3. 비밀번호 : 회원이 사용하는 ID와 일치된 회원임을 확인하고 회원의
						개인정보를 위하여 회원이 선정한 문자와 숫자의 조합을 말합니다.<br />
						4. 핸드폰 인증 : SMS(문자메시지)로 6자리 숫자를 전송하여 핸드폰에
						수신된 인증번호를 사이트에 등록하도록 함으로써 회원 인증을 하는
						것<br />
						<br />
						<br />
						제3조 (약관의 효력 및 변경)<br />
						<br />
						1. 이 약관은 이용자가 회원에 가입함과 동시에 효력을 발생하며,
						관계법령에 위배되지 않는 범위 안에서 개정될 수 있습니다. 개정된
						약관은 온라인에서 공지함으로써 효력을 발생하며, 이용자의 권리 또는
						의무 등 중요한 규정의 개정은 사전에 공지합니다.<br />
						2. 이 약관에 동의하는 것은 정기적으로 웹을 방문하여 약관의
						변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한
						정보를 알지 못해 발생하는 이용자의 피해는 회사에서 책임지지
						않습니다.<br />
						3. 회원은 개정된 약관에 동의하지 않을 경우 회원 탈퇴를 요청할 수
						있으며, 서비스를 계속 사용하는 것은 약관의 내용을 수락하고
						동의하는 것으로 간주합니다.<br />
						<br />
						<br />
						제4조 (약관 외 준칙)<br />
						<br />
						1. 이 약관이 해당사이트에서 공지하는 개별서비스 혹은 회사의 정책에
						대한 세부적인 안내내용은 서비스안내(헬프데스크 등 도움말 관련
						메뉴, 각 메뉴 및 서비스 화면에 고지된 내용, 사이트에 게시하는 공지
						등을 포함하며 회사가 온라인에서 제공하는 서비스에 대한 설명 및
						사용권한, 회원의 의무, 책임 등을 명시한 내용 이하 "서비스안내"라
						합니다)에서 정할 것을 위임하거나, 기타 이 약관에서 명시하지 아니한
						사항에 대하여는 서비스안내가 정한 바에 따르기로 합니다.<br />
						2. 서비스안내의 변경 및 변경에 관한 동의에 있어서도 제3조 제2항 및
						제3항의 규정을 적용합니다.<br />
						<br />
						<br />
						제5조 (회원가입)<br />
						<br />
						1. 사이트 회원이 되고자 하는 자는 회사가 정한 가입양식에 따라
						회원정보를 기입하고 "약관에 동의합니다" 및 "회원가입" 단추를
						누르는 방법으로 회원가입을 신청합니다.<br />
						2. 회원은 반드시 본인인증서비스를 통해 본인확인을 해야 하며,
						회사가 정한 가입양식에 기재하는 모든 정보는 진실한 것으로
						간주됩니다. 내용이 허위(차명, 비실명 등 포함)이거나, 그러하다고
						의심할만한 합리적인 사유가 발생할 경우 회사는 가입신청을 한 회원의
						모든 ID를 삭제하고 본 서비스 제공의 일부 또는 전부를 중지할 수
						있으며, 이로 인해 발생하는 모든 불이익에 대하여 책임지지 않습니다.
						회사는 이를 위하여 필요한 경우 제증명을 요구할 수 있습니다.<br />
						3. 회원이 회사의 사이트 회원으로 가입하는 것은 서비스와 관련된
						전화, 이메일(E-MAIL)을 수신하는 데에 동의하는 것으로 간주합니다.
						단, 이메일 수신 거부자의 경우 이메일 발송대상에서 제외되며,
						이후에도 회원의 의사에 따라 수신여부를 변경할 수 있습니다.<br />
						4. 회사는 회원의 등급을 서비스 유료결제 등으로 나눌 수 있으며,
						회원은 그 등급에 따라 서비스 이용에 제한을 받을 수 있습니다. 회원
						등급에 관한 자세한 사항은 해당 서비스안내에서 정한 바에 따릅니다.
						이는 회사의 정책에 의해 변경될 수 있으며, 변경된 사항은 공지 즉시
						효력을 발생합니다.<br />
						5. 회사는 제1항과 같은 방법으로 회원가입을 신청한 자가 다음 각
						호에 해당되지 않는 한 신청한 자를 회원으로 등록합니다. 그러나 다음
						각 호에 해당하는 자에게는 회원가입 승낙을 유보하거나 사이트 이용을
						제한할 수 있으며, 가입신청을 거절할 수도 있습니다.<br />
						(1) 등록내용이 허위(차명, 비실명 등 포함)인 것으로 판명되거나,
						그러하다고 의심할 만한 합리적인 사유가 발생할 경우<br />
						(2) 가입 신청자가 본 약관 및 서비스안내, 기타 관계법령을 위반하여
						해당 인터넷 사이트의 회원자격을 상실한 적이 있는 경우<br />
						(3) 기술상 지장이 있는 경우<br />
						(4) 사회질서 및 미풍양속에 반할 우려가 있다고 인정되는 경우<br />
						(5) 영리를 추구한 목적으로 본 서비스를 이용하고자 하는 경우<br />
						(6) 기타 회사의 사정상 이용승낙이 곤란하거나 회사가 정한
						이용신청요건이 미비 되었을 경우<br />
						6. 회원가입계약의 성립시기는 회사의 승낙이 가입신청자에게 도달한
						시점으로 합니다.<br />
						7. 회사가 운영하는 모든 사이트의 회원 DB는 통합되어 운영되므로 본
						약관에 동의함은 회사가 운영하는 모든 사이트(www.duo.co.kr,
						www.highendduo.com 등)의 회원이 됨에 동의함을 의미합니다.<br />
						<br />
						<br />
						제6조 (회사의 의무)<br />
						<br />
						1. 회사는 지속적이고, 안정적으로 서비스를 제공하기 위해서
						노력합니다.<br />
						2. 회사는 서비스 제공과 관련해서 알고 있는 회원의 신상정보를
						본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다. 단, 본인이
						승낙한 경우, 전기통신기본법 등 법률의 규정에 의해 국가기관의
						요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신 윤리
						위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른
						요청이 있는 경우, 제휴사 또는 외부 마케팅을 통한 보다 나은
						서비스를 제공하기 위해 회사가 요청을 하고 이에 회원 스스로 동의를
						한 경우, 회원이 당사에 제공한 개인정보를 스스로 공개한 경우에는
						그러하지 않습니다.<br />
						3. 2항의 범위 내에서 회사는 업무와 관련하여 회원 전체 또는 일부의
						개인정보에 관한 통계 자료를 작성하여 이를 사용할 수 있고, 서비스를
						통하여 회원의 컴퓨터에 쿠키를 전송할 수 있습니다. 이 경우 회원은
						쿠키의 수신을 거부하거나 쿠키의 수신에 대하여 경고하도록 사용하는
						컴퓨터의 브라우저의 설정을 변경할 수 있습니다.<br />
						4. 회사는 회원이 서비스 이용 중 필요가 있다고 인정되는 다양한 정보
						및 광고를 전자우편이나 서신 혹은 유/무선 전화 등으로
						제공합니다.<br />
						5. 회사는 회원으로부터 제기되는 불만이 정당하다고 인정할 경우에는
						적극적으로 처리함을 원칙으로 합니다.<br />
						<br />
						<br />
						제7조 (회원의 의무)<br />
						<br />
						1. 회원 가입 시에 요구되는 회원 자신의 정보는 진실하고 정확하여야
						합니다. 또한 이미 제공된 회원에 대한 정보가 진실하고, 정확한
						정보가 되도록 유지, 갱신하여야 하며 그러하지 아니하여 발생하는
						문제의 책임은 회원에게 있으며 회사는 책임을 지지 않습니다. 이름,
						아이디, 출생년, 휴대전화 번호, 성별 등은 수정할 수 없습니다.<br />
						2. 회원이 제공한 정직하지 않은 정보와 기타 이 약관 또는
						서비스안내에 위배된 행위로 인한 책임은 회원 본인에게 있으며, 이로
						인하여 회사에 손해가 발생한 경우 회사는 회원에게 민,형사상의
						책임을 물을 수 있습니다.<br />
						3. 회사는 회원의 신원에 대한 보증을 하지 않습니다. 또한 회원
						스스로 사이트를 통한 온/오프라인의 만남으로 회원간에 발생한 모든
						문제에 대해서는 전적으로 회원본인에게 책임이 있으며, 회사는 책임을
						지지 않습니다. 그러므로 어떤 형태의 만남이든 회원본인의 신중한
						판단이 필요합니다.<br />
						4. 회원은 회사가 공지 또는 통지하는 내용을 반드시 확인, 준수하여야
						하며 그렇지 아니하여 발생한 문제나 회원의 손해에 대해서는 회사가
						책임을 지지 않습니다.<br />
						5. 회원이 본 서비스를 통하여 게시, 전송, 입수하였거나 전자메일
						기타 다른 수단에 의하여 게시, 전송 또는 입수한 모든 형태의 정보에
						대하여는 해당 회원이 모든 책임을 부담하며 당사는 어떠한 책임도
						부담하지 아니합니다.<br />
						6. 회원은 다음 각 호에 해당하는 행위를 하지 않아야 한다.<br />
						(1) 타인의 ID와 비밀번호, 성명을 도용하는 행위 및 자신의 ID와
						비밀번호를 누설하는 행위<br />
						(2) 가입신청 또는 개인정보 변경 시 허위 내용을 등록하는 행위<br />
						(3) 공공질서 및 미풍양속을 저해할 만한 저속, 음란, 모욕적,
						위협적이거나 타인의 프라이버시를 침해할 수 있는 내용을 전송, 게시,
						게재, 전자메일 또는 기타의 방법으로 전송하는 행위<br />
						(4) 서비스를 통하여 전송 혹은 게시된 내용의 출처를 위장하는
						행위<br />
						(5) 타인의 특허, 상표, 영업비밀, 저작권, 기타 지적재산권을
						침해하는 내용을 게시, 게재, 전자메일 또는 기타의 방법으로 전송하는
						행위<br />
						(6) 회사의 승인을 받지 아니한 불법선거운동, 광고, 판촉물,
						정크메일, 스팸, 행운의 편지, 피라미드 조직 기타 다른 형태의 권유를
						게시, 게재, 전자메일 또는 기타의 방법으로 전송하거나 사용하는
						행위<br />
						(7) 다른 사용자의 개인정보를 수집 또는 저장하는 행위<br />
						(8) 서비스의 정상적 운영, 유지 등을 방해하거나 지연시키는 행위<br />
						(9) 정보통신설비의 오작동이나 정보 등의 파괴를 유발시키는 컴퓨터
						바이러스 프로그램 등을 유포하는 행위<br />
						(10) 회사의 승인 없이 회사 인터넷 사이트의 서비스 정보 또는
						개인정보를 복제 또는 유통 시키거나 상업적으로 이용 또는 타인에게
						제공하는 행위<br />
						(11) 서비스를 이용하여 불법 상품을 판매하는 등 영리 활동을 하는
						행위<br />
						(12) 해킹, 음란사이트를 통한 상업행위, 상용 S/W 불법 배포 등을
						하는 행위<br />
						(13) 범죄와 관련 있다고 객관적으로 판단할 수 있는 행위<br />
						(14) 회사의 운영진, 관리자 또는 관계자를 사칭하는 행위<br />
						(15) 회사 프로그램상의 버그를 악용하거나 정상적이지 아니한
						방법으로 사이버 자산을 취득하는 행위<br />
						(16) 회사로부터 특별한 권리를 부여 받지 않고 회사의 클라이언트
						프로그램을 변경하거나, 회사의 서버를 해킹 하거나, 웹사이트 또는
						게시된 정보의 일부분 또는 전체를 임의로 변경하는 행위<br />
						(17) 본 약관을 포함하여 기타 회사가 정한 정책 및 기타 관계법령을
						위반한 행위<br />
						(18) 다른 이용자 또는 제3자를 비방하거나 명예를 훼손하는 행위<br />
						<br />
						7. 회원은 회사가 명시적으로 동의하지 않는 한 서비스 이용권한, 기타
						이용계약상 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로
						제공할 수 없습니다.<br />
						8. 본 약관을 위반하거나 또는 기타의 사유로 타회원으로부터 강제탈퇴
						또는 불량회원으로 일반에 공개할 것을 요구 받는 경우, 신고를 당한
						회원의 활동은 정지되며, 회사는 사실확인 작업에 들어갑니다. 신고의
						내용이 적절했다고 판단되면 사이트 관리자는 유·무선을 통해 원활한
						회원활동을 권고 하거나 강제탈퇴 처리 합니다.<br />
						<br />
						<br />
						제8조 (게시물 및 회원간 통신내용의 관리)<br />
						<br />
						1. 회원이 게시한 게시물(회원 본인의 개인정보 포함)의 내용에 대한
						권리와 책임은 회원에게 있으며, 단, 회사는 서비스 내에서의 게시권을
						가지며 서비스 홍보 등의 목적으로 사용할 수 있습니다. 회원이 게재한
						모든 정보에 대하여 다음 각 호와 같은 경우나 합리적인 사유 발생시
						임의로 이를 편집, 이동, 삭제할 수 있습니다.<br />
						(1) 게시된 내용이 본 약관에 위배되는 경우<br />
						(2) 공공질서 및 미풍양속을 위반하는 내용인 경우<br />
						(3) 다른 회원 또는 제3자를 비방하거나 명예를 훼손하는 내용인
						경우<br />
						(4) 범죄 행위와 관련 있다고 인정되는 내용인 경우<br />
						(5) 서비스 성격에 부합하지 않은 내용인 경우<br />
						(6) 회사의 저작권, 제3자 저작권등 기타 권리를 침해하는 내용인
						경우<br />
						(7) 상업용 또는 불법, 음란, 저속하다고 판단되는 내용인 경우<br />
						(8) 기타 관계법령에 위반된다고 판단되는 경우<br />
						2. 회사는 회원의 게시물을 소중하게 생각하며 변조,훼손,삭제되지
						않도록 최선을 다하고, 회원간 통신 내용에 대한 보안유지에도 최선을
						다합니다.<br />
						3. 사이트(개인 신상자료 등 포함)에 등록된 게시물에 대한 보존의
						의무는 회원 개인이 가지며 그 보존의 책임은 회사가 지지
						않습니다.<br />
						<br />
						<br />
						제9조 (서비스 제공의 제한 및 중지)<br />
						<br />
						1. 회사는 다음 각 호에 해당하는 경우 서비스의 전부 또는 일부를
						제한하거나 중지할 수 있습니다.<br />
						(1) 회원이 제9조에 정해진 회원의 의무를 위반하거나 기타 이 약관 및
						서비스안내, 관계법령에 위반한 경우 <br />
						(2) 미풍양속을 저해하는 비속한 ID 및 닉네임사용<br />
						(3) 타인 또는 제3자나 이용자에게 심한 모욕 또는 불이익을 주거나,
						서비스 이용을 방해한 경우<br />
						(4) 회사의 서비스 운영을 고의로 방해하거나 회사의 운영진, 직원,
						관계자를 사칭하는 경우<br />
						(5) 회원 가입신청 또는 개인정보 변경시 허위 내용을 등록한 경우<br />
						(6) 회사 서비스 정보를 이용하여 얻은 정보를 회사 사전 승낙없이
						복제 또는 유통하거나 상업적으로 이용하는 경우<br />
						(7) 안정적 서비스 운영을 방해하거나 영리를 목적으로 다량 정보를
						전송하거나 광고성 정보를 전송하는 경우<br />
						(8) 회사, 다른 이용자 또는 제 3자의 지적재산권을 침해하는 경우<br />
						(9) 서비스 프로그램상의 버그를 악용하여 정상적이지 아니한 방법으로
						사이버자산을 취득하거나 사이버자산을 타인과 거래하는 행위를 한
						경우<br />
						(10) 정상적인 서비스 운영에 방해가 될 경우<br />
						(11) 정보통신 윤리위원회 등 관련 공공기관의 시정 요구가 있는
						경우<br />
						(12) 서비스용 설비의 보수 등 공사로 인한 부득이한 경우 (정기점검,
						긴급조치 등)<br />
						(13) 국가비상사태, 천재지변, 정전, 제반 설비의 장애 또는 이용량의
						폭주 등으로 정상적인 서비스 이용에 지장이 있는 때<br />
						(14) 새로운 서비스로 교체 및 서비스를 제공할 수 없는 사유
						발생시<br />
						(15) 회사의 서비스 개선을 위한 회사 정책 상 불가피한 경우<br />
						(16) 기타 불가항력적 사유가 있는 경우<br />
						<br />
						2. 위 제11조 제1항에 의하여 회사는 서비스를 이용하는 회원에게
						서비스 이용에 대하여 별도 공지 없이 서비스 이용의 일시정지,
						초기화, 이용계약 해지 등을 할 수 있다<br />
						<br />
						<br />
						제10조 (이용자의 ID, 비밀번호 및 접속종료에 대한 의무)<br />
						<br />
						1. 회원의 ID와 비밀번호에 관한 모든 관리책임은 회원본인에게
						있습니다.<br />
						2. 회원은 본인의 ID 및 비밀번호를 제3자에게 이용하게 해서는
						안됩니다.<br />
						3. 회원은 본인의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고
						있음을 인지한 경우에는 바로 회사에 통보하고 회사의 안내가 있는
						경우에는 그에 따라야 합니다.<br />
						4. 회원은 본 서비스의 매 사용 종료 시마다 정확히 접속을 종료하도록
						하여야 하며, 정확히 종료 하지 아니함으로써 제3자가 귀하에 관한
						정보를 이용하게 되는 등의 결과에 의하여 귀하에게 발생하는 손해 및
						손실에 대하여는 회사는 책임을 부담하지 아니합니다.<br />
						<br />
						<br />
						제11조 (이용계약의 해지)<br />
						<br />
						1. 회원이 이용계약을 해지하고자 할 경우 회사가 안내하는 방법으로
						회원 본인이 회사에게 해지 신청을 하고, 회사는 확인절차를 거쳐
						이용계약을 해지합니다. 해지 처리를 하는 과정에서 시스템의 문제나
						불량회원 등록 확인 등으로 수일의 시간이 필요하다고 판단될 때는
						회원에게 사유를 공지하고 추후에 해지 처리하게 됩니다.<br />
						2. 회사는 회원이 본 약관 또는 서비스안내 기타 관계법령에 위배되는
						행위를 하였을 경우, 제공 서비스의 일부 또는 전체에 대한 이용권한을
						사전 통지 없이 해지 할 수 있습니다.<br />
						<br />
						<br />
						제12조 (면책조항)<br />
						<br />
						1. 회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를
						제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.<br />
						2. 회사는 기간통신 사업자가 전기통신 서비스를 중지하거나
						정상적으로 제공하지 아니하여 손해가 발생한 경우 책임이
						면제됩니다.<br />
						3. 회사는 회원의 귀책사유로 인한 서비스 이용 장애에 대하여 책임을
						지지 않습니다.<br />
						4. 회사는 회원이 회사의 서비스 제공으로부터 기대되는 이익을 얻지
						못하였거나, 서비스 자료에 대한 취사 선택 또는 이용으로 인해
						발생하는 손해 등에 대해서는 책임이 면제됩니다.<br />
						5. 회사는 회원이 사이트에 제공한 개인정보 및 게재한 정보, 자료,
						사실의 신뢰도, 정확성 등 그 내용에 관해서 책임이 면제됩니다.<br />
						6. 회사는 회원의 게시물 등의 자료유실, 파손 등에 대한 피해에 대해
						책임지지 않으며, 따라서 회원은 자료 등에 대하여 항시 별도 보관
						조치를 취해야 합니다.<br />
						7. 회사는 서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한
						사유로 발생한 손해에 대한 책임이 면제됩니다.<br />
						8. 회사는 이용자의 컴퓨터 오류에 의한 손해가 발생한 경우, 또는
						회원이 신상정보 및 전자우편 주소를 부실하게 기재하여 손해가 발생한
						경우 책임을 지지 않습니다.<br />
						9. 회사는 회원이 서비스를 이용하면서 얻은 자료로 인한 손해에
						대하여 책임을 지지 않습니다.<br />
						10. 회사는 회원의 신원에 대한 보증을 하지 않습니다. 또한 회사는
						회원이 서비스를 이용하며 타회원으로 인해 입게 되는 정신적, 물질적
						피해에 대하여 보상할 책임을 지지 않습니다.<br />
						11. 회사는 이용자 상호간 및 이용자와 제3자 상호간에 서비스를
						매개로 발생한 분쟁에 대해 개입할 의무가 없으며, 이로 인한 손해를
						배상할 책임도 없습니다.<br />
						12. 회사는 회원에게 무료로 제공하는 서비스의 이용과 관련해서는
						어떠한 손해도 책임을 지지 않습니다.<br />
						13. 본 사이트와 연결되어 제3자에 의하여 유지되는 다른 인터넷
						사이트들의 내용들에 대하여 회사는 아무런 통제권한이 없습니다.
						따라서 다른 인터넷 사이트에 포함된 정보의 정확도와 신뢰성에 대하여
						회사는 아무런 법적 책임을 지지 않습니다.<br />
						14. 회사는 회원이 본 약관 규정을 위배하여 발생한 손실에 대하여는
						책임을 지지 않습니다.<br />
						15. 회원이 공개를 허락한 자료에 대하여 발생된 문제에 대하여서는
						책임이 면제됩니다.<br />
						16. 회사는 회원이 게재하거나 타인과 통신하는 정보, 자료, 사실에
						대한 신뢰도, 정확성 및 그 내용에 대하여 알지 못하며, 그로 인해
						사회적, 윤리적, 법적으로 문제가 발생 시 그 책임을 지지
						않습니다.<br />
						17. 회원이 회사가 제공하는 제휴서비스 이용시 서비스이용의 필요에
						의해 제휴사에 제공하는 개인정보에 대해서는 본인의 동의하에 제공된
						것으로 간주하고 제공한 개인정보로 인해 발생한 문제에 대해서 회사는
						책임을 지지 않습니다.<br />
						18. 회사는 당사가 제공한 서비스가 아닌 가입자 또는 기타 제휴사가
						제공하는 서비스의 내용상의 정확성, 완전성 및 질에 대하여 보장하지
						않습니다. 따라서 회사는 회원이 위 내용을 이용함으로 인하여 입게 된
						모든 종류의 손실이나 손해에 대하여 책임을 부담하지 아니합니다.<br />
						<br />
						<br />
						제13조(회원에 대한 통지 및 정보제공)<br />
						<br />
						1. 회원에 대한 통지 및 예고는 사이트에 게시하거나 서면, 전화,
						전자우편(e-mail)의 방법으로 할 수 있습니다<br />
						2. 회사는 회원이 서비스 이용 중 필요하다고 인정되는 다양한 문자,
						음성, 사진, 영상자료에 대해서 사이트게시, 전자우편, 전화,
						모바일서비스, 공지사항 등으로 회원에게 제공할 수 있습니다.<br />
						3. 회사는 회원들에게 보다 좋은 서비스를 제공하거나 회사의 새로운
						상품을 제공하기 위해서 전자우편, 전화, SMS, 서면 등의 방법으로
						회원과 영업을 목적으로 한 상담 및 정보제공을 할 수 있습니다.<br />
						4. 회사는 서비스 개선 및 회원 대상의 서비스 소개 등의 목적으로
						회원의 동의 하에 추가적인 개인정보를 요구할 수 있습니다.<br />
						<br />
						<br />
						제14조 (광고게재 및 광고주와의 거래)<br />
						<br />
						1. 회사가 회원에게 서비스를 제공할 수 있는 서비스 투자기반의
						일부는 광고게재를 통한 수익으로부터 나옵니다. 회원은 서비스 이용시
						노출되는 광고게재 및 전송에 대해 동의합니다.<br />
						2. 회사는 서비스상에 게재되어 있거나 본 서비스를 통한 광고주의
						판촉활동에 회원이 참여하거나 교신 또는 거래를 함으로써 발생하는
						손실과 손해에 대해 책임을 지지 않습니다.<br />
						<br />
						<br />
						제15조 (약관의 해석)<br />
						<br />
						이 약관 및 서비스안내에서 정하지 아니한 사항과 이 약관 및
						서비스안내의 해석은 관계법령 및 상관습에 따릅니다.<br />
						<br />
						<br />
						제16조 (분쟁해결)<br />
						<br />
						1. 회사는 회원으로부터 제출되는 불만사항 및 의견은 우선적으로 그
						사항을 처리하도록 노력합니다. <br />
						2. 회원의 서비스 이용과 관련하여 당사자 간에 다툼이 발생한 경우
						당사자의 협의로 처리하되 신의성실의 원칙에 따라 원만히 해결함을
						원칙으로 합니다.<br />
						<br />
						<br />
						제17조 (관할법원 및 준거법)<br />
						<br />
						1. 서비스 이용과 관련하여 회사와 회원간에 발생한 분쟁에 관한
						소송은 당사 본점 소재지를 관할하는 법원을 관할법원으로 합니다.<br />
						2. 본 서비스 이용과 관련하여 회사와 회원간에 제기된 소송에는 한국
						법을 적용합니다.<br />
						<br />
						<br />
						부칙<br />
						1. 이 약관은 2023년 5월 16일부터 시행합니다<br />
						2. 2002년 07월 01일부터 시행되던 종전의 약관은 본 약관으로
						대체합니다.<br />
					</div>
					<input type="checkbox" name="join_agree1" value="Y" class="agree_chk" id="agree_chk1" required />
					<label for="agree_chk1" class="chk_label"><span>이용약관 동의 (필수)</span></label>
				</div>

				<div class="agree_second">
					<div>
						<div class="agree_text">
							&lt;개인정보 수집 및 이용동의 &gt;<br />
							<br />
							당사는 '개인정보보호법' 에 따라 귀하의 개인정보를 다음과 같이
							수집.이용하고자 합니다.<br />
							<br />
							개인정보의 수집.이용 목적<br />
							- 회원관리와 각종 서비스(온라인 컨텐츠, 프로필소개 등 결혼관련
							서비스) 이용<br />
							- 결혼관련 서비스 상담 및 이용 권유, 광고게재 및 각종 서비스
							안내, 이벤트 정보 안내, 설문 조사를 위한 정보 확보<br />
							<br />
							수집하는 개인정보의 항목<br />
							- 성명, 아이디, 비밀번호, 생년월일, 성별, 이메일, 휴대폰번호,
							거주지역, 결혼경력, 학력, 직업종류<br />
							<br />
							개인정보의 보유 및 이용기간<br />
							- 결혼중개업법 기준 5년 또는 개인정보 삭제 및 탈회를 요청할
							때까지 보유.이용합니다.<br />
							- 결혼회원 가입의 경우 개인정보에 관한 회사 내부 방침에 따라
							개인정보를 보유합니다.<br />
							- 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안
							보존합니다.<br />
							<br />
							가. 회사 내부 방침에 의한 정보보유 사유<br />
							<br />
							-개인정보 삭제 및 회원탈퇴 신청기록<br />
							　보존 이유 : 부정 이용 방지<br />
							　보존 기간 : 듀오넷 회원 탈퇴일부터 2년<br />
							　보존 항목 : 아이디, 이름, 출생년도, 이메일<br />
							<br />
							-채용에 관한 입사지원 기록<br />
							　보존 이유 : 상시 채용 및 내부 인재풀 관리<br />
							　보존기간 : 최종 업데이트일부터 180일<br />
							<br />
							나. 관련법령에 의한 정보보유 사유<br />
							<br />
							상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의
							규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한
							일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는
							정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와
							같습니다.<br />
							<br />
							- 계약 또는 청약철회 등에 관한 기록<br />
							　보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률<br />
							　보존 기간 : 5년<br />
							<br />
							- 대금결제 및 재화 등의 공급에 관한 기록<br />
							　보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률<br />
							　보존 기간 : 5년<br />
							<br />
							- 전자금융 거래에 관한 기록<br />
							　보존 이유 : 전자금융거래법<br />
							　보존 기간 : 5년<br />
							<br />
							- 소비자의 불만 또는 분쟁처리에 관한 기록<br />
							　보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률<br />
							　보존 기간 : 3년<br />
							<br />
							- 본인 확인에 관한 기록<br />
							　보존 이유 : 정보통신 이용촉진 및 정보보호 등에 관한 법률<br />
							　보존 기간 : 6개월<br />
							<br />
							- 웹사이트 방문기록<br />
							　보존 이유 : 통신비밀보호법<br />
							　보존 기간 : 3개월<br />
							<br />
							개인정보의 수집 및 이용에 대한 동의 거부 관련<br />
							- 당사는 서비스 제공에 필요한 최소한의 정보만을 수집·이용합니다.
							<br />
							- 이용자는 개인정보의 수집 및 이용 동의에 거부하실 수 있으며,
							다만 이 경우 해당 서비스 이용 및 가입상담이 제한될 수
							있습니다.<br />
							<br />
							<br />
						</div>
						<input type="checkbox" name="join_agree2" value="Y" class="agree_chk" id="agree_chk2"
							required />
						<label for="agree_chk2" class="chk_label"><span>개인정보 수집 및 이용 동의 (필수)</span></label>
					</div>

					<div>
						<div class="agree_text">
							&lt;개인정보의 제공에 관한 사항&gt;<br />
							<br />
							[소비자 권익 보호에 관한 사항]<br />
							<br />
							최소한의 정보처리 및 동의거부에 대한 안내<br />
							정보 동의시 가입상담 및 고객관리 등을 위해 최소한의 정보만
							수집·이용하게 되며, 본 동의를 거부하시는 경우 해당 서비스의 이용
							및 가입상담이 제한될 수 있습니다.<br />
							<br />
							개인정보 수집·이용 동의 철회<br />
							개인정보 수집ㆍ이용에 동의한 이후에도 전화[대표번호], 서면, 메일
							등을 통해 고객정보 관리 등에 대한 개인정보 처리 중지를 요청할 수
							있습니다.<br />
							<br />
							상품권유 중지청구(Do-Not Call) <br />
							개인정보 제공 및 이용에 동의한 이후에도 전화[대표번호], 서면,
							메일 등을 통해 마케팅활동에 대한 중지를 요청할 수 있습니다.<br />
							<br />
							제공 사실 통보 요구, 열람 및 정정·삭제 청구 <br />
							고객은 당사가 개인정보를 타인에게 제공한 사실이 있는 경우 그
							사실을 조회해 줄 것을 요구할 수 있습니다. 또한 정보 열람이나
							정정ㆍ삭제를 요구할 수 있습니다. 고객의 권리와 그 행사방법 등
							자세한 사항은 당사 홈페이지를 참조하여 주시기 바랍니다. <br />
							<br />
							문의사항 및 동의 철회, 조회 요구 방법<br />
							전화[1577-8333], 메일[duo@duonet.com]<br />
							<br />
							<br />
							[개인정보 제공에 관한 사항]<br />
							<br />
							1. 개인정보를 제공받는 자 : 듀오 커플매니저 및 이벤트/마케팅
							담담<br />
							<br />
							2. 개인정보를 제공받는 자의 이용 목적<br />
							- 회원관리와 각종 서비스(온라인 컨텐츠, 프로필소개 등 결혼관련
							서비스) 이용<br />
							- 결혼관련 서비스 상담 및 이용 권유, 광고게재 및 각종 서비스
							안내, 이벤트 정보 안내, 설문 조사를 위한 정보 확보<br />
							<br />
							3. 제공하는 개인정보<br />
							- 성명, 출생년도(또는 생년월일), 성별, 연락처 및 휴대전화번호,
							결혼경력, 이메일, 학력(또는 최종출신학교), 주거주지(또는 주소),
							직업종류(또는 직장명)<br />
							<br />
							4. 제공받는 자의 개인정보 보유 및 이용기간<br />
							- 결혼중개업법 기준 5년 또는 개인정보 삭제 및 탈회를 요청할
							때까지 보유.이용합니다.<br />
							- 결혼회원 가입의 경우 개인정보에 관한 회사 내부 방침에 따라
							개인정보를 보유합니다.<br />
							- 단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안
							보존합니다.<br />
							<br />
							가. 회사 내부 방침에 의한 정보보유 사유<br />
							<br />
							-개인정보 삭제 및 회원탈퇴 신청기록<br />
							　보존 이유 : 부정 이용 방지<br />
							　보존 기간 : 듀오넷 회원 탈퇴일부터 2년<br />
							　보존 항목 : 아이디, 이름, 출생년도, 이메일<br />
							<br />
							-채용에 관한 입사지원 기록<br />
							　보존 이유 : 상시 채용 및 내부 인재풀 관리<br />
							　보존 기간 : 최종 업데이트일부터 180일<br />
							<br />
							나. 관련법령에 의한 정보보유 사유<br />
							<br />
							상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의
							규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한
							일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는
							정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와
							같습니다.<br />
							<br />
							- 계약 또는 청약철회 등에 관한 기록<br />
							　보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률<br />
							　보존 기간 : 5년<br />
							<br />
							- 대금결제 및 재화 등의 공급에 관한 기록<br />
							　보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률<br />
							　보존 기간 : 5년<br />
							<br />
							- 전자금융 거래에 관한 기록<br />
							　보존 이유 : 전자금융거래법<br />
							　보존 기간 : 5년<br />
							<br />
							- 소비자의 불만 또는 분쟁처리에 관한 기록<br />
							　보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률<br />
							　보존 기간 : 3년<br />
							<br />
							- 본인 확인에 관한 기록<br />
							　보존 이유 : 정보통신 이용촉진 및 정보보호 등에 관한 법률<br />
							　보존 기간 : 6개월<br />
							<br />
							- 웹사이트 방문기록<br />
							　보존 이유 : 통신비밀보호법<br />
							　보존 기간 : 3개월<br />
							<br />
							5. 서비스 안내방법 : SMS, Email, 전화 등<br />
						</div>
						<input type="checkbox" name="join_agree3" value="Y" class="agree_chk" id="agree_chk3" />
						<label for="agree_chk3" class="chk_label">
							<span>
								마케팅 활용 동의 (선택)<br />
								<span>서비스안내 수신동의 내용 포함</span>
							</span>
						</label>
					</div>
				</div>

				<button type="submit" id="submit-singUp">가입하기</button>
			</form>
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
	<script src="../script/header.js"></script>
	<script src="../script/create_account.js"></script>
	<script src="../script/loginSession2.js"></script>
	<script src="https://code.iconify.design/iconify-icon/1.0.7/iconify-icon.min.js"></script>
</body>

</html>