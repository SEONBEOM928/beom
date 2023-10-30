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
</head>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<img src="${root }/image/title1.png" width="100%" height="80px;">
<a href="/${root }"><img src="${root }/image/musinsa.png" width="150px;" style="margin-left: 20px; margin-top: 20px"></a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<c:if test="${sessionScope.loginok==null }">
<button type="button" class="btn btn-outline-success" onclick="location.href='${root}/login/main'">Login</button>
</c:if>

<c:if test="${sessionScope.loginok!=null }">
<b>${sessionScope.myid }님이 로그인중입니다</b>
<button type="button" class="btn btn-outline-danger" onclick="location.href='${root}/login/logoutprocess'">Logout</button>
</c:if>


</body>
</html>