<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Layout Page</title>
</head>
<%
	//중간부분에 표시할 페이지를 파라미터로부터 넘겨받는 변수 선언
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<body>
	<table width="100%" height="100%" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td>
				<!-- 화면 상단 부분에 사용될 페이지(고정) -->
				<%@ include file="top.jsp"  %>
			</td>
		</tr>
		<tr>
			<td>
				<!-- 화면 중간 부분에 사용될 페이지(유동적으로 변환) -->
				<jsp:include page="<%= contentPage %>" flush="false" />
			</td>
		</tr>
		<tr>
			<td>
				<!-- 화면 하단 부분에 사용될 페이지(고정) --> 
				<%@ include file="bottom.jsp" %>
			</td>
		</tr>
	</table>
</body>
</html>