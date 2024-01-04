document.addEventListener("DOMContentLoaded", function () {
  buildCalendar();

  document
    .getElementById("btnPrevCalendar")
    .addEventListener("click", function (event) {
      prevCalendar();
    });

  document
    .getElementById("nextNextCalendar")
    .addEventListener("click", function (event) {
      nextCalendar();
    });
  document.querySelector(".scriptCalendar tbody").addEventListener("click", function (event) {
    const clickedDate = new Date(document.getElementById("calYear").textContent, document.getElementById("calMonth").textContent - 1, event.target.textContent);
    const currentDate = new Date();
    if (event.target.tagName === "TD" && clickedDate > currentDate && event.target.style.backgroundColor !== "rgba(168, 168, 168, 0.9)") {
      // 클릭한 날짜를 YYYY-MM-DD 형식으로 가져와 input에 설정
      const selectedDate = document.getElementById("calYear").textContent + '-' +
        document.getElementById("calMonth").textContent + '-' +
        event.target.textContent.padStart(2, '0');
      document.getElementById("consulting").value = selectedDate;
    }
  });

});

var toDay = new Date(); // @param 전역 변수, 오늘 날짜 / 내 컴퓨터 로컬을 기준으로 toDay에 Date 객체를 넣어줌
var nowDate = new Date(); // @param 전역 변수, 실제 오늘날짜 고정값

/**
 * @brief   이전달 버튼 클릭시
 */
function prevCalendar() {
  this.toDay = new Date(
    toDay.getFullYear(),
    toDay.getMonth() - 1,
    toDay.getDate()
  );
  buildCalendar(); // @param 전월 캘린더 출력 요청
}

/**
 * @brief   다음달 버튼 클릭시
 */
function nextCalendar() {
  this.toDay = new Date(
    toDay.getFullYear(),
    toDay.getMonth() + 1,
    toDay.getDate()
  );
  buildCalendar(); // @param 명월 캘린더 출력 요청
}

/**
 * @brief   캘린더 오픈
 * @details 날짜 값을 받아 캘린더 폼을 생성하고, 날짜값을 채워넣는다.
 */
function buildCalendar() {
  let doMonth = new Date(toDay.getFullYear(), toDay.getMonth(), 1);
  let lastDate = new Date(toDay.getFullYear(), toDay.getMonth() + 1, 0);

  let tbCalendar = document.querySelector(".scriptCalendar > tbody");

  document.getElementById("calYear").innerText = toDay.getFullYear(); // @param YYYY월
  document.getElementById("calMonth").innerText = autoLeftPad(
    toDay.getMonth() + 1,
    2
  ); // @param MM월

  // @details 이전 캘린더의 출력결과가 남아있다면, 이전 캘린더를 삭제한다.
  while (tbCalendar.rows.length > 0) {
    tbCalendar.deleteRow(tbCalendar.rows.length - 1);
  }

  // @param 첫번째 개행
  let row = tbCalendar.insertRow();

  // @param 날짜가 표기될 열의 증가값
  let dom = 1;

  // @details 시작일의 요일값( doMonth.getDay() ) + 해당월의 전체일( lastDate.getDate())을  더해준 값에서
  //               7로 나눈값을 올림( Math.ceil() )하고 다시 시작일의 요일값( doMonth.getDay() )을 빼준다.
  let daysLength =
    Math.ceil((doMonth.getDay() + lastDate.getDate()) / 7) * 7 -
    doMonth.getDay();

  // @param 달력 출력
  // @details 시작값은 1일을 직접 지정하고 요일값( doMonth.getDay() )를 빼서 마이너스( - )로 for문을 시작한다.
  for (let day = 1 - doMonth.getDay(); daysLength >= day; day++) {
    let column = row.insertCell();

    // @param 평일( 전월일과 익월일의 데이터 제외 )
    if (Math.sign(day) == 1 && lastDate.getDate() >= day) {
      // @param 평일 날짜 데이터 삽입
      column.innerText = autoLeftPad(day, 2);

      // @param 일요일인 경우
      if (dom % 7 == 1) {
        column.style.color = "#E80C19";
      }

      // @param 토요일인 경우
      if (dom % 7 == 0) {
        column.style.color = "#4D4DFF";
        row = tbCalendar.insertRow(); // @param 토요일이 지나면 다시 가로 행을 한줄 추가한다.
      }
    }

    // @param 평일 전월일과 익월일의 데이터 날짜변경
    else {
      let exceptDay = new Date(doMonth.getFullYear(), doMonth.getMonth(), day);
      column.innerText = autoLeftPad(exceptDay.getDate(), 2);
      column.style.color = "#A9A9A9"; //현재달력에 전달 다음달 day음영처리
    }

    // @brief   전월, 명월 음영처리
    // @details 현재년과 선택 년도가 같은경우
    if (toDay.getFullYear() == nowDate.getFullYear()) {
      // @details 현재월과 선택월이 같은경우
      if (toDay.getMonth() == nowDate.getMonth()) {
        // @details 현재일보다 이전인 경우이면서 현재월에 포함되는 일인경우
        if (nowDate.getDate() > day && Math.sign(day) == 1) {
          column.style.backgroundColor = "#EEEEEE"; //현재월 이미 지나간 day
        }

        // @details 현재일보다 이후이면서 현재월에 포함되는 일인경우
        else if (nowDate.getDate() < day && lastDate.getDate() >= day) {
          column.style.backgroundColor = "#FFFFFF"; //현재일 이후 남은 날짜
          column.style.cursor = "pointer";
          column.onclick = function () {
            calendarChoiceDay(this);
          };
        }

        // @details 현재일인 경우
        else if (nowDate.getDate() == day) {
          column.style.backgroundColor = "#FEDD89";
          column.style.cursor = "pointer";
          column.onclick = function () {
            calendarChoiceDay(this);
          };
        }

        // @details 현재월보다 이전인경우
      } else if (toDay.getMonth() < nowDate.getMonth()) {
        if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
          column.style.backgroundColor = "#EEEEEE";
          column.style.color = "rgba(168, 168, 168, 0.9)";
        }
      }

      // @details 현재월보다 이후인경우
      else {
        if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
          column.style.backgroundColor = "#FFFFFF";
          column.style.cursor = "pointer";
          column.onclick = function () {
            calendarChoiceDay(this);
          };
        }
      }
    }

    // @details 선택한년도가 현재년도보다 작은경우
    else if (toDay.getFullYear() < nowDate.getFullYear()) {
      if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
        column.style.backgroundColor = "#E5E5E5";
      }
    }

    // @details 선택한년도가 현재년도보다 큰경우
    else {
      if (Math.sign(day) == 1 && day <= lastDate.getDate()) {
        column.style.backgroundColor = "#FFFFFF";
        column.style.cursor = "pointer";
        column.onclick = function () {
          calendarChoiceDay(this);
        };
      }
    }
    dom++;
  }
}

