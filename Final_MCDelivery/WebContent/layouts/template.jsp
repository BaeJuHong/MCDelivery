<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Layout Page</title>
</head>
<%
	//�߰��κп� ǥ���� �������� �Ķ���ͷκ��� �Ѱܹ޴� ���� ����
	String contentPage = request.getParameter("CONTENTPAGE");
%>
<body>
	<table width="100%" height="100%" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td>
				<!-- ȭ�� ��� �κп� ���� ������(����) -->
				<%@ include file="top.jsp"  %>
			</td>
		</tr>
		<tr>
			<td>
				<!-- ȭ�� �߰� �κп� ���� ������(���������� ��ȯ) -->
				<jsp:include page="<%= contentPage %>" flush="false" />
			</td>
		</tr>
		<tr>
			<td>
				<!-- ȭ�� �ϴ� �κп� ���� ������(����) --> 
				<%@ include file="bottom.jsp" %>
			</td>
		</tr>
	</table>
</body>
</html>