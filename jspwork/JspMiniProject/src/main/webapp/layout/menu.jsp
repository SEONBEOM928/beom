<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/css2?family=Black+And+White+Picture&family=Cute+Font&family=Diphylleia&family=Dongle:wght@300&family=Hi+Melody&family=Nanum+Brush+Script&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">

<title>Insert title here</title>
<%
//절대경로잡기
String root = request.getContextPath();
%>

<link rel="stylesheet" type="text/css"
	href="<%=root%>/menu/css/font-awesome.css">
<link rel="stylesheet" type="text/css"
	href="<%=root%>/menu/css/menu.css">

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/function.js"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
</head>


<body>
	<%--
 <a href="<%=root%>/index.jsp">메인</a>&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="<%=root%>/">로그인</a>&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="<%=root%>/index.jsp?main=member/memberform.jsp">회원가입</a>&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="<%=root%>/index.jsp?main=guest/guestlist.jsp">방명록</a>&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="<%=root%>/">Q & A</a>&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="<%=root%>/">회원게시판</a>&nbsp;&nbsp;&nbsp;&nbsp;
 <a href="<%=root%>/">Shop</a>&nbsp;&nbsp;&nbsp;&nbsp; --%>

	<div id="wrap">
		<header>
			<div class="inner relative">
				<a class="logo" href="#"></a> 
				<a id="menu-toggle"
					class="button dark" href="#"><i class="icon-reorder"></i></a>
				<nav id="navigation">
					<ul id="main-menu">
						<li class="current-menu-item"><a href="<%=root%>">Home</a></li>
						<li class="parent">
						<a href="">about 회원</a>
							<ul class="sub-menu">
							<li><a href="<%=root%>/login.jsp?main=loginform.jsp">로그인</a></li>
							<li><a href="<%=root%>/index.jsp?main=member/memberform.jsp">회원가입</a></li>
							<li><a href="<%=root%>/index.jsp?main=member/memberlist.jsp">회원목록</a></li>
							</ul>
							
							<li><a href="<%=root%>/index.jsp?main=guest/guestlist.jsp">방명록</a></li>
							<li class="parent">
								<a href="#">고객의 소리</a>
								<ul class="sub-menu">
									<li><a href="<%=root%>/index.jsp?main=board/boardlist.jsp">회원게시판</a></li>	
									<li><a href="#">스마트게시판</a></li>	
								</ul>		
						     </li>
						<li><a href="#">찾아오시는길</a></li>
					</ul>
				</nav>
				<div class="clear"></div>
			</div>
		</header>
		</div>
</body>
</html>