function autoResize() {
    const textarea = document.getElementById('textarea');
    textarea.style.height = '100px'; // 높이를 초기화하여 내용에 맞게 조절되도록 함
    textarea.style.height = textarea.scrollHeight + 'px'; // 스크롤 높이에 따라 설정
}

window.onload = function(){
	autoResize();
}