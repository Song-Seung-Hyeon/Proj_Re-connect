function formatPhoneNumber() {
    let input = document.getElementById('user_number');
    let value = input.value.replace(/\D/g, ''); // 입력값에서 숫자가 아닌 문자는 제거

    // 입력값에 따라서 자동으로 대시를 추가하여 보여줌
    if (value.length > 3 && value.length <= 7) {
        input.value = value.slice(0, 3) + '-' + value.slice(3);
    } else if (value.length > 7) {
        input.value = value.slice(0, 3) + '-' + value.slice(3, 7) + '-' + value.slice(7);
    } else {
        input.value = value;
    }
}


function formatDateOfBirth() {
    let input = document.getElementById('user_birth');
    let value = input.value.replace(/\D/g, ''); // 입력값에서 숫자가 아닌 문자는 제거

    // 입력값이 최대 길이에 도달하면 날짜 형식을 적용
    if (value.length >= 8) {
        let year = value.slice(0, 4);
        let month = value.slice(4, 6);
        let day = value.slice(6, 8);

        // 월은 1부터 12까지, 일은 1부터 31까지의 값을 허용
        month = Math.min(parseInt(month), 12); // 최댓값은 12
        day = Math.min(parseInt(day), 31); // 최댓값은 31

        // MM-DD 형식으로 변경 (일 값이 두 자리 숫자로 표시되도록 수정)
        input.value = year + '-' + ('0' + month).slice(-2) + '-' + ('0' + day).slice(-2);
    } else {
        input.value = value; // 최대 길이가 아니면 입력값 그대로 유지
    }
}
