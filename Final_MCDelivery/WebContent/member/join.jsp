<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Join Page</title>
<script type="text/javascript" src="../assets/js/checkForm.js"></script>
</head>
<body>
<jsp:useBean id="member" class="Member.Member">
<jsp:setProperty property="*" name="member"/>
</jsp:useBean>
<%
	request.setCharacterEncoding("EUC-KR");	
	
	String member_id= request.getParameter("id");

%>
<h2> ȸ�� ���� </h2>
<form name=joinform method=post action="../member/processmember.jsp">
<!-- menu : ���, ���� �Ǵ� ���� ������ ���� �Ű������� �̿� -->
<input type=hidden name="join" value="insert">
<!-- ����, ������ ���� parameter ���� -->

<table>
	<tr>
		<td align="left">�̸�</td>
		<td><input type="text" name="name" size="30"></td>
		<td></td>
	</tr>
	<tr>
		<td align="left">�̸���(���̵�)</td>
		<td><input type="text" name="id" size="30"></td>
		<td><input type="button" value="�ߺ�üũ" onClick="javascript:checkId()"></td>
	</tr>
	<tr>
		<td align="left">�н�����</td>
		<td><input type="password" name="password" size="30"></td>
		<td></td>
	</tr>
	<tr>
		<td align="left">�н�����(Ȯ��)</td>
		<td><input type="password" name="repassword" size="30"></td>
		<td></td>
	</tr>
	<tr>
		<td align="left">�ּ�</td>
		<td><input type="text" name="address" size="30"></td>
		<td></td>
	</tr>
	<tr>
		<td align="left">�޴�����ȣ</td>
		<td><input type="text" name="phone" size="30"></td>
		<td></td>
	</tr>
	<tr>
		<td align="left">����</td>
		<td><input type="text" name="gender" size="30"></td>
		<td></td>
	</tr>
	<tr>
		<td colspan="3" align="center">
			<input type="button" value="ȸ������" onClick="insertcheck()">
			<input type="reset" value="�ٽ��Է�">
			<a href=""><input type="button" value="���"></a>			
		</td>
</table>
</form>
</body>
</html>