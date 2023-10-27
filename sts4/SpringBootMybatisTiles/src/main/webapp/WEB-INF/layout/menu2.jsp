<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Gaegu:wght@300&family=Nanum+Pen+Script&family=Sunflower:wght@300&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
<style type="text/css">
  ul.menu{
  	list-style: none;
  	margin-left: 400px;
  }
  
  ul.menu li{
  	width: 120px;
  	float: left;
  	height: 60px;
  	line-height: 60px;
  	text-align: center;
  	margin-right: 10px;
  	font-size: 20px;
  	font-weight: bold;
  	background-color: pink;
  	cursor: pointer;
  }
  
  ul.menu li a{
  	text-decoration: none;
  	color: white;
  }
</style>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"/>
  <ul class="menu">
  	<li>
  	  <a href="/${root }" style="color: yellow;">Home</a>
  	</li>
  	<li>
  	  <a href="${root }/ipgo/ipgoform" style="color: deepskyblue;" >상품등록</a>
  	</li>
  	<li>
  	  <a href="${root }/ipgo/list" style="color: darkorange;">상품목록</a>
  	</li>
  	<li>
  	  <a href="${root }/board/list">답변게시판</a>
  	</li>
  	<li>
  	  <a href="${root }/member/list">회원목록</a>
  	</li>
  	<li>
  	  <a href="${root }/member/myinfo">나의정보</a>
  	</li>
  	<li>
  	  <a href="${root }/login/main">로그인</a>
  	</li>
  	<li>
  	  <a href="${root }/load/map">오시는길</a>
  	</li>
  </ul>
</body>
</html>