/**
 * @brief   날짜 선택
 * @details 사용자가 선택한 날짜에 체크표시를 남긴다.
 */
function calendarChoiceDay(column) {
  // @param 기존 선택일이 존재하는 경우 기존 선택일의 표시형식을 초기화 한다.
  if (document.getElementsByClassName("choiceDay")[0]) {
    // @see 금일인 경우
    if (
      document.getElementById("calMonth").innerText ==
      autoLeftPad(nowDate.getMonth() + 1, 2) &&
      document.getElementsByClassName("choiceDay")[0].innerText ==
      autoLeftPad(toDay.getDate(), 2)
    ) {
      document.getElementsByClassName("choiceDay")[0].style.backgroundColor =
        "#FEDD89";
    }

    // @see 금일이 아닌 경우
    else {
      document.getElementsByClassName("choiceDay")[0].style.backgroundColor =
        "#FFFFFF";
    }
    document
      .getElementsByClassName("choiceDay")[0]
      .classList.remove("choiceDay");
  }

  // @param 선택일 체크 표시
  column.style.backgroundColor = "#92D7D6";

  // @param 선택일 클래스명 변경
  column.classList.add("choiceDay");
}

/**
 * @brief   숫자 두자릿수( 00 ) 변경
 * @details 자릿수가 한자리인 ( 1, 2, 3등 )의 값을 10, 11, 12등과 같은 두자리수 형식으로 맞추기위해 0을 붙인다.
 * @param   num     앞에 0을 붙일 숫자 값
 * @param   digit   글자의 자릿수를 지정 ( 2자릿수인 경우 00, 3자릿수인 경우 000 … )
 */
function autoLeftPad(num, digit) {
  if (String(num).length < digit) {
    num = new Array(digit - String(num).length + 1).join("0") + num;
  }
  return num;
}
// 캘린더부분

// 이메일입력필드
function checkEmailAddy() {
  const emailSelect = document.getElementById("email-select");
  const customEmailField = document.getElementById("textEmail");

  if (emailSelect.value === "1") {
    // 직접 입력을 선택한 경우
    customEmailField.readOnly = false; // 입력 필드 편집 가능으로 설정
    customEmailField.value = ""; // 입력 필드 내용 초기화
    customEmailField.focus(); // 입력 필드에 포커스
  } else {
    // 이메일 선택한 경우
    customEmailField.readOnly = true; // 입력 필드 읽기 전용으로 설정
    customEmailField.value = emailSelect.value; // 선택한 이메일로 값 설정
  }
}
// 이메일입력필드


const autoHyphen_estimate = (target) => {
  target.value = target.value
    .replace(/[^0-9]/g, '')
    .replace(/^(\d{0,4})(\d{0,4})$/g, "$1-$2").replace(/(\-{1,2})$/g, "");
}