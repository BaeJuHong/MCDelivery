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
<h2> 회원 가입 </h2>
<form name=joinform method=post action="../member/processmember.jsp">
<!-- menu : 등록, 수정 또는 삭제 구분을 위한 매개변수로 이용 -->
<input type=hidden name="join" value="insert">
<!-- 수정, 삭제를 위한 parameter 전송 -->

<table>
	<tr>
		<td align="left">이름</td>
		<td><input type="text" name="name" size="30"></td>
		<td></td>
	</tr>
	<tr>
		<td align="left">이메일(아이디)</td>
		<td><input type="text" name="id" size="30"></td>
		<td><input type="button" value="중복체크" onClick="javascript:checkId()"></td>
	</tr>
	<tr>
		<td align="left">패스워드</td>
		<td><input type="password" name="password" size="30"></td>
		<td></td>
	</tr>
	<tr>
		<td align="left">패스워드(확인)</td>
		<td><input type="password" name="repassword" size="30"></td>
		<td></td>
	</tr>
	<tr>
		<td align="left">주소</td>
		<td><input type="text" name="address" size="30"></td>
		<td></td>
	</tr>
	<tr>
		<td align="left">휴대폰번호</td>
		<td><input type="text" name="phone" size="30"></td>
		<td></td>
	</tr>
	<tr>
		<td align="left">성별</td>
		<td><input type="text" name="gender" size="30"></td>
		<td></td>
	</tr>
	<tr>
		<td colspan="3" align="center">
			<input type="button" value="회원가입" onClick="insertcheck()">
			<input type="reset" value="다시입력">
			<a href=""><input type="button" value="취소"></a>			
		</td>
</table>
</form>
</body>
</html>