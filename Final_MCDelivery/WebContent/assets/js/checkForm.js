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
	var sid = document.joinform.id.value; // ���̵� ��������
	if (sid == "") {
		alert("�Էµ� ���̵� �����ϴ�."); // ���� ��� �޽������
	} else {
		window.open("../authentication/checkid.jsp?id=" + sid, "", "width=400 height=150");
	}
}

function checkIdClose(id) {
	opener.joinform.id.value = id; // �����ִ¹�����(opener) writeForm�� �̸��� ���� ������ ���̵� ����
	window.close(); // checkId.jsp ������ �ݱ�
}