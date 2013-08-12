function checkLogin()
{
	var idCtrl = document.getElementById('inputID');
	var id = idCtrl.value;
	var pwCtrl = document.getElementById('inputPW');
	var pw = pwCtrl.value; 

	if(id == "" || pw ==""){
		alert("Please Check your ID or Password");
		return;
	}
}

function join()
{
	window.open("../member/join.jsp",'_self');
}

function checkId() {
	var sid = document.joinform.id.value; // 아이디값 가져오기
	if (sid == "") {
		alert("입력된 아이디가 없습니다."); // 없는 경우 메시지출력
	} else {
		window.open("../authentication/checkid.jsp?id=" + sid, "", "width=400 height=150");
	}
}

function checkIdClose(id) {
	opener.joinform.id.value = id; // 열려있는문서중(opener) writeForm의 이름을 가진 문서에 아이디값 전달
	window.close(); // checkId.jsp 윈도우 닫기
}