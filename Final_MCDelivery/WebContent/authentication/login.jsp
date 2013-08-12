<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@page import="Member.MemberDao"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<script type="text/javascript" src="../assets/js/checkForm.js"></script>
<body>
<form action="login.jsp" method="post">
<jsp:useBean id="member" class="Member.Member" scope="page"></jsp:useBean>


<%
	request.setCharacterEncoding("EUC-KR");
	MemberDao memberDao = MemberDao.getInstance();
	String inputID = "";
	String inputPW = "";
	String errMsg = "";
	
	//ID
	inputID = request.getParameter("inputid");
	if(inputID == null)
	{
		inputID = "";
	}
	
	inputPW = request.getParameter("inputpw");
	if(inputPW == null)
	{
		inputPW = "";
	}

	boolean bLogin = false;
	boolean isLogin = memberDao.setLogin(inputID, inputPW);
	
	if(!inputID.equals("") && !inputPW.equals(""))
	{
		if(isLogin){
			bLogin  = true;
			//set Session
			session.setAttribute("LoginID", inputID);
			response.sendRedirect("../layouts/main.jsp");
			return;
		}
		else{
			errMsg = "Please Check your ID or Password";
		}
	}	
	
%>
<%if(bLogin == false){ %>
	<div align="center">
		<table cellpadding="10" align="center">
			<tr align="center" valign="middle">
				<td><h4>I D</h4></td>
				<td><input type="text" id="inputID" name="inputID" style="height: 2em;"	size="25" maxlength="25" value="<%= inputID %>"></td>
			</tr>

			<tr align="center" valign="middle">
				<td><h4>P W</h4>
				<td><input type="password" id="inputPW" name="inputPW" style="height: 2em;" size="25" maxlength="25" value="<%= inputPW %>"></td>
			</tr>

			<tr align="center" valign="middle">
				<td align="center" colspan="2">
					<input type="submit" value="Login" style="height: 3em; width: 9em;" onclick="javascript:checkLogin()"></input>
					<input type="button" value="Join" style="height: 3em; width: 9em;" onclick="javascript:join()"></input>
				</td>
			</tr>
			
			<tr align="center" valign="middle">
				<td align="center" colspan="2">
					<h3><b><font face="Verdana" color="teal"><%=errMsg%></font></b></h3>
				</td>
			</tr>
		</table>
	</div>
	<% } %>
</form>
</body>
</html>