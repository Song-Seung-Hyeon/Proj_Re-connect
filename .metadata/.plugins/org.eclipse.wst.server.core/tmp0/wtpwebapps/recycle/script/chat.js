

// 기본세션
// ===========================================================================================
var socket = new WebSocket("ws://192.168.0.56:8080/ChatHandler");

socket.onopen = function(event) {
    console.log("서버에 연결되었습니다.");
};

socket.onmessage = function(event) {
    var receivedMessage = event.data;
    console.log("받은 메시지: " + receivedMessage);

    var chatBox = document.getElementById("chatBox");

    // 좌우 정렬을 위한 스타일 클래스 지정
    var className = "message left";
    if (receivedMessage.includes("본인의 ID")) {
        className = "message right";
    }

    // 받은 메시지를 화면에 표시
    var messageElement = document.createElement("div");
    messageElement.className = className;
    messageElement.innerHTML = receivedMessage;
    chatBox.appendChild(messageElement);
};

function sendMessage() {
    var message = document.getElementById("messageInput").value;
    socket.send(message);
    document.getElementById("messageInput").value = "";
}