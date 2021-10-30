<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html;   charset=UTF-8">

<title>JSP 웹사이트</title>
</head>
<body>

	<%
				session.invalidate(); // 세션 뺏어감
	%>
			<script>
				location.href = 'main.jsp'; // 메인페이지로 돌아가자
			</script>

</body>
</html>