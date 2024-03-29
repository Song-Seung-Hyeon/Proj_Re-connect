fetch('jsp/session.jsp')
	.then(response => response.text())
	.then(data => {
		const loginStatusElement = document.getElementById('loginStatus');
		
		if (data.trim() === 'admin') {
			// 관리자 권한인 경우
			loginStatusElement.innerHTML = '<div><a href="jsp/logout.jsp">로그아웃</a></div>';
			loginStatusElement.innerHTML += '<div><a href="html/admin_manager_management.jsp">마이페이지</a></div>';
		} else if (data.trim() === 'manager') {
			// 매니저 권한인 경우
			loginStatusElement.innerHTML = '<div><a href="jsp/logout.jsp">로그아웃</a></div>';
			loginStatusElement.innerHTML += '<div><a href="html/account_manager.jsp">마이페이지</a></div>';
		} else if (data.trim() === 'user') {
			// 일반 사용자인 경우
			loginStatusElement.innerHTML = '<div><a href="jsp/logout.jsp">로그아웃</a></div>';
			loginStatusElement.innerHTML += '<div><a href="html/profil.jsp">마이페이지</a></div>';
		} else {
			// 세션 상태를 확인할 수 없는 경우 또는 오류 발생 시
			loginStatusElement.innerHTML = '<div><a href="html/login.jsp">로그인</a></div>';
			loginStatusElement.innerHTML += '<div><a href="html/create_account.jsp">회원가입</a></div>';
		}
	});
