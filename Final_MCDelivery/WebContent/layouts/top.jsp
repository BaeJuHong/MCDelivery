<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="Member.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Top Page</title>
<script type="text/javascript" src="../assets/js/checkForm.js"></script>
<link rel="stylesheet" href="../assets/css/page.css" type="text/css">
<link rel="stylesheet" href="../assets/css/site.css" type="text/css">
</head>
<%
	request.setCharacterEncoding("EUC-KR");
	Object LoginID = session.getAttribute("LoginID");
	
%>

<body>
	<form method="post" name="top">
	
<%	
	MemberDao memberDao = MemberDao.getInstance();
	String inputID = "";
	String inputPW = "";
	
	//ID
	inputID = request.getParameter("inputID");
	if(inputID == null)
	{
		inputID = "";
	}
	
	inputPW = request.getParameter("inputPW");
	if(inputPW == null)
	{
		inputPW = "";
	}

	boolean isLogin = memberDao.setLogin(inputID, inputPW);
	
	if(!inputID.equals("") && !inputPW.equals(""))
	{
		if(isLogin){
			//set Session
			session.setAttribute("LoginID", inputID);
			response.sendRedirect("main.jsp");
			return;
		}
		else{
			response.sendRedirect("../authentication/login.jsp");
		}
	}
%>
		<table width="100%">
			<tr>
				<td width="34%" rowspan="2">
					<img src="http://hotsun0428.cafe24.com/MC_Delivery/Images/logo.jpg"	height="100px" />
				</td>
				<td width="64%" height="56" align="right">
					<%if(LoginID == null){ %>
						<label>ID</label><input type="text" id="inputID" name="inputID">
						<label>PW</label><input type="password" id="inputPW" name="inputPW">
						<input type="submit" value="�α���" onclick="javascript:checkLogin()">
					<%}else{ %>
						<label><%=(String)LoginID %>�� ȯ���մϴ�</label>
						<a href="../authentication/logout.jsp"><input type="button" value="�α׾ƿ�" onclick="javascript:Logut_Clicked()"></a>
					<% } %>
				</td>
			</tr>
			<tr>
				<td colspan="3" align="right">
					<% if(LoginID == null){ %>
						<a href="template.jsp?CONTENTPAGE=../member/join.jsp">ȸ������</a>
						<a href="template.jsp?CONTENTPAGE=../member/mypage.jsp">����������</a>
						<a href="template.jsp?CONTENTPAGE=../member/search.jsp">ID/PASSWORDã��</a>
					<% }else if(LoginID.toString().equals("admin@naver.com")){ %>
						<a href="template.jsp?CONTENTPAGE=../member/join.jsp">ȸ������</a>
						<a href="template.jsp?CONTENTPAGE=../member/mypage.jsp">����������</a>
						<a href="template.jsp?CONTENTPAGE=../member/search.jsp">ID/PASSWORDã��</a>
						<a href="template.jsp?CONTENTPAGE=../member/manage.jsp">Manage</a>
					<% } %>	
				</td>
			</tr>
		</table>
		<ul class="tabs">
			<li class="selected">
				<h3 class="tab-label">Menu</h3>
			</li>
			<li>
				<h3 class="tab-label">Order</h3>
			</li>
			<li>
				<h3 class="tab-label">Find Store</h3>
			</li>
			<li>
				<h3 class="tab-label">Notice</h3>
			</li>
		</ul>
	</form>
</body>
</html>