<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import ="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,  initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP  게시판 웹사이트</title>
</head>
<body>
		<%
			String userID = null;  // 로그인이 된 사람이라면
			if(session.getAttribute("userID") != null) { // 그 아이디값을 받아서 관리해줌
				userID = (String) session.getAttribute("userID");
			}
		%>	
		<nav class="navbar navbar-default">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapse"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
						aria-expanded="false">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						</button>
						 <a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
						<li class="active"><a href="main.jsp">메인</a></li>
						<li><a href="bbs.jsp">게시판</a></li>
				</ul>
				<%
					if(userID == null) { //로그인이 되어 있지 않다면 아래 버튼,페이지가 보임
				%>	
					<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">접속하기<span class="caret"></span></a> 
							<ul class="dropdown-menu">
								<li><a href="login.jsp">로그인</a></li>
								<li><a href="join.jsp">회원가입</a></li>
							</ul>
					</li>
				</ul>
						
				<% 
					} else {
				%>
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-haspopup="true"
							aria-expanded="false">회원관리<span class="caret"></span></a> 
							<ul class="dropdown-menu">
								<li><a href="logoutAction.jsp">로그아웃</a></li>
							</ul>
					</li>
				</ul>
				
				<% 	
					}
				%>
			</div>
		</nav>
		
		<div class="container">
			<div class="jumbotron">
				<div class="container">
						<h1>라세명</h1>
						<p> 처음 시도하는 거라 어렵지만 차근차근 배워나가고 있습니다.</p>
						<a class="btn btn-primay btn-pull" href="a"  role="button">자세히 보기</a>
				</div>
			</div>
		</div>
		<div class="container"> 
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1" ></li>
						<li data-target="#myCarousel" data-slide-to="2" ></li>
					</ol>
					<ol class="carousel-inner">
						<div class="item active">
							<img src="images/1.jpg">
						</div>
						<div class="item">
							<img src="images/2.jpg">
						</div>
						<div class="item">
							<img src="images/3.jpg">
						</div>
						<a class="Left carousel-control" href="#myCarousel" data-slide="prev">
							<span class="glyphicon glyphicon-cheyron-left"></span>
						</a>
						
						<a class="right carousel-control" href="#myCarousel" data-slide="next">
							<span class="glyphicon glyphicon-cheyron-right"></span>
						</a>
						
					</ol>
			</div>
			</div>
		
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
</body>
</html>