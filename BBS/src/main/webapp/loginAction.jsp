<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
 
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-Type" content="text/html;   charset=UTF-8">

<title>JSP 웹사이트</title>
</head>
<body>
 
 <%
 String userID = null;
 if(session.getAttribute("userID") != null) { //userID란 이름으로 세션이 존재하는 회원은
	 userID = (String) session.getAttribute("userID"); //userID에 해당 세션값을 저장해준다
 }
 if(userID != null) {  //userID가 null값이 아닌 경우는, 즉 로그인 상태인 사람은
	 PrintWriter script = response.getWriter();
	   script.println("<script>");
	   script.println("alert('이미 로그인이 되어 있습니다')");
	   script.println("location.href = 'main.jsp'"); // 메인페이지로 돌아가세요
	   script.println("</script>");  
 }
  UserDAO userDAO = new UserDAO();
  int result = userDAO.login(user.getUserID(), user.getUserPassword());
  if(result ==1){
   session.setAttribute("userID", user.getUserID());  // 로그인에 성공한 유저는 세션을 부여받는다
   PrintWriter script = response.getWriter();
   script.println("<script>");
   script.println("location.href = 'main.jsp'");
   script.println("</script>");  
  }
  if(result ==0){
   PrintWriter script = response.getWriter();
   script.println("<script>");
   script.println("alert('비밀번호가 틀립니다')");
   script.println("history.back()");
   script.println("</script>");  
  }
  if(result == -1){
   PrintWriter script = response.getWriter();
   script.println("<script>");
   script.println("alert('존재하지 않는 아이디 입니다.')");
   script.println("history.back()");
   script.println("</script>");  
  }
  
  if(result == -2){
   PrintWriter script = response.getWriter();
   script.println("<script>");
   script.println("alert('데이터 베이스 오류가 발생하였습니다. ')");
   script.println("history.back()");
   script.println("</script>");  
  }
  
 %>
 
 
</body>
</html